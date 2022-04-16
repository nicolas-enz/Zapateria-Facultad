<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PRESENTACION.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="CSS/estilo.css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="contenedor">
            <div id="texto">
                Email:
                <br />
                <br />
                Contraseña:
                <br />
                <br />
                <asp:Label ID="lblNoExiste" runat="server"></asp:Label>
            </div>
            
            <div id="inputs">
                <br />
                <asp:TextBox ID="txtUsuario" runat="server" style="margin-left: 0px" Width="170px"></asp:TextBox>
                <br />
                <br />
                <asp:TextBox ID="txtClave" runat="server" Width="170px" TextMode="Password"></asp:TextBox>
            </div>
            
            <div id="boton">
                <asp:Button ID="btnConectar" runat="server" Text="Conectar" OnClick="btnConectar_Click" />
                <br />
                <br />
                <asp:LinkButton ID="linkRegistro" runat="server" OnClick="linkRegistro_Click">Registrarse</asp:LinkButton>
            </div>
        </div>
    </form>
</body>
</html>
