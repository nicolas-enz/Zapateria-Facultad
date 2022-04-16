using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using NEGOCIO;

namespace PRESENTACION
{
    public partial class Registrarse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistrarse_Click(object sender, EventArgs e)
        {
            GestionUsuarios gestorUsuarios = new GestionUsuarios();
            GestionClientes gestorClientes = new GestionClientes();
            gestorClientes.GrabarCliente(txtNombre.Text, txtApellido.Text, Convert.ToInt32(txtDNI.Text), Convert.ToInt32(txtTelefono.Text));
            gestorUsuarios.Registrarse(txtEmail.Text, txtClave.Text);
            Response.Redirect("Login.aspx");
        }
    }
}