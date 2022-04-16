using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using NEGOCIO;

namespace PRESENTACION
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConectar_Click(object sender, EventArgs e)
        {
            GestionUsuarios usu = new GestionUsuarios();
            if(usu.LogIn(txtUsuario.Text, txtClave.Text))
            {
                Session["usuario"] = txtUsuario.Text;
                if (usu.EsAdmin(txtUsuario.Text))
                {
                    Response.Redirect("Administrador/Principal.aspx");
                }
                else
                {
                    Response.Redirect("Catalogo.aspx");
                }
            }
            else
            {
                lblNoExiste.Text = "No existe el usuario";
            }

        }

        protected void linkRegistro_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registrarse.aspx");
        }
    }
}