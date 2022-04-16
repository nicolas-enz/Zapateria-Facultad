using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PRESENTACION
{
    public partial class AdministradorMetodosPago : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblUsuario.Text = Session["usuario"].ToString();
            }
        }

        protected void linkNuevoMetodo_Click(object sender, EventArgs e)
        {
            Response.Redirect("NuevoMetodoPago.aspx");
        }

        protected void linkBuscar_Click(object sender, EventArgs e)
        {
            Response.Redirect("BuscarMetodoPago.aspx");
        }

        protected void linkVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("Principal.aspx");
        }
    }
}