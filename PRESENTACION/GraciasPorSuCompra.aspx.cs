﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PRESENTACION
{
    public partial class GraciasPorSuCompra : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void linkCatalogo_Click(object sender, EventArgs e)
        {
            Response.Redirect("Catalogo.aspx");
        }
    }
}