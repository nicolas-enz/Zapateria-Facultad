<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Principal.aspx.cs" Inherits="PRESENTACION.AdministradorPrincipal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet"  href="Estilos/contenedores.css"/>
    <link rel="stylesheet"  href="Estilos/estiloMenu.css"/>
</head>
<body>
    <div id="top">
        Usted esta conectado como
        <asp:Label ID="lblUsuario" runat="server"></asp:Label>
    </div>
    <form id="form1" runat="server">
        <div class="contenedor">
            <div class="links">
                -<asp:LinkButton ID="linkProductos" runat="server" OnClick="linkProductos_Click">Administracion de Productos</asp:LinkButton>
                <br />
                -<asp:LinkButton ID="linkProveedores" runat="server" OnClick="linkProveedores_Click">Administracion de Proveedores</asp:LinkButton>
                <br />
                -<asp:LinkButton ID="linkCategorias" runat="server" OnClick="linkCategorias_Click">Administracion de Categorias</asp:LinkButton>
                <br />
                -<asp:LinkButton ID="linkUsuarios" runat="server" OnClick="linkUsuarios_Click">Administracion de Usuarios</asp:LinkButton>
                <br />
                -<asp:LinkButton ID="linkClientes" runat="server" OnClick="linkClientes_Click">Administracion de Clientes</asp:LinkButton>
                <br />
                -<asp:LinkButton ID="linkVentas" runat="server" OnClick="linkVentas_Click">Administracion de Ventas</asp:LinkButton>
                <br />
                -<asp:LinkButton ID="linkBancos" runat="server" OnClick="linkBancos_Click">Administracion de Bancos</asp:LinkButton>
                <br />
                -<asp:LinkButton ID="linkMetodosDePago" runat="server" OnClick="linkMetodosDePago_Click">Administracion de Metodos de Pago</asp:LinkButton>
                <br />
                -<asp:LinkButton ID="linkSalir" runat="server" OnClick="linkSalir_Click">Salir</asp:LinkButton>
            </div>
        </div>
    </form>
</body>
</html>
