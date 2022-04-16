<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BuscarBanco.aspx.cs" Inherits="PRESENTACION.AdministradorBuscarBanco" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet"  href="Estilos/estiloBusqueda.css"/>
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
                Codigo Banco:
                <br />
                <br />
                Nombre Banco:
            </div>
            
            <div class="ddtxt">
                <div class="dd">
                    <asp:DropDownList ID="ddCodBanco" runat="server">
                    </asp:DropDownList>
                    <br />
                    <br />
                    <asp:DropDownList ID="ddNombreBanco" runat="server">
                    </asp:DropDownList>
                </div>
                
                <div class="txt">
                    <asp:TextBox ID="txtCodBanco" runat="server" Width="180px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="txtNombreBanco" runat="server" Width="180px"></asp:TextBox>
                </div>
                
            </div>
            
            <div class="btn">
                <asp:Button ID="btnBuscar" runat="server" Text="Buscar" Width="110px" />
            </div>

            <div class="gridview">
                <asp:GridView ID="grdBancos" runat="server" AutoGenerateColumns="False" DataKeyNames="CodBanco" DataSourceID="SqlBancos">
                    <Columns>
                        <asp:BoundField DataField="CodBanco" HeaderText="CodBanco" ReadOnly="True" SortExpression="CodBanco" />
                        <asp:BoundField DataField="NombreBanco" HeaderText="NombreBanco" SortExpression="NombreBanco" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlBancos" runat="server" ConnectionString="<%$ ConnectionStrings:ZapateriaConnectionString %>" SelectCommand="SELECT * FROM [Bancos] ORDER BY [CodBanco]"></asp:SqlDataSource>
            </div>
            
        </div>
    </form>
</body>
</html>
