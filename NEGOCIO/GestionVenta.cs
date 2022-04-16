using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using ENTIDADES;
using DAO;

namespace NEGOCIO
{
    public class GestionVenta
    {
        public static DataTable CrearCarrito()
        {
            DataTable dt = new DataTable();
            DataColumn dc = new DataColumn("CodProd", System.Type.GetType("System.Int32"));
            dt.Columns.Add(dc);
            dc = new DataColumn("NomProd", System.Type.GetType("System.String"));
            dt.Columns.Add(dc);
            dc = new DataColumn("PU", System.Type.GetType("System.Float"));
            dt.Columns.Add(dc);
            dc = new DataColumn("Cant", System.Type.GetType("System.Int32"));
            dt.Columns.Add(dc);
            return dt;
        }

        public void EjecutarCompra(DataTable dtCarrito, string email, int codMP, int codBco)
        {
            DaoVenta ven = new DaoVenta();
            DaoUsuarios usu = new DaoUsuarios();
            DaoDetalleVenta dVen = new DaoDetalleVenta();
            Producto prod = new Producto();
            Venta venta = new Venta(usu.GetCodCliente(email), codBco, codMP);
            ven.GrabarVenta(venta);
            venta.CodVenta = Convert.ToInt32(ven.ObtenerCodVenta());
            dVen.GrabarDetalleVenta(dtCarrito, venta);
        }

        public void AgregarCarrito(DataTable Carrito, int codProd, int cant)
        {
            Producto prod = new Producto();
            DaoProducto daoProd = new DaoProducto();
            prod = daoProd.GetProductoPorCodigoDeProducto(codProd);
            DataRow dr = Carrito.NewRow();
            dr["CodProd"] = prod.CodProducto;
            dr["NomProd"] = prod.NombreProducto;
            dr["PU"] = prod.PrecioUnitario;
            dr["Cant"] = 1;
            Carrito.Rows.Add(dr);
        }

        public void EliminaCarrito(DataTable Carrito, int pos)
        {
            Carrito.Rows.RemoveAt(pos);
            if (Carrito.Rows.Count == 0)
                Carrito = null;
        }
    }
}
