using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ENTIDADES
{
    public class Proveedor
    {
        private string n_CodProveedor;
        private string n_NombreProveedor;
        private string n_Cuil;
        private string n_RazonSocial;

        public Proveedor()
        {

        }

        public Proveedor(string u_codProv, string u_nomProv, string u_cuil, string u_RS)
        {
            CodProveedor = u_codProv;
            NombreProveedor = u_nomProv;
            Cuil = u_cuil;
            RazonSocial = u_RS;
        }

        public string CodProveedor
        {
            get { return n_CodProveedor; }
            set { n_CodProveedor = value; }
        }

        public string NombreProveedor
        {
            get { return n_NombreProveedor; }
            set { n_NombreProveedor = value; }
        }

        public string Cuil
        {
            get { return n_Cuil; }
            set { n_Cuil = value; }
        }

        public string RazonSocial
        {
            get { return n_RazonSocial; }
            set { n_RazonSocial = value; }
        }

    };
}
