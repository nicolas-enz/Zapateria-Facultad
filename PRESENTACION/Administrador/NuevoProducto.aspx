<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NuevoProducto.aspx.cs" Inherits="PRESENTACION.AdministradorNuevoProducto" %>

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
                &nbsp;Nombre Producto:
                <br />
                <br />
                Proveedor: <br />
                <br />
                Categoria:
                <br />
                <br />
                Precio Unitario:
                <br />
                <br />
                Cantidad en Existencia:
                <br />
                <br />
                Activo:
            </div>
                
            <div class="txt">
                <asp:TextBox ID="txtNombreProducto" runat="server" Width="250px"></asp:TextBox>
                <br />
                <br />
                <asp:DropDownList ID="ddlProveedores" runat="server" DataSourceID="SqlProveedores" DataTextField="NombreProveedor" DataValueField="CodProveedor">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlProveedores" runat="server" ConnectionString="<%$ ConnectionStrings:ZapateriaConnectionString %>" SelectCommand="SELECT [CodProveedor], [NombreProveedor] FROM [Proveedores]"></asp:SqlDataSource>
                <br />
                <br />
                <asp:DropDownList ID="ddlCategoria" runat="server" DataSourceID="SqlCategoria" DataTextField="NombreCategoria" DataValueField="CodCategoria">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlCategoria" runat="server" ConnectionString="<%$ ConnectionStrings:ZapateriaConnectionString %>" SelectCommand="SELECT [CodCategoria], [NombreCategoria] FROM [Categorias]"></asp:SqlDataSource>
                <br />
                <br />
                <asp:TextBox ID="txtPrecioUnitario" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:TextBox ID="txtCantExistencia" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:RadioButton ID="rbtnSiActivo" runat="server" Text="Si" Checked="True" GroupName="Activo" />
                <asp:RadioButton ID="rbtnNoActivo" runat="server" Text="No" GroupName="Activo" />
            </div>
            
            <div class="btnProd">
                <asp:Button ID="btnAgregar" runat="server" Text="Agregar" Width="90px" OnClick="btnAgregar_Click" />
            </div>
        </div>
    </form>
</body>
</html>
