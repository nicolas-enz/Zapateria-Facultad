<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GraciasPorSuCompra.aspx.cs" Inherits="PRESENTACION.GraciasPorSuCompra" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="CSS/estilo.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="contenedor">
            Gracias por su compra
            <br />
            <br />
            <asp:LinkButton ID="linkCatalogo" runat="server" OnClick="linkCatalogo_Click">Volver Al Catalogo</asp:LinkButton>
        </div>
    </form>
</body>
</html>
