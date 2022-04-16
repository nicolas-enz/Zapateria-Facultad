using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PRESENTACION
{
    public partial class AdministradorCategorias : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblUsuario.Text = Session["usuario"].ToString();
            }
        }

        protected void linkNuevaCategoria_Click(object sender, EventArgs e)
        {
            Response.Redirect("NuevaCategoria.aspx");
        }

        protected void linkBuscar_Click(object sender, EventArgs e)
        {
            Response.Redirect("BuscarCategorias.aspx");
        }

        protected void linkVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("Principal.aspx");
        }
    }
}