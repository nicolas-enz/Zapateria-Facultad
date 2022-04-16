<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BuscarMetodoPago.aspx.cs" Inherits="PRESENTACION.AdministradorBuscarMetodoPago" %>

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
                Codigo Metodo de Pago:
                <br />
                <br />
                Descripcion:
                <br />
                <br />
                Cantidad Cuotas:
            </div>

            <div class="ddtxt">
                <div class="dd">
                    <asp:DropDownList ID="ddCodMetodo" runat="server">
                    </asp:DropDownList>
                    <br />
                    <br />
                    <asp:DropDownList ID="ddDescripcion" runat="server">
                    </asp:DropDownList>
                    <br />
                    <br />
                    <asp:DropDownList ID="ddCantCuotas" runat="server">
                    </asp:DropDownList>
                </div>

                <div class="txt">
                    <asp:TextBox ID="txtCodMetodo" runat="server" Width="180px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="txtDescripcion" runat="server" Width="180px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="txtCantCuotas" runat="server" Width="180px"></asp:TextBox>
                </div>
            </div>

            <div class="btnExtra">
                <asp:Button ID="btnBuscar" runat="server" Text="Buscar" Width="110px" />
            </div>
            
            <div class="gridviewExtra">
                <asp:GridView ID="grdMetodosPagos" runat="server" AutoGenerateColumns="False" DataKeyNames="CodMetodo" DataSourceID="SqlMetodoPago">
                    <Columns>
                        <asp:BoundField DataField="CodMetodo" HeaderText="CodMetodo" ReadOnly="True" SortExpression="CodMetodo" />
                        <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                        <asp:BoundField DataField="CantCuotas" HeaderText="CantCuotas" SortExpression="CantCuotas" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlMetodoPago" runat="server" ConnectionString="<%$ ConnectionStrings:ZapateriaConnectionString %>" SelectCommand="SELECT * FROM [MetodosPago] ORDER BY [CodMetodo]"></asp:SqlDataSource>
            </div>
        </div>
    </form>
</body>
</html>
