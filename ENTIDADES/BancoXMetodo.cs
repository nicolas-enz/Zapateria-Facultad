using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ENTIDADES
{
    public class BancoXMetodo
    {
        private int n_CodBanco;
        private int n_CodMetodo;
        private bool n_Activo;

        public BancoXMetodo()
        {

        }

        public BancoXMetodo(int u_codB, int u_codM, bool u_activo)
        {
            CodBanco = u_codB;
            CodMetodo = u_codM;
            Activo = u_activo;
        }

        public int CodBanco
        {
            get { return n_CodBanco; }
            set { n_CodBanco = value; }
        }

        public int CodMetodo
        {
            get { return n_CodMetodo; }
            set { n_CodMetodo = value; }
        }

        public bool Activo
        {
            get { return n_Activo; }
            set { n_Activo = value; }
        }

    };
}
