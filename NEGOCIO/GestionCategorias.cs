using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAO;
using ENTIDADES;

namespace NEGOCIO
{
    public class GestionCategorias
    {

        public void AgregarCategoria(string NombreCategoria)
        {
            DaoCategoria daoCategoria = new DaoCategoria();

            Categoria cat = new Categoria(daoCategoria.CodigoUltimaCategoria()+1, NombreCategoria);

            daoCategoria.AgregarATabla(cat);

        }
    }
}
