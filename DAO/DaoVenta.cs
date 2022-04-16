using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using ENTIDADES;

namespace DAO
{
    public class DaoVenta
    {
        public string ObtenerCodVenta()
        {
            string cod;
            AccesoDatos ad = new AccesoDatos();
            DataTable dt = ad.ObtenerTabla("Ventas", "SELECT * FROM Ventas");
            cod = (dt.Rows.Count + 1).ToString();
            return cod;
        }

        public void GrabarVenta(Venta v)
        {
            AccesoDatos ad = new AccesoDatos();
            SqlConnection cn = ad.ObtenerConexion();

            string sql = "INSERT INTO Ventas (CodVenta, CodCliente, MetodoPago, CodBanco, FechaVenta)";
            sql += " SELECT " + ObtenerCodVenta() + ", ";
            sql += v.CodCliente.ToString() + ", ";
            sql += v.MetodoPago.ToString() + ", ";
            sql += v.CodBanco.ToString() + ", ";
            sql += " GETDATE()";

            SqlCommand cmd = new SqlCommand(sql, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
        }
    }
}
