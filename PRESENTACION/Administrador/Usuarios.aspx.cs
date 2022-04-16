using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using NEGOCIO;

namespace PRESENTACION
{
    public partial class AdministradorUsuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //lblUsuario.Text = Session["usuario"].ToString();
            }
        }

        protected void linkBuscar_Click(object sender, EventArgs e)
        {
            Response.Redirect("BuscarUsuario.aspx");
        }

        protected void linkVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("Principal.aspx");
        }

        protected void gViewUsuarios_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void gViewUsuarios_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {
            GestionUsuarios gestorUsuarios = new GestionUsuarios();
        }

    }
}