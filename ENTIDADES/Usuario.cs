using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ENTIDADES
{
    public class Usuario
    {
        private string n_Clave;
        private string n_Email;
        private int n_CodCliente;
        private bool n_TipoUsuario;

        public Usuario()
        {

        }

        public Usuario(string u_clave, string u_email, int u_cod, bool u_tipo)
        {
            Clave = u_clave;
            Email = u_email;
            CodCliente = u_cod;
            TipoUsuario = u_tipo;
        }

        public string Clave
        {
            get { return n_Clave; }
            set { n_Clave = value; }
        }
        public string Email
        {
            get { return n_Email; }
            set { n_Email = value; }
        }
        public int CodCliente
        {
            get { return n_CodCliente; }
            set { n_CodCliente = value; }
        }
        public bool TipoUsuario
        {
            get { return n_TipoUsuario; }
            set { n_TipoUsuario = value; }
        }


    };
}
