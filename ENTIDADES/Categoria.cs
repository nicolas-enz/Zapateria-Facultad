using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ENTIDADES
{
    public class Categoria
    {
        private int n_CodCategoria;
        private string n_NombreCategoria;

        public Categoria()
        {

        }

        public Categoria(int u_codCat, string u_nomCat)
        {
            CodCategoria = u_codCat;
            NombreCategoria = u_nomCat;
        }

        public int CodCategoria
        {
            get { return n_CodCategoria; }
            set { n_CodCategoria = value; }
        }

        public string NombreCategoria
        {
            get { return n_NombreCategoria; }
            set { n_NombreCategoria = value; }
        }
    };
}
