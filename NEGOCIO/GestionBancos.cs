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
    public class GestionBancos
    {
        public DataTable GetBancos()
        {
            DaoBancos dBcos = new DaoBancos();
            DataTable tabla = dBcos.GetTablaBancos();

            return tabla;
        }

        public void AgregarBanco(string NombreBanco)
        {
            DaoBancos daoBancos = new DaoBancos();

            Banco banc = new Banco(daoBancos.getCodigoBanco(), NombreBanco);

            daoBancos.AgregarATabla(banc);

        }
    }
}
