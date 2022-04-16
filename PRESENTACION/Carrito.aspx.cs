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
    public partial class Carrito : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GestionProductos gestorProductos = new GestionProductos();
                lblUsuario.Text = Session["usuario"].ToString();
                if(Session["Carrito"] == null)
                {
                    DataTable tabla = gestorProductos.GetCarritoPorCodigo(Convert.ToInt32(Session["CodProducto"]));
                    grdviewCarrito.DataSource = tabla;
                    grdviewCarrito.DataBind();
                    Session["Carrito"] = tabla;
                }
                else
                {
                    DataTable tabla = (DataTable)Session["Carrito"];
                    gestorProductos.AgregarACarrito(tabla, Convert.ToInt32(Session["CodProducto"]));
                    grdviewCarrito.DataSource = tabla;
                    grdviewCarrito.DataBind();
                    Session["Carrito"] = tabla;
                }
            }
        }

        protected void btnComprar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Compra.aspx");
        }

        protected void linkSeguirComprando_Click(object sender, EventArgs e)
        {
            Response.Redirect("Catalogo.aspx");
        }

        protected void grdviewCarrito_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            DataTable tabla = (DataTable)Session["Carrito"];
            tabla.Rows.RemoveAt(e.RowIndex);
            grdviewCarrito.DataSource = tabla;
            grdviewCarrito.DataBind();
            Session["Carrito"] = tabla;
        }
    }
}