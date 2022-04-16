<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BuscarClientes.aspx.cs" Inherits="PRESENTACION.AdministradorBuscarClientes" %>

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
                Codigo Cliente:
                <br />
                <br />
                Nombre:
                <br />
                <br />
                Apellido:
                <br />
                <br />
                DNI:
            </div>

            <div class="ddtxt">
                <div class="dd">
                    <asp:DropDownList ID="ddCodCliente" runat="server">
                    </asp:DropDownList>
                    <br />
                    <br />
                    <asp:DropDownList ID="ddNombreCliente" runat="server">
                    </asp:DropDownList>
                    <br />
                    <br />
                    <asp:DropDownList ID="ddApellidoCliente" runat="server">
                    </asp:DropDownList>
                    <br />
                    <br />
                    <asp:DropDownList ID="ddDNI" runat="server">
                    </asp:DropDownList>
                </div>

                <div class="txt">
                    <asp:TextBox ID="txtCodCliente" runat="server" Width="180px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="txtNombreCliente" runat="server" Width="180px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="txtApellidoCliente" runat="server" Width="180px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="txtDNI" runat="server" Width="180px"></asp:TextBox>
                </div>
            </div>

            <div class="btnExtra">
                <asp:Button ID="btnBuscar" runat="server" Text="Buscar" Width="110px" />
            </div>
            
            <div class="gridviewExtra">
                <asp:GridView ID="grdClientes" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="CodCliente" DataSourceID="SqlClientes" PageSize="5">
                    <Columns>
                        <asp:BoundField DataField="CodCliente" HeaderText="CodCliente" ReadOnly="True" SortExpression="CodCliente" />
                        <asp:BoundField DataField="NombreCliente" HeaderText="NombreCliente" SortExpression="NombreCliente" />
                        <asp:BoundField DataField="ApellidoCliente" HeaderText="ApellidoCliente" SortExpression="ApellidoCliente" />
                        <asp:BoundField DataField="DNICliente" HeaderText="DNICliente" SortExpression="DNICliente" />
                        <asp:BoundField DataField="NumeroTelefono" HeaderText="NumeroTelefono" SortExpression="NumeroTelefono" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlClientes" runat="server" ConnectionString="<%$ ConnectionStrings:ZapateriaConnectionString %>" SelectCommand="SELECT * FROM [Clientes] ORDER BY [CodCliente]"></asp:SqlDataSource>
            </div>
        </div>
    </form>
</body>
</html>
