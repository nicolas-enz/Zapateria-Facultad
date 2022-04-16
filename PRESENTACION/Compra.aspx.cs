using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using NEGOCIO;

namespace PRESENTACION
{
    public partial class Compra : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblUsuario.Text = Session["usuario"].ToString();

                GestionBancos gestorBancos = new GestionBancos();
                GestionMetodoPago gestorMP = new GestionMetodoPago();
                ddlBancos.DataSource = gestorBancos.GetBancos();
                ddlBancos.DataValueField = "NombreBanco";
                ddlBancos.DataMember = "CodBanco";
                ddlBancos.DataBind();

                ddlMetodoPago.DataSource = gestorMP.GetTablaXBanco(1);
                ddlMetodoPago.DataValueField = "Descripcion";
                ddlMetodoPago.DataMember = "CodMetodo";
                ddlMetodoPago.DataBind();
            }
        }

        protected void ddlBancos_SelectedIndexChanged(object sender, EventArgs e)
        {
            GestionMetodoPago gestorMP = new GestionMetodoPago();
            DataTable dt = gestorMP.GetTablaXBanco(Convert.ToInt32(ddlMetodoPago.SelectedItem.Value) + 1);
            ddlMetodoPago.DataSource = gestorMP.GetTablaXBanco(Convert.ToInt32(ddlMetodoPago.SelectedItem.Value) + 1);
            ddlMetodoPago.DataValueField = "Descripcion";
            ddlMetodoPago.DataBind();
        }

        protected void btnConfirmarCompra_Click(object sender, EventArgs e)
        {
            GestionVenta gestorVenta = new GestionVenta();
            gestorVenta.EjecutarCompra((DataTable)Session["Carrito"], Session["usuario"].ToString(),ddlMetodoPago.SelectedIndex, ddlBancos.SelectedIndex);

            DataTable carro = (DataTable)Session["Carrito"];
            int cant = carro.Rows.Count;
            for(int i = cant-1; i >= 0; i--)
            {
                gestorVenta.EliminaCarrito(carro, i);
            }

            Response.Redirect("GraciasPorSuCompra.aspx");
        }
    }
}