<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="PRESENTACION.Carrito" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="CSS/estilo.css" />
</head>
<body>
    <div id="top">
        Usted esta conectado como
        <asp:Label ID="lblUsuario" runat="server"></asp:Label>
    </div>
    <form id="form1" runat="server">
        <div class="contenedor">
            <div id="gridView">
                <asp:GridView ID="grdviewCarrito" runat="server" AutoGenerateDeleteButton="True" OnRowDeleting="grdviewCarrito_RowDeleting" >
                </asp:GridView>
            </div>
            
            <div id="boton">
                <asp:Button ID="btnComprar" runat="server" Text="Comprar" OnClick="btnComprar_Click" />
                <br />
                <br />
                <asp:LinkButton ID="linkSeguirComprando" runat="server" OnClick="linkSeguirComprando_Click">Seguir Comprando</asp:LinkButton>
                <br />

            </div>

        </div>
    </form>
</body>
</html>
