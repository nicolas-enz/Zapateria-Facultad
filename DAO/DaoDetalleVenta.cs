using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ENTIDADES;
using System.Data;
using System.Data.SqlClient;

namespace DAO
{
    public class DaoDetalleVenta
    {
        public void GrabarDetalleVenta(DataTable carrito, Venta ven)
        {
            AccesoDatos ad = new AccesoDatos();
            SqlConnection conexion = ad.ObtenerConexion();

            for (int i = 0; i < carrito.Rows.Count; i++)
            {
                string sql = "INSERT INTO DetalleVenta ";
                sql += "(CodVenta,CodProducto,Cantidad) SELECT ";
                sql += ven.CodVenta.ToString() + ", ";
                sql += carrito.Rows[i][0].ToString() + ", ";
                sql += "1";
                SqlCommand cmd = new SqlCommand(sql, conexion);
                cmd.ExecuteNonQuery();
            }

            conexion.Close();
        }

        public DataTable GetDetalleVentaPorCodigoVenta(int codVen)
        {
            AccesoDatos ad = new AccesoDatos();
            DataTable tabla = ad.ObtenerTabla("DetalleVentaXCodVenta", 
                "SELECT * FROM DetalleVenta WHERE CodVenta = " + codVen.ToString());

            return tabla;
        }

        public DataTable GetTablaDetalleVentas()
        {
            AccesoDatos ad = new AccesoDatos();
            DataTable tabla = ad.ObtenerTabla("DetalleVenta", "SELECT * FROM DetalleVenta");
            return tabla;
        }
    }
}
