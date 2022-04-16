using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ENTIDADES
{
    public class Banco
    {
        private int n_CodBanco;
        private string n_NombreBanco;

        public Banco()
        {

        }

        public Banco(int u_cod, string u_nom)
        {
            CodBanco = u_cod;
            NombreBanco = u_nom;
        }

        public int CodBanco
        {
            get { return n_CodBanco; }
            set { n_CodBanco = value; }
        }
        public string NombreBanco
        {
            get { return n_NombreBanco; }
            set { n_NombreBanco = value; }
        }

    };
}
