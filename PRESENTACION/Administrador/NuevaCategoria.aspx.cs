using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using NEGOCIO;

namespace PRESENTACION
{
    public partial class AdministradorNuevaCategoria : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblUsuario.Text = Session["usuario"].ToString();
            }
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            GestionCategorias gestorCategorias = new GestionCategorias();

            gestorCategorias.AgregarCategoria(txtDescripcion.Text);

            Response.Redirect("Categorias.aspx");
        }
    }
}