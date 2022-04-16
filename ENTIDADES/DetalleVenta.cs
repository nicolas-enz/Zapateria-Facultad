using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ENTIDADES
{
    public class DetalleVenta
    {
        private int n_CodVenta;
        private int n_CodProducto;
        private int n_Cantidad;

        public DetalleVenta()
        {

        }

        public DetalleVenta(int u_codVenta, int u_codProd, int u_cant)
        {
            CodVenta = u_codVenta;
            CodProducto = u_codProd;
            Cantidad = u_cant;
        }

        public int CodVenta
        {
            get { return n_CodVenta; }
            set { n_CodVenta = value; }
        }

        public int CodProducto
        {
            get { return n_CodProducto; }
            set { n_CodProducto = value; }
        }

        public int Cantidad
        {
            get { return n_Cantidad; }
            set { n_Cantidad = value; }
        }

    };
}
