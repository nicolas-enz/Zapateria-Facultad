using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAO;
using ENTIDADES;

namespace NEGOCIO
{
    public class GestionProveedores
    {
        public void AgregarProveedor(string codProv, string nombreProveedor, string cuil,
            string razonSocial)
        {
            DaoProveedor daoProv = new DaoProveedor();

            Proveedor prov = new Proveedor(codProv, nombreProveedor, cuil, razonSocial);

            daoProv.AgregarATabla(prov);

        }
    }
}
