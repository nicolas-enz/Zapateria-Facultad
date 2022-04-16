using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PRESENTACION
{
    public partial class AdministradorBuscarClientes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblUsuario.Text = Session["usuario"].ToString();
                CargarDropDown();
            }
        }

        private void CargarConEntero(DropDownList dd)
        {
            dd.Items.Add("Mayor a:");
            dd.Items.Add("Igual a:");
            dd.Items.Add("Menor a:");
        }

        private void CargarConLetras(DropDownList dd)
        {
            dd.Items.Add("Contiene:");
            dd.Items.Add("Comienza con:");
            dd.Items.Add("Termina con:");
        }

        protected void CargarDropDown()
        {
            CargarConLetras(ddNombreCliente);
            CargarConLetras(ddApellidoCliente);
            CargarConEntero(ddCodCliente);
            CargarConEntero(ddDNI);
        }

        private string ArmarSentencia(string valor, string simbolo, string sql, string propiedad)
        {
            string d1 = "", d2 = "";

            if (sql == "")
            {
                sql += " WHERE ";
            }
            else
            {
                sql += " AND ";
            }
            switch (simbolo)
            {
                case "Mayor a:":
                    simbolo = ">";
                    d1 = "";
                    d2 = "";
                    break;
                case "Menor a:":
                    simbolo = "<";
                    d1 = "";
                    d2 = "";
                    break;
                case "Igual a:":
                    simbolo = "=";
                    d1 = "";
                    d2 = "";
                    break;
                case "Contiene:":
                    simbolo = " LIKE ";
                    d1 = "'%";
                    d2 = "%'";
                    break;
                case "Comienza con:":
                    simbolo = " LIKE ";
                    d1 = "'";
                    d2 = "%'";
                    break;
                case "Termina con:":
                    simbolo = " LIKE ";
                    d1 = "'%";
                    d2 = "'";
                    break;
            }

            return sql + propiedad + simbolo + d1 + valor + d2;
        }

        private string ObtenerSql()
        {
            string where = "", sql = "SELECT * FROM Clientes";

            if (txtNombreCliente.Text != "" && ddNombreCliente.SelectedValue != "")
            {
                where = ArmarSentencia(txtNombreCliente.Text, ddNombreCliente.SelectedValue, where, "NombreCliente");
            }
            if (txtApellidoCliente.Text != "" && ddApellidoCliente.SelectedValue != "")
            {
                where = ArmarSentencia(txtApellidoCliente.Text, ddApellidoCliente.SelectedValue, where, "ApellidoCliente");
            }
            if (txtCodCliente.Text != "" && ddCodCliente.SelectedValue != "")
            {
                where = ArmarSentencia(txtCodCliente.Text, ddCodCliente.SelectedValue, where, "CodCliente");
            }
            if (txtDNI.Text != "" && ddDNI.SelectedValue != "")
            {
                where = ArmarSentencia(txtDNI.Text, ddDNI.SelectedValue, where, "DNICliente");
            }

            return sql + where;
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            SqlClientes.SelectCommand = ObtenerSql();

            SqlClientes.DataBind();
            grdClientes.DataBind();
        }
    }
}