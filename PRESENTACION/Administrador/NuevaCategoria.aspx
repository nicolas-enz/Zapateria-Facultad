<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NuevaCategoria.aspx.cs" Inherits="PRESENTACION.AdministradorNuevaCategoria" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="Estilos/estiloNuevo.css" />
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
                Descripcion:
            </div>
            
            <div class="txt">
                <asp:TextBox ID="txtDescripcion" runat="server" Width="170px"></asp:TextBox>
            </div>
            
            <div class="btn">
                <asp:Button ID="btnAgregar" runat="server" Text="Agregar" Width="100px" OnClick="btnAgregar_Click" />
            </div>       
        </div>
    </form>
</body>
</html>
