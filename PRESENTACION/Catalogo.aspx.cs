using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using NEGOCIO;

namespace PRESENTACION
{
    public partial class Catalogo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GestionProductos gestorProductos = new GestionProductos();
                SqlProductos.SelectCommand = gestorProductos.GetSelectCatalogo();
                SqlProductos.DataBind();
                //lblUsuario.Text = Session["usuario"].ToString();
            }
        }

        protected void linkCategoria_Click(object sender, EventArgs e)
        {
            GestionProductos gestorProductos = new GestionProductos();
            SqlProductos.SelectCommand = gestorProductos.GetSelectCatalogoXCategoria(DataList1.SelectedIndex);
            SqlProductos.DataBind();
            ListView1.DataBind();
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GestionProductos gestorProductos = new GestionProductos();
            SqlProductos.SelectCommand = gestorProductos.GetSelectCatalogoXCategoria(DataList1.SelectedIndex+1);
            SqlProductos.DataBind();
            ListView1.DataBind();
        }

        protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            ListViewItem item = ListView1.Items[ListView1.SelectedIndex];
            Label label = (Label)item.FindControl("CodProductoLabel");
            Session["CodProducto"] = label.Text;
            label = (Label)item.FindControl("NombreProductoLabel");
            Session["NomProducto"] = label.Text;
            label = (Label)item.FindControl("PrecioUnitarioLabel");
            Session["PrecioUnitario"] = label.Text;
            label = (Label)item.FindControl("CantidadEnExistenciaLabel");
            Session["CantidadEnExistencia"] = label.Text;
            Response.Redirect("Carrito.aspx");
        }

        protected void btnQuitarFiltros_Click(object sender, EventArgs e)
        {
            SqlProductos.SelectCommand = "SELECT * FROM Productos";
            ListView1.SelectedIndex = -1;
            SqlProductos.DataBind();
            ListView1.DataBind();
        }
    }
}