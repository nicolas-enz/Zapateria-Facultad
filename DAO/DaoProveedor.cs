using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using ENTIDADES;

namespace DAO
{
    public class DaoProveedor
    {
        public void AgregarATabla(Proveedor prov)
        {
            AccesoDatos ad = new AccesoDatos();
            SqlConnection cn = ad.ObtenerConexion();

            string sql = "INSERT INTO Proveedores (CodProveedor, NombreProveedor, CUIL, RazonSocial) ";
            sql += "SELECT '" + prov.CodProveedor + "', '";
            sql += prov.NombreProveedor + "', '";
            sql += prov.Cuil + "', '";
            sql += prov.RazonSocial + "'";

            SqlCommand cmd = new SqlCommand(sql, cn);
            cmd.ExecuteNonQuery();
            cn.Close();

        }
    }
}
