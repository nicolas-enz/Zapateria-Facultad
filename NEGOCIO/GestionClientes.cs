using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ENTIDADES;
using DAO;

namespace NEGOCIO
{
    public class GestionClientes
    {
        public int ObtenerCodCliente()
        {
            DaoCliente cliente = new DaoCliente();
            int codCliente = cliente.ObtenerProximoCodigo();
            return codCliente;
        }

        public void GrabarCliente(string nom, string ape, int dni, int numtel)
        {
            DaoCliente cliente = new DaoCliente();
            Cliente cli = new Cliente(cliente.ObtenerProximoCodigo(), nom, ape, dni, numtel);
            cliente.AgregarCliente(cli);
        }
    }
}
