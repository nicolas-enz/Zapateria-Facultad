<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BuscarProveedores.aspx.cs" Inherits="PRESENTACION.AdministradorBuscarProveedores" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="Estilos/estiloBusqueda.css" />
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

            <div class="ddtxt">
                <div class="dd">
                    <asp:DropDownList ID="ddCodProveedor" runat="server">
                    </asp:DropDownList>
                    <br />
                    <br />
                    <asp:DropDownList ID="ddNombreProveedor" runat="server">
                    </asp:DropDownList>
                    <br />
                    <br />
                    <asp:DropDownList ID="ddCUIL" runat="server">
                    </asp:DropDownList>
                    <br />
                    <br />
                    <asp:DropDownList ID="ddRazonSocial" runat="server">
                    </asp:DropDownList>
                </div>

                <div class="txt">
                    <asp:TextBox ID="txtCodProveedor" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="txtNombreProveedor" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="txtCUIL" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="txtRazonSocial" runat="server"></asp:TextBox>
                </div>
            </div>

            <div class="btnExtra">
                <asp:Button ID="btnBuscar" runat="server" Text="Buscar" />
            </div>
            
            <div class="gridviewExtra">
                <asp:GridView ID="grdProveedores" runat="server" DataSourceID="SqlProveedores" AutoGenerateColumns="False" DataKeyNames="CodProveedor">
                    <Columns>
                        <asp:BoundField DataField="CodProveedor" HeaderText="CodProveedor" ReadOnly="True" SortExpression="CodProveedor" />
                        <asp:BoundField DataField="NombreProveedor" HeaderText="NombreProveedor" SortExpression="NombreProveedor" />
                        <asp:BoundField DataField="CUIL" HeaderText="CUIL" SortExpression="CUIL" />
                        <asp:BoundField DataField="RazonSocial" HeaderText="RazonSocial" SortExpression="RazonSocial" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlProveedores" runat="server" ConnectionString="<%$ ConnectionStrings:ZapateriaConnectionString %>" SelectCommand="SELECT * FROM [Proveedores] ORDER BY [CodProveedor]"></asp:SqlDataSource>
            </div>
        </div>
    </form>
</body>
</html>
