<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NuevoProveedor.aspx.cs" Inherits="PRESENTACION.AdministradorNuevoProveedor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="Estilos/estiloNuevo.css" />
    <link rel="stylesheet"  href="Estilos/contenedores.css"/>
</head>
<body>
    <div id="top">
        Usted esta conectado como
        <asp:Label ID="lblUsuario" runat="server"></asp:Label>
    </div>
    <form id="form1" runat="server">
        <div class="contenedor">
            <div class="texto">
                Codigo Proveedor:
                <br />
                <br />
                Nombre Proveedor:
                <br />
                <br />
                CUIL:
                <br />
                <br />
                Razon Social:
            </div>
            
            <div class="txt">
                <asp:TextBox ID="txtCodigo" runat="server" Width="92px"></asp:TextBox>
                <br />
                <br />
                <asp:TextBox ID="txtNombre" runat="server" Width="248px"></asp:TextBox>
                <br />
                <br />
                <asp:TextBox ID="txtCUIL" runat="server" Width="175px"></asp:TextBox>
                <br />
                <br />
                <asp:TextBox ID="txtRazonSocial" runat="server" Width="248px"></asp:TextBox>
            </div>
            
            <div class="btn">
                <asp:Button ID="btnAgregar" runat="server" Text="Agregar" OnClick="btnAgregar_Click" />
            </div>
        </div>
    </form>
</body>
</html>
