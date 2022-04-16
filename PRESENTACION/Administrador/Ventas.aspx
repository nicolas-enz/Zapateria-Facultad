<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ventas.aspx.cs" Inherits="PRESENTACION.AdministradorVentas" %>

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
                <asp:GridView ID="gViewVentas" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="CodVenta" DataSourceID="SqlVentas" PageSize="5">
                    <Columns>
                        <asp:BoundField DataField="CodVenta" HeaderText="CodVenta" ReadOnly="True" SortExpression="CodVenta" />
                        <asp:BoundField DataField="CodCliente" HeaderText="CodCliente" SortExpression="CodCliente" />
                        <asp:BoundField DataField="CodBanco" HeaderText="CodBanco" SortExpression="CodBanco" />
                        <asp:BoundField DataField="MetodoPago" HeaderText="MetodoPago" SortExpression="MetodoPago" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlVentas" runat="server" ConnectionString="<%$ ConnectionStrings:ZapateriaConnectionString %>" SelectCommand="SELECT * FROM [Ventas] ORDER BY [CodVenta]"></asp:SqlDataSource>
            </div>
        </div>
    </form>
</body>
</html>
