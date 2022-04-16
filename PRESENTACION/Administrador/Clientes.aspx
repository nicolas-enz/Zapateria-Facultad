<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Clientes.aspx.cs" Inherits="PRESENTACION.AdministradorClientes" %>

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
                -<asp:LinkButton ID="linkBuscar" runat="server" OnClick="linkBuscar_Click">Buscar</asp:LinkButton>
                <br />
                -<asp:LinkButton ID="linkVolver" runat="server" OnClick="linkVolver_Click">Volver</asp:LinkButton>
            </div>
            
            <div class="gridview">
                <asp:GridView ID="grdClientes" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="CodCliente" DataSourceID="SqlClientes" PageSize="5" AutoGenerateEditButton="True">
                    <Columns>
                        <asp:BoundField DataField="CodCliente" HeaderText="CodCliente" ReadOnly="True" SortExpression="CodCliente" />
                        <asp:BoundField DataField="NombreCliente" HeaderText="NombreCliente" SortExpression="NombreCliente" />
                        <asp:BoundField DataField="ApellidoCliente" HeaderText="ApellidoCliente" SortExpression="ApellidoCliente" />
                        <asp:BoundField DataField="DNICliente" HeaderText="DNICliente" SortExpression="DNICliente" />
                        <asp:BoundField DataField="NumeroTelefono" HeaderText="NumeroTelefono" SortExpression="NumeroTelefono" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlClientes" runat="server" ConnectionString="<%$ ConnectionStrings:ZapateriaConnectionString %>" SelectCommand="SELECT * FROM [Clientes] ORDER BY [CodCliente]" DeleteCommand="DELETE FROM [Clientes] WHERE [CodCliente] = @CodCliente" InsertCommand="INSERT INTO [Clientes] ([CodCliente], [NombreCliente], [ApellidoCliente], [DNICliente], [NumeroTelefono]) VALUES (@CodCliente, @NombreCliente, @ApellidoCliente, @DNICliente, @NumeroTelefono)" UpdateCommand="UPDATE [Clientes] SET [NombreCliente] = @NombreCliente, [ApellidoCliente] = @ApellidoCliente, [DNICliente] = @DNICliente, [NumeroTelefono] = @NumeroTelefono WHERE [CodCliente] = @CodCliente">
                    <DeleteParameters>
                        <asp:Parameter Name="CodCliente" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="CodCliente" Type="Int32" />
                        <asp:Parameter Name="NombreCliente" Type="String" />
                        <asp:Parameter Name="ApellidoCliente" Type="String" />
                        <asp:Parameter Name="DNICliente" Type="Int32" />
                        <asp:Parameter Name="NumeroTelefono" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="NombreCliente" Type="String" />
                        <asp:Parameter Name="ApellidoCliente" Type="String" />
                        <asp:Parameter Name="DNICliente" Type="Int32" />
                        <asp:Parameter Name="NumeroTelefono" Type="Int32" />
                        <asp:Parameter Name="CodCliente" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
        </div>
    </form>
</body>
</html>
