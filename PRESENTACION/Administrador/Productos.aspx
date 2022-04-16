<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Productos.aspx.cs" Inherits="PRESENTACION.AdministradorProductos" %>

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
                -<asp:LinkButton ID="linkNuevoProd" runat="server" OnClick="linkNuevoProd_Click">Nuevo Producto</asp:LinkButton>
                <br />
                -<asp:LinkButton ID="linkBuscar" runat="server" OnClick="linkBuscar_Click">Buscar</asp:LinkButton>
                <br />
                -<asp:LinkButton ID="linkVolver" runat="server" OnClick="linkVolver_Click">Volver</asp:LinkButton>
            </div>
            
            <div class="gridview">
                
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CodProducto,CodProveedor" DataSourceID="SqlProductos" AllowSorting="True">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True"  />
                        <asp:BoundField DataField="CodProducto" HeaderText="CodProducto" ReadOnly="True" SortExpression="CodProducto" />
                        <asp:BoundField DataField="CodProveedor" HeaderText="CodProveedor" ReadOnly="True" SortExpression="CodProveedor" />
                        <asp:BoundField DataField="CodCategoria" HeaderText="CodCategoria" SortExpression="CodCategoria"/>
                        <asp:BoundField DataField="NombreProducto" HeaderText="NombreProducto" SortExpression="NombreProducto" />
                        <asp:BoundField DataField="PrecioUnitario" HeaderText="PrecioUnitario" SortExpression="PrecioUnitario" />
                        <asp:BoundField DataField="CantidadEnExistencia" HeaderText="CantidadEnExistencia" SortExpression="CantidadEnExistencia" />
                        <asp:CheckBoxField DataField="Activo" HeaderText="Activo" SortExpression="Activo" />
                    </Columns>


                </asp:GridView>
                
                <asp:SqlDataSource ID="SqlProductos" runat="server" ConnectionString="<%$ ConnectionStrings:ZapateriaConnectionString %>" SelectCommand="SELECT * FROM [Productos]" DeleteCommand="DELETE FROM [Productos] WHERE [CodProducto] = @CodProducto AND [CodProveedor] = @CodProveedor" InsertCommand="INSERT INTO [Productos] ([CodProducto], [CodProveedor], [CodCategoria], [NombreProducto], [PrecioUnitario], [CantidadEnExistencia], [Activo]) VALUES (@CodProducto, @CodProveedor, @CodCategoria, @NombreProducto, @PrecioUnitario, @CantidadEnExistencia, @Activo)" UpdateCommand="UPDATE [Productos] SET [CodCategoria] = @CodCategoria, [NombreProducto] = @NombreProducto, [PrecioUnitario] = @PrecioUnitario, [CantidadEnExistencia] = @CantidadEnExistencia, [Activo] = @Activo WHERE [CodProducto] = @CodProducto AND [CodProveedor] = @CodProveedor">
                    <DeleteParameters>
                        <asp:Parameter Name="CodProducto" Type="Int32" />
                        <asp:Parameter Name="CodProveedor" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="CodProducto" Type="Int32" />
                        <asp:Parameter Name="CodProveedor" Type="String" />
                        <asp:Parameter Name="CodCategoria" Type="Int32" />
                        <asp:Parameter Name="NombreProducto" Type="String" />
                        <asp:Parameter Name="PrecioUnitario" Type="Double" />
                        <asp:Parameter Name="CantidadEnExistencia" Type="Int32" />
                        <asp:Parameter Name="Activo" Type="Boolean" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="CodCategoria" Type="Int32" />
                        <asp:Parameter Name="NombreProducto" Type="String" />
                        <asp:Parameter Name="PrecioUnitario" Type="Double" />
                        <asp:Parameter Name="CantidadEnExistencia" Type="Int32" />
                        <asp:Parameter Name="Activo" Type="Boolean" />
                        <asp:Parameter Name="CodProducto" Type="Int32" />
                        <asp:Parameter Name="CodProveedor" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
        </div>
    </form>
</body>
</html>
