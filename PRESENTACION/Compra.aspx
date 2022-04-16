<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Compra.aspx.cs" Inherits="PRESENTACION.Compra" %>

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
            <div id="texto">
                Banco:
                <br />
                <br />
                Metodo de pago:
            </div>
            <div id="inputs">

                <br />
                <asp:DropDownList ID="ddlBancos" runat="server" OnSelectedIndexChanged="ddlBancos_SelectedIndexChanged" OnTextChanged="ddlBancos_SelectedIndexChanged" AutoPostBack="True">
                </asp:DropDownList>
                <br />
                <br />
                <asp:DropDownList ID="ddlMetodoPago" runat="server" AutoPostBack="True">
                </asp:DropDownList>

            </div>

            <div id="boton">

                <asp:Button ID="btnConfirmarCompra" runat="server" OnClick="btnConfirmarCompra_Click" Text="Confirmar Compra" />

            </div>
        </div>
    </form>
</body>
</html>
