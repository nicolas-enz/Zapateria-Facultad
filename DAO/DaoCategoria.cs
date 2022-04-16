using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
using ENTIDADES;

namespace DAO
{
    public class DaoCategoria
    {
        public void AgregarATabla(Categoria cat)
        {
            AccesoDatos ad = new AccesoDatos();
            SqlConnection cn = ad.ObtenerConexion();

            string sql = "INSERT INTO Categorias (CodCategoria, NombreCategoria) ";
            sql += "SELECT " + cat.CodCategoria.ToString() + ", '";
            sql += cat.NombreCategoria + "'";

            SqlCommand cmd = new SqlCommand(sql, cn);
            cmd.ExecuteNonQuery();
            cn.Close();

        }

        public int CodigoUltimaCategoria()
        {
            AccesoDatos ad = new AccesoDatos();
            DataTable dt = ad.ObtenerTabla("Categorias", "SELECT * FROM Categorias");

            return dt.Rows.Count;
        }
    }
}
