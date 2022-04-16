<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Catalogo.aspx.cs" Inherits="PRESENTACION.Catalogo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="CSS/estilo.css" />
</head>
<body>
    <div id="top">
        Usted esta conectado como
        <asp:Label ID="lblUsuario" runat="server"></asp:Label>
    </div>
    <form id="form1" runat="server">
        <div style="height: 540px; width: 800px">
            <div style="width: 250px; height: 500px; float:left">

                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlCategorias" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" CellPadding="4" ForeColor="#333333">
                    <AlternatingItemStyle/>
                    <FooterStyle Font-Bold="True"  />
                    <HeaderStyle Font-Bold="True"  />
                    <ItemStyle ForeColor="#333333" />
                    <ItemTemplate>
                        <asp:LinkButton ID="linkCategoria" runat="server" Text='<%# Eval("NombreCategoria") %>' CommandName="Select"></asp:LinkButton>
                    </ItemTemplate>
                    <SelectedItemStyle Font-Bold="True" ForeColor="Navy" />
                </asp:DataList>

                <asp:SqlDataSource ID="SqlCategorias" runat="server" ConnectionString="<%$ ConnectionStrings:ZapateriaConnectionString %>" SelectCommand="SELECT [NombreCategoria] FROM [Categorias] ORDER BY [CodCategoria]"></asp:SqlDataSource>

            </div>
            <div style="width: 500px; height: 500px; float:right; margin-right: 50px;">

                <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlProductos" GroupItemCount="3" OnSelectedIndexChanged="ListView1_SelectedIndexChanged">
                    <AlternatingItemTemplate>
                        <td runat="server" style="background-color: #FAFAD2;color: #284775;">CodProducto:
                            <asp:Label ID="CodProductoLabel" runat="server" Text='<%# Eval("CodProducto") %>' />
                            <br />
                            <asp:Label ID="NombreProductoLabel" runat="server" Text='<%# Eval("NombreProducto") %>' />
                            <br />$
                            <asp:Label ID="PrecioUnitarioLabel" runat="server" Text='<%# Eval("PrecioUnitario") %>'></asp:Label>
                            <br />
                            Cantidad en existencia:
                            <asp:Label ID="CantidadEnExistenciaLabel" runat="server" Text='<%# Eval("CantidadEnExistencia") %>' />
                            <br />
                            <asp:Button ID="Button2" runat="server" Text="Agregar al Carrito"  CommandName="Select"/>
                            <br />
                        </td>
                    </AlternatingItemTemplate>
                    <EditItemTemplate>
                        <td runat="server" style="background-color: #FFCC66;color: #000080;">CodProducto:
                            <asp:TextBox ID="CodProductoTextBox" runat="server" Text='<%# Bind("CodProducto") %>' />
                            <br />NombreProducto:
                            <asp:TextBox ID="NombreProductoTextBox" runat="server" Text='<%# Bind("NombreProducto") %>' />
                            <br />PrecioUnitario:
                            <asp:TextBox ID="PrecioUnitarioTextBox" runat="server" Text='<%# Bind("PrecioUnitario") %>' />
                            <br />CantidadEnExistencia:
                            <asp:TextBox ID="CantidadEnExistenciaTextBox" runat="server" Text='<%# Bind("CantidadEnExistencia") %>' />
                            <br />
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Actualizar" />
                            <br />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancelar" />
                            <br /></td>
                    </EditItemTemplate>
                    <EmptyDataTemplate>
                        <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                            <tr>
                                <td>No se han devuelto datos.</td>
                            </tr>
                        </table>
                    </EmptyDataTemplate>
                    <EmptyItemTemplate>
<td runat="server" />
                    </EmptyItemTemplate>
                    <GroupTemplate>
                        <tr id="itemPlaceholderContainer" runat="server">
                            <td id="itemPlaceholder" runat="server"></td>
                        </tr>
                    </GroupTemplate>
                    <InsertItemTemplate>
                        <td runat="server" style="">CodProducto:
                            <asp:TextBox ID="CodProductoTextBox" runat="server" Text='<%# Bind("CodProducto") %>' />
                            <br />NombreProducto:
                            <asp:TextBox ID="NombreProductoTextBox" runat="server" Text='<%# Bind("NombreProducto") %>' />
                            <br />PrecioUnitario:
                            <asp:TextBox ID="PrecioUnitarioTextBox" runat="server" Text='<%# Bind("PrecioUnitario") %>' />
                            <br />CantidadEnExistencia:
                            <asp:TextBox ID="CantidadEnExistenciaTextBox" runat="server" Text='<%# Bind("CantidadEnExistencia") %>' />
                            <br />
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insertar" />
                            <br />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Borrar" />
                            <br /></td>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <td runat="server" style="background-color: #FFFBD6;color: #333333;">CodProducto:
                            <asp:Label ID="CodProductoLabel" runat="server" Text='<%# Eval("CodProducto") %>' />
                            <br />&nbsp;<asp:Label ID="NombreProductoLabel" runat="server" Text='<%# Eval("NombreProducto") %>' />
                            <br />$
                            <asp:Label ID="PrecioUnitarioLabel" runat="server" Text='<%# Eval("PrecioUnitario") %>' />
                            <br />Cantidad en existencia:
                            <asp:Label ID="CantidadEnExistenciaLabel" runat="server" Text='<%# Eval("CantidadEnExistencia") %>' />
                            <br />
                            <asp:Button ID="Button1" runat="server" Text="Agregar al Carrito" CommandName="Select" />
                            <br /></td>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                        <tr id="groupPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr runat="server" ID="paginado">
                                <td runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
                                    <asp:DataPager ID="DataPager1" runat="server" PageSize="9">
                                        <Fields>
                                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                        </Fields>
                                    </asp:DataPager>
                                </td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                    <SelectedItemTemplate>
                        <td runat="server" style="background-color: #FFCC66;font-weight: bold;color: #000080;">CodProducto:
                            <asp:Label ID="CodProductoLabel" runat="server" Text='<%# Eval("CodProducto") %>' />
                            <br />NombreProducto:
                            <asp:Label ID="NombreProductoLabel" runat="server" Text='<%# Eval("NombreProducto") %>' />
                            <br />PrecioUnitario:
                            <asp:Label ID="PrecioUnitarioLabel" runat="server" Text='<%# Eval("PrecioUnitario") %>' />
                            <br />CantidadEnExistencia:
                            <asp:Label ID="CantidadEnExistenciaLabel" runat="server" Text='<%# Eval("CantidadEnExistencia") %>' />
                            <br /></td>
                    </SelectedItemTemplate>
                    
                </asp:ListView>
                <asp:SqlDataSource ID="SqlProductos" runat="server" ConnectionString="<%$ ConnectionStrings:ZapateriaConnectionString %>" SelectCommand="SELECT [CodProducto], [NombreProducto], [PrecioUnitario], [CantidadEnExistencia] FROM [Productos] WHERE ([Activo] = @Activo) ORDER BY [CodProducto]">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="true" Name="Activo" Type="Boolean" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
            <asp:Button ID="btnQuitarFiltros" runat="server" OnClick="btnQuitarFiltros_Click" Text="Quitar Filtros" Width="120px" />
        </div>
    </form>
</body>
</html>
