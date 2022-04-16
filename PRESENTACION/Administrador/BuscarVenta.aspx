<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BuscarVenta.aspx.cs" Inherits="PRESENTACION.AdministradorBuscarVenta" %>

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
                Codigo Venta:
            </div>

            <div class="ddtxt">
                <div class="dd">
                    <asp:DropDownList ID="ddCodVenta" runat="server">
                    </asp:DropDownList>
                </div>

                <div class="txt">
                    <asp:TextBox ID="txtCodVenta" runat="server" Width="180px"></asp:TextBox>
                </div>
            </div>

            <div class="btn">
                <asp:Button ID="btnBuscar" runat="server" Text="Buscar" Width="110px" />
            </div>
            
            <div class="gridview">
                <asp:GridView ID="grdVentas" runat="server" AutoGenerateColumns="False" DataKeyNames="CodVenta,CodProducto" DataSourceID="SqlVentas">
                    <Columns>
                        <asp:BoundField DataField="CodVenta" HeaderText="CodVenta" ReadOnly="True" SortExpression="CodVenta" />
                        <asp:BoundField DataField="CodProducto" HeaderText="CodProducto" ReadOnly="True" SortExpression="CodProducto" />
                        <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" SortExpression="Cantidad" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlVentas" runat="server" ConnectionString="<%$ ConnectionStrings:ZapateriaConnectionString %>" SelectCommand="SELECT * FROM [DetalleVenta] ORDER BY [CodVenta]"></asp:SqlDataSource>
            </div>
        </div>
    </form>
</body>
</html>
