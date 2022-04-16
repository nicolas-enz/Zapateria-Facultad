using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PRESENTACION
{
    public partial class AdministradorBuscarMetodoPago : System.Web.UI.Page
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
            CargarConLetras(ddDescripcion);
            CargarConEntero(ddCantCuotas);
            CargarConEntero(ddCodMetodo);
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
            string where = "", sql = "SELECT * FROM MetodosPago";

            if (txtDescripcion.Text != "" && ddDescripcion.SelectedValue != "")
            {
                where = ArmarSentencia(txtDescripcion.Text, ddDescripcion.SelectedValue, where, "Descripcion");
            }
            if (txtCantCuotas.Text != "" && ddCantCuotas.SelectedValue != "")
            {
                where = ArmarSentencia(txtCantCuotas.Text, ddCantCuotas.SelectedValue, where, "CantCuotas");
            }
            if (txtCodMetodo.Text != "" && ddCodMetodo.SelectedValue != "")
            {
                where = ArmarSentencia(txtCodMetodo.Text, ddCodMetodo.SelectedValue, where, "CodMetodo");
            }

            return sql + where;
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            SqlMetodoPago.SelectCommand = ObtenerSql();

            SqlMetodoPago.DataBind();
            grdMetodosPagos.DataBind();
        }
    }
}