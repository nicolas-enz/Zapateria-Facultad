<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BuscarUsuario.aspx.cs" Inherits="PRESENTACION.AdministradorBuscarUsuario" %>

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
                Email:
                <br />
                <br />
                Tipo Usuario:
            </div>

            <div class="ddtxt">
                <div class="dd">
                    <asp:DropDownList ID="ddCodCliente" runat="server">
                    </asp:DropDownList>
                    <br />
                    <br />
                    <asp:DropDownList ID="ddEmail" runat="server">
                    </asp:DropDownList>
                    <br />
                    <br />
                    <asp:DropDownList ID="ddTipoUsuario" runat="server">
                    </asp:DropDownList>
                </div>

                <div class="txt">
                    <asp:TextBox ID="txtCodCliente" runat="server" Width="180px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="txtEmail" runat="server" Width="180px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="txtTipoUsuario" runat="server" Width="180px"></asp:TextBox>
                </div>
            </div>

            <div class="btnExtra">
                <asp:Button ID="btnBuscar" runat="server" Text="Buscar" Width="110px" />
            </div>
            
            <div class="gridviewExtra">
                <asp:GridView ID="grdUsuarios" runat="server" AutoGenerateColumns="False" DataKeyNames="Email" DataSourceID="SqlUsuarios" style="margin-top: 0px">
                    <Columns>
                        <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" SortExpression="Email" />
                        <asp:BoundField DataField="CodCliente" HeaderText="CodCliente" SortExpression="CodCliente" />
                        <asp:CheckBoxField DataField="TipoUsuario" HeaderText="TipoUsuario" SortExpression="TipoUsuario" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlUsuarios" runat="server" ConnectionString="<%$ ConnectionStrings:ZapateriaConnectionString %>" SelectCommand="SELECT [Email], [CodCliente], [TipoUsuario] FROM [Usuarios] ORDER BY [TipoUsuario] DESC"></asp:SqlDataSource>
            </div>
        </div>
    </form>
</body>
</html>
