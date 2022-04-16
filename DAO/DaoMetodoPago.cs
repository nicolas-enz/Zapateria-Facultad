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
    public class DaoMetodoPago
    {
        public DataTable GetMPXBco(int codBco)
        {
            AccesoDatos ad = new AccesoDatos();
            DataTable tabla = ad.ObtenerTabla("MetodoPago", 
                "SELECT BancosXMetodos.CodBanco, BancosXMetodos.CodMetodo, MetodosPago.Descripcion FROM BancosXMetodos " +
                "INNER JOIN MetodosPago ON MetodosPago.CodMetodo = BancosXMetodos.CodMetodo " +
                "WHERE BancosXMetodos.CodBanco = " + codBco.ToString() + " AND BancosXMetodos.Activo = 1");
            return tabla;
        }

        public DataTable GetTabla()
        {
            AccesoDatos ad = new AccesoDatos();
            DataTable banc = ad.ObtenerTabla("Productos", "SELECT * FROM MetodosPago");

            return banc;
        }

        public int getCodigoMetodoPago()
        {
            int Codigo;

            AccesoDatos ad = new AccesoDatos();
            DataTable metodo = GetTabla();

            Codigo = metodo.Rows.Count + 1;

            return Codigo;
        }

        public void AgregarATabla(MetodoPago metodoPago)
        {
            AccesoDatos ad = new AccesoDatos();
            SqlConnection cn = ad.ObtenerConexion();

            string sql = "INSERT INTO MetodosPago (CodMetodo, Descripcion, CantCuotas) ";
            sql += "SELECT " + metodoPago.CodMetodo.ToString() + ", '";
            sql += metodoPago.Descripcion + "'";
            sql += metodoPago.CantCuotas.ToString();


            SqlCommand cmd = new SqlCommand(sql, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
        }
    }
}
