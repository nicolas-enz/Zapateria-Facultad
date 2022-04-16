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
    public class DaoCliente
    {
        public void AgregarCliente(Cliente cli)
        {
            AccesoDatos ad = new AccesoDatos();
            SqlConnection cn = ad.ObtenerConexion();

            string sql = "INSERT INTO Clientes (CodCliente, NombreCliente, ApellidoCliente, DNICliente, NumeroTelefono)";
            sql += " SELECT " + cli.CodCliente.ToString() + ", '";
            sql += cli.NombreCliente + "', '";
            sql += cli.ApellidoCliente + "', ";
            sql += cli.DNICliente.ToString() + ", ";
            sql += cli.NumeroTelefono.ToString();

            SqlCommand cmd = new SqlCommand(sql, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
        }

        public int ObtenerProximoCodigo()
        {
            AccesoDatos ad = new AccesoDatos();
            int codCliente = ad.ObtenerTabla("Clientes", "SELECT * FROM Clientes").Rows.Count;
            return codCliente;
        }
    }
}
