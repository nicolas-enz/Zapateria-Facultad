using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PRESENTACION
{
    public partial class AdministradorBuscarVenta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblUsuario.Text = Session["usuario"].ToString();
                CargarDropDown();
            }
        }

        private void CargarConEntero(DropDownList ddCodVenta)
        {
            ddCodVenta.Items.Add("Mayor a:");
            ddCodVenta.Items.Add("Igual a:");
            ddCodVenta.Items.Add("Menor a:");
        }

        protected void CargarDropDown()
        {
            CargarConEntero(ddCodVenta);
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
            }

            return sql + propiedad + simbolo + d1 + valor + d2;
        }

        private string ObtenerSql()
        {
            string where = "", sql = "SELECT * FROM DetalleVenta";

            if (txtCodVenta.Text != "" && ddCodVenta.SelectedValue != "")
            {
                where = ArmarSentencia(txtCodVenta.Text, ddCodVenta.SelectedValue, where, "CodVenta");
            }


            return sql + where;
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            SqlVentas.SelectCommand = ObtenerSql();

            SqlVentas.DataBind();
            grdVentas.DataBind();
        }
    }
}