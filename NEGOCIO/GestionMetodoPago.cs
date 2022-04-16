using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using DAO;
using ENTIDADES;

namespace NEGOCIO
{
    public class GestionMetodoPago
    {
        public DataTable GetTablaXBanco(int codBco)
        {
            DaoMetodoPago dMP = new DaoMetodoPago();
            DataTable tabla = dMP.GetMPXBco(codBco);
            return tabla;
        }

        public void AgregarMetodo(string descripcion, string cantCuotas)
        {
            DaoMetodoPago daoMetodo = new DaoMetodoPago();

            MetodoPago metodoPago = new MetodoPago(daoMetodo.getCodigoMetodoPago(), descripcion, Convert.ToInt32(cantCuotas));

            daoMetodo.AgregarATabla(metodoPago);

        }
    }
}
