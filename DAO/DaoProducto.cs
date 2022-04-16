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
    public class DaoProducto
    {
        public Producto GetProductoPorCodigoDeProducto(int codProd)
        {
            Producto prod = new Producto();

            return prod;
        }

        public DataTable GetTablaCatalogoXCategoria(int codCategoria)
        {
            AccesoDatos ad = new AccesoDatos();
            DataTable prod = ad.ObtenerTabla("ProductosXCategoria",
                "SELECT CodProducto, NombreProducto, PrecioUnitario, CantidadEnExistencia " +
                "FROM Productos WHERE CodCategoria = " + codCategoria.ToString()+ " ORDER BY CodProducto ASC");

            return prod;
        }

        public DataTable GetTablaCatalogo()
        {
            AccesoDatos ad = new AccesoDatos();
            DataTable prod = ad.ObtenerTabla("ProductosCatalogo",
                "SELECT CodProducto, NombreProducto, PrecioUnitario, CantidadEnExistencia " +
                "FROM Productos ORDER BY CodProducto ASC");

            return prod;
        }

        public DataTable GetTabla()
        {
            AccesoDatos ad = new AccesoDatos();
            DataTable prod = ad.ObtenerTabla("Productos", "SELECT * FROM Productos");

            return prod;
        }

        public DataTable GetProductoXCodigo(int codProd)
        {
            AccesoDatos ad = new AccesoDatos();
            DataTable tabla = ad.ObtenerTabla("Producto", "SELECT CodProducto, NombreProducto, PrecioUnitario, CantidadEnExistencia " +
                "FROM Productos WHERE CodProducto = " + codProd.ToString());

            return tabla;
        }

        public int getCodigoProducto()
        {
            int Codigo;

            AccesoDatos ad = new AccesoDatos();
            DataTable Productos = GetTabla();

            Codigo = Productos.Rows.Count + 1;

            return Codigo;

        }

        public void AgregarATabla(Producto prod)
        {
            AccesoDatos ad = new AccesoDatos();
            SqlConnection cn = ad.ObtenerConexion();

            string sql = "INSERT INTO Productos (CodProducto, CodProveedor, CodCategoria, NombreProducto, " +
                "PrecioUnitario, CantidadEnExistencia, Activo) ";
            sql += "SELECT " + prod.CodProducto.ToString() + ", '";
            sql += prod.CodProveedor + "', ";
            sql += prod.CodCategoria.ToString() + ", '";
            sql += prod.NombreProducto + "', ";
            sql += prod.PrecioUnitario.ToString() + ", ";
            sql += prod.CantidadEnExistencia.ToString() + ", ";
            if (prod.Activo)
            {
                sql += "1";
            }
            else
            {
                sql += "0";
            }

            SqlCommand cmd = new SqlCommand(sql, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
        }
    }
}
