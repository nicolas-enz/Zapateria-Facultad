using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAO;
using ENTIDADES;
using System.Data;

namespace NEGOCIO
{
    public class GestionProductos
    {
        public DataTable GetCatalogo()
        {
            DaoProducto daoProd = new DaoProducto();
            DataTable dt = daoProd.GetTablaCatalogo();

            return dt;
        }

        public DataTable GetCatalogoXCategoria(int CodCategoria)
        {
            DaoProducto daoProd = new DaoProducto();
            DataTable dt = daoProd.GetTablaCatalogoXCategoria(CodCategoria);

            return dt;
        }

        public string GetSelectCatalogo()
        {
            string sql = "SELECT CodProducto, NombreProducto, PrecioUnitario, CantidadEnExistencia " +
                "FROM Productos ORDER BY CodProducto ASC";
            return sql;
        }

        public string GetSelectCatalogoXCategoria(int codCategoria)
        {
            string sql = "SELECT CodProducto, NombreProducto, PrecioUnitario, CantidadEnExistencia " +
                "FROM Productos WHERE CodCategoria = " + codCategoria.ToString() + " ORDER BY CodProducto ASC";
            return sql;
        }

        public DataTable GetCarritoPorCodigo(int codProd)
        {
            DaoProducto dProd = new DaoProducto();
            DataTable tabla = dProd.GetProductoXCodigo(codProd);

            return tabla;
        }

        public void AgregarProducto(string codProv, string codCat, string NomProd,
            string precioUni, string cantEnExistencia, bool activo)
        {
            DaoProducto daoProd = new DaoProducto();

            Producto Prod = new Producto(daoProd.getCodigoProducto(), codProv, Convert.ToInt32(codCat),
             NomProd, Convert.ToSingle(precioUni), Convert.ToInt32(cantEnExistencia), activo);

            daoProd.AgregarATabla(Prod);

        }

        public DataTable AgregarACarrito(DataTable tabla, int codProducto)
        {
            DaoProducto dProd = new DaoProducto();
            DataRow dr = tabla.NewRow();
            DataTable t = dProd.GetProductoXCodigo(codProducto);
            dr[0] = Convert.ToInt32(t.Rows[0][0].ToString());
            dr[1] = t.Rows[0][1];
            dr[2] = Convert.ToDecimal(t.Rows[0][2]);
            dr[3] = Convert.ToInt32(t.Rows[0][3]);
            tabla.Rows.Add(dr);
            return tabla;
        }
    }
}
