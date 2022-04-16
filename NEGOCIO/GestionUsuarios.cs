using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAO;
using ENTIDADES;
using System.Data.SqlClient;

namespace NEGOCIO
{
    public class GestionUsuarios
    {
        public void Registrarse(string email, string clave)
        {
            DaoUsuarios usuario = new DaoUsuarios();
            GestionClientes gestorClientes = new GestionClientes();
            Usuario usu = new Usuario(clave, email, gestorClientes.ObtenerCodCliente(), false);
            usuario.AgregarUsuario(usu);
            
        }

        public bool LogIn(string email, string clave)
        {
            DaoUsuarios daoUsu = new DaoUsuarios();
            Usuario usu = daoUsu.GetUsuario(email);

            if((usu.Email == email) && (usu.Clave == clave))
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public bool EsAdmin(string email)
        {
            DaoUsuarios daoUsu = new DaoUsuarios();
            Usuario usu = daoUsu.GetUsuario(email);

            return usu.TipoUsuario;
        }
    }
}
