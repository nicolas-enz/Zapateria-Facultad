using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ENTIDADES
{
    public class Venta
    {
        private int n_CodVenta;
        private int n_CodCliente;
        private int n_CodBanco;
        private int n_MetodoPago;

        public Venta()
        {

        }

        public Venta( int u_codCli, int u_codBco, int u_MP)
        {
            CodCliente = u_codCli;
            CodBanco = u_codBco;
            MetodoPago = u_MP;
        }

        public Venta(int u_codVenta, int u_codCli, int u_codBco, int u_MP)
        {
            CodVenta = u_codVenta;
            CodCliente = u_codCli;
            CodBanco = u_codBco;
            MetodoPago = u_MP;
        }

        public int CodVenta
        {
            get { return n_CodVenta; }
            set { n_CodVenta = value; }
        }

        public int CodCliente
        {
            get { return n_CodCliente; }
            set { n_CodCliente = value; }
        }

        public int CodBanco
        {
            get { return n_CodBanco; }
            set { n_CodBanco = value; }
        }

        public int MetodoPago
        {
            get { return n_MetodoPago; }
            set { n_MetodoPago = value; }
        }

    }
}
