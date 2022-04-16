using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ENTIDADES
{
    public class Cliente
    {

        private int n_CodCliente;
        private string n_NombreCliente;
        private string n_ApellidoCliente;
        private int n_DNICliente;
        private int n_NumeroTelefono;

        public Cliente()
        {

        }

        public Cliente(int u_codCli, string u_nomCli, string u_apeCli, int u_dni, int u_numTel)
        {
            CodCliente = u_codCli;
            NombreCliente = u_nomCli;
            ApellidoCliente = u_apeCli;
            DNICliente = u_dni;
            NumeroTelefono = u_numTel;
        }

        public int CodCliente
        {
            get { return n_CodCliente; }
            set { n_CodCliente = value; }
        }

        public string NombreCliente
        {
            get { return n_NombreCliente; }
            set { n_NombreCliente = value; }
        }

        public string ApellidoCliente
        {
            get { return n_ApellidoCliente; }
            set { n_ApellidoCliente = value; }
        }

        public int DNICliente
        {
            get { return n_DNICliente; }
            set { n_DNICliente = value; }
        }

        public int NumeroTelefono
        {
            get { return n_NumeroTelefono; }
            set { n_NumeroTelefono = value; }
        }
    }
}
