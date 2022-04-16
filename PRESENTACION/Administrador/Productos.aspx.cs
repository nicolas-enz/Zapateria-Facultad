using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PRESENTACION
{
    public partial class AdministradorProductos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblUsuario.Text = Session["usuario"].ToString();
            }
        }

        protected void linkNuevoProd_Click(object sender, EventArgs e)
        {
            Response.Redirect("NuevoProducto.aspx");
        }

        protected void linkBuscar_Click(object sender, EventArgs e)
        {
            Response.Redirect("BuscarProducto.aspx");
        }

        protected void linkVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("Principal.aspx");
        }

    }
}