using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ENTIDADES
{
    public class MetodoPago
    {
        private int n_CodMetodo;
        private string n_Descripcion;
        private int n_CantCuotas;

        public MetodoPago()
        {

        }

        public MetodoPago(int u_codMetodo, string u_desc, int u_cantCuotas)
        {
            CodMetodo = u_codMetodo;
            Descripcion = u_desc;
            CantCuotas = u_cantCuotas;
        }

        public int CodMetodo
        {
            get { return n_CodMetodo; }
            set { n_CodMetodo = value; }
        }
        public string Descripcion
        {
            get { return n_Descripcion; }
            set { n_Descripcion = value; }
        }
        public int CantCuotas
        {
            get { return n_CantCuotas; }
            set { n_CantCuotas = value; }
        }

    };
}
