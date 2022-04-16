<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BuscarProducto.aspx.cs" Inherits="PRESENTACION.AdministracionBuscarProducto" %>

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
                Codigo Producto:
                <br />
                <br />
                Codigo Categoria:
                <br />
                <br />
                Codigo Proveedor:
                <br />
                <br />
                Nombre Producto:
                <br />
                <br />
                Precio Unitario:
                <br />
                <br />
                Cantidad en Existencia:
            </div>

            <div class="ddtxt">
                <div class="dd">
                    <asp:DropDownList ID="ddCodProducto" runat="server">
                    </asp:DropDownList>
                    <br />
                    <br />
                    <asp:DropDownList ID="ddCodCategoria" runat="server">
                    </asp:DropDownList>
                    <br />
                    <br />
                    <asp:DropDownList ID="ddCodProveedor" runat="server">
                    </asp:DropDownList>
                    <br />
                    <br />
                    <asp:DropDownList ID="ddNombreProducto" runat="server">
                    </asp:DropDownList>
                    <br />
                    <br />
                    <asp:DropDownList ID="ddPrecioUnitario" runat="server">
                    </asp:DropDownList>
                    <br />
                    <br />
                    <asp:DropDownList ID="ddCantExistencia" runat="server">
                    </asp:DropDownList>
                </div>

                <div class="txt">
                    <asp:TextBox ID="txtCodProducto" runat="server" Width="180px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="txtCodCategoria" runat="server" Width="180px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="txtCodProveedor" runat="server" Width="180px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="txtNombreProducto" runat="server" Width="180px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="txtPrecioUnitario" runat="server" Width="180px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="txtCantExistencia" runat="server" Width="180px"></asp:TextBox>
                </div>
            </div>

            <div class="btnProd">
                <asp:Button ID="btnBuscar" runat="server" Text="Buscar" Width="120px" />
            </div>
            
            <div class="gridviewProd">
                <asp:GridView ID="grdProductos" runat="server" AutoGenerateColumns="False" DataKeyNames="CodProducto,CodProveedor" DataSourceID="SqlProductos">
                    <Columns>
                        <asp:BoundField DataField="CodProducto" HeaderText="CodProducto" ReadOnly="True" SortExpression="CodProducto" />
                        <asp:BoundField DataField="CodProveedor" HeaderText="CodProveedor" ReadOnly="True" SortExpression="CodProveedor" />
                        <asp:BoundField DataField="CodCategoria" HeaderText="CodCategoria" SortExpression="CodCategoria" />
                        <asp:BoundField DataField="NombreProducto" HeaderText="NombreProducto" SortExpression="NombreProducto" />
                        <asp:BoundField DataField="PrecioUnitario" HeaderText="PrecioUnitario" SortExpression="PrecioUnitario" />
                        <asp:BoundField DataField="CantidadEnExistencia" HeaderText="CantidadEnExistencia" SortExpression="CantidadEnExistencia" />
                        <asp:CheckBoxField DataField="Activo" HeaderText="Activo" SortExpression="Activo" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlProductos" runat="server" ConnectionString="<%$ ConnectionStrings:ZapateriaConnectionString %>" SelectCommand="SELECT * FROM [Productos] ORDER BY [CodProducto]"></asp:SqlDataSource>
            </div>
        </div>
    </form>
</body>
</html>
