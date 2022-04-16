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
    public class DaoUsuarios
    {
        public void AgregarUsuario(Usuario usu)
        {
            AccesoDatos ad = new AccesoDatos();
            SqlConnection cn = ad.ObtenerConexion();

            string sql = "INSERT INTO Usuarios (Email, Clave, CodCliente, TipoUsuario)";
            sql += " SELECT '" + usu.Email + "', '";
            sql += usu.Clave + "', ";
            sql += usu.CodCliente.ToString() + ", ";
            sql += 0.ToString();

            SqlCommand cmd = new SqlCommand(sql, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
        }

        public Usuario GetUsuario(string email)
        {
            AccesoDatos ad = new AccesoDatos();
            Usuario usu = new Usuario();
            DataTable dt = ad.ObtenerTabla("Usuario", "SELECT * FROM Usuarios WHERE Email = '" + email + "'");

            try
            {
                usu.Email = dt.Rows[0][0].ToString().Trim();
                usu.Clave = dt.Rows[0][1].ToString().Trim();
                usu.CodCliente = Convert.ToInt32(dt.Rows[0][2].ToString());
                usu.TipoUsuario = Convert.ToBoolean(dt.Rows[0][3].ToString());
                return usu;
            }
            catch
            {
                usu.Email = "1";
                usu.Clave = "0";
                usu.CodCliente = 1;
                usu.TipoUsuario = true;
                return usu;
            }
        }
        
        public int GetCodCliente(string email)
        {
            int CodCliente = 0;

            AccesoDatos ad = new AccesoDatos();
            DataTable dt = ad.ObtenerTabla("Usuario", "SELECT * FROM Usuarios WHERE Email = '" + email + "'");
            try
            {
                CodCliente = Convert.ToInt32(dt.Rows[0][2].ToString());
                return CodCliente;
            }
            catch
            {
                CodCliente = -1;
                return CodCliente;
            }
            
        }

        public DataTable GetTablaUsuarios()
        {
            AccesoDatos ad = new AccesoDatos();
            DataTable tabla = ad.ObtenerTabla("Usuarios", "SELECT * FROM Usuarios");
            return tabla;
        }
    }
}
