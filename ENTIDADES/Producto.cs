using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ENTIDADES
{
    public class Producto
    {
        private int n_CodProducto;
        private string n_CodProveedor;
        private int n_CodCategoria;
        private string n_NombreProducto;
        private float n_PrecioUnitario;
        private int n_CantidadEnExistencia;
        private bool n_Activo;

        public Producto()
        {

        }

        public Producto(int u_codProd, string u_codProv, int u_codCat, string u_nom, float u_pu, int u_cant, bool u_activo)
        {
            CodProducto = u_codProd;
            CodProveedor = u_codProv;
            CodCategoria = u_codCat;
            NombreProducto = u_nom;
            PrecioUnitario = u_pu;
            CantidadEnExistencia = u_cant;
            Activo = u_activo;
        }

        public int CodProducto
        {
            get { return n_CodProducto; }
            set { n_CodProducto = value; }
        }

        public string CodProveedor
        {
            get { return n_CodProveedor; }
            set { n_CodProveedor = value; }
        }

        public int CodCategoria
        {
            get { return n_CodCategoria; }
            set { n_CodCategoria = value; }
        }

        public string NombreProducto
        {
            get { return n_NombreProducto; }
            set { n_NombreProducto = value; }
        }

        public float PrecioUnitario
        {
            get { return n_PrecioUnitario; }
            set { n_PrecioUnitario = value; }
        }

        public int CantidadEnExistencia
        {
            get { return n_CantidadEnExistencia; }
            set { n_CantidadEnExistencia = value; }
        }

        public bool Activo
        {
            get { return n_Activo; }
            set { n_Activo = value; }
        }


    };



}
