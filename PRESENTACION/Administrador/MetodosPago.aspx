<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MetodosPago.aspx.cs" Inherits="PRESENTACION.AdministradorMetodosPago" %>

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
                -<asp:LinkButton ID="linkNuevoMetodo" runat="server" OnClick="linkNuevoMetodo_Click">Agregar Metodo de Pago</asp:LinkButton>
                <br />
                -<asp:LinkButton ID="linkBuscar" runat="server" OnClick="linkBuscar_Click">Buscar</asp:LinkButton>
                <br />
                -<asp:LinkButton ID="linkVolver" runat="server" OnClick="linkVolver_Click">Volver</asp:LinkButton>
            </div>
            
            <div class="gridview">
                <asp:GridView ID="grdMetodosPago" runat="server" AutoGenerateColumns="False" DataKeyNames="CodMetodo" DataSourceID="SqlMetodoPago">
                    <Columns>
                        <asp:BoundField DataField="CodMetodo" HeaderText="CodMetodo" ReadOnly="True" SortExpression="CodMetodo" />
                        <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                        <asp:BoundField DataField="CantCuotas" HeaderText="CantCuotas" SortExpression="CantCuotas" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlMetodoPago" runat="server" ConnectionString="<%$ ConnectionStrings:ZapateriaConnectionString %>" SelectCommand="SELECT * FROM [MetodosPago] ORDER BY [CodMetodo]" DeleteCommand="DELETE FROM [MetodosPago] WHERE [CodMetodo] = @CodMetodo" InsertCommand="INSERT INTO [MetodosPago] ([CodMetodo], [Descripcion], [CantCuotas]) VALUES (@CodMetodo, @Descripcion, @CantCuotas)" UpdateCommand="UPDATE [MetodosPago] SET [Descripcion] = @Descripcion, [CantCuotas] = @CantCuotas WHERE [CodMetodo] = @CodMetodo">
                    <DeleteParameters>
                        <asp:Parameter Name="CodMetodo" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="CodMetodo" Type="Int32" />
                        <asp:Parameter Name="Descripcion" Type="String" />
                        <asp:Parameter Name="CantCuotas" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Descripcion" Type="String" />
                        <asp:Parameter Name="CantCuotas" Type="Int32" />
                        <asp:Parameter Name="CodMetodo" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
        </div>
    </form>
</body>
</html>
