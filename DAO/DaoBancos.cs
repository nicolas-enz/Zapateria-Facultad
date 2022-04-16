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
    public class DaoBancos
    {
        public DataTable GetTablaBancos()
        {
            AccesoDatos ad = new AccesoDatos();
            DataTable tabla = ad.ObtenerTabla("Bancos", "SELECT * FROM Bancos");

            return tabla;
        }

        public DataTable GetTabla()
        {
            AccesoDatos ad = new AccesoDatos();
            DataTable tabla = ad.ObtenerTabla("Bancos", "SELECT * FROM Bancos");

            return tabla;
        }

        public int getCodigoBanco()
        {
            int Codigo;

            AccesoDatos ad = new AccesoDatos();
            DataTable banco = GetTabla();

            Codigo = banco.Rows.Count + 1;

            return Codigo;

        }

        public void AgregarATabla(Banco banc)
        {
            AccesoDatos ad = new AccesoDatos();
            SqlConnection cn = ad.ObtenerConexion();

            string sql = "INSERT INTO Bancos (CodBanco, NombreBanco) ";
            sql += "SELECT " + banc.CodBanco.ToString() + ", ";
            sql += banc.NombreBanco;

            SqlCommand cmd = new SqlCommand(sql, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
        }
    }
}
