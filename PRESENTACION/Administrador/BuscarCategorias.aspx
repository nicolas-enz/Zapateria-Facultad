<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BuscarCategorias.aspx.cs" Inherits="PRESENTACION.AdministradorBuscarCategorias" %>

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
                Codigo Categoria:
                <br />
                <br />
                Nombre Categoria:
            </div>

            <div class="ddtxt">
                <div class="dd">
                    <asp:DropDownList ID="ddCodCategoria" runat="server">
                    </asp:DropDownList>
                    <br />
                    <br />
                    <asp:DropDownList ID="ddNombreCat" runat="server">
                    </asp:DropDownList>
                </div>

                <div class="txt">
                    <asp:TextBox ID="txtCodCategoria" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="txtNombreCat" runat="server"></asp:TextBox>
                </div>
            </div>

            <div class="btn">
                <asp:Button ID="btnBuscar" runat="server" Text="Buscar" Width="110px" />
            </div>

            <div class="gridview">
                <asp:GridView ID="grdCategorias" runat="server" AutoGenerateColumns="False" DataKeyNames="CodCategoria" DataSourceID="SqlCategoria">
                    <Columns>
                        <asp:BoundField DataField="NombreCategoria" HeaderText="NombreCategoria" SortExpression="NombreCategoria" />
                        <asp:BoundField DataField="CodCategoria" HeaderText="CodCategoria" ReadOnly="True" SortExpression="CodCategoria" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlCategoria" runat="server" ConnectionString="<%$ ConnectionStrings:ZapateriaConnectionString %>" SelectCommand="SELECT * FROM [Categorias] ORDER BY [CodCategoria]"></asp:SqlDataSource>
            </div>
        </div>
    
    </form>
</body>
</html>
