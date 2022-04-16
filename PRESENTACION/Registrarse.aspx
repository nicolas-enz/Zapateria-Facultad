<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registrarse.aspx.cs" Inherits="PRESENTACION.Registrarse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="CSS/estilo.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="contenedor">
            <div id="texto">
                Email:
                <br />
                <br />
                Clave:
                <br />
                <br />
                Nombre:
                <br />
                <br />
                Apellido:
                <br />
                <br />
                DNI:
                <br />
                <br />
                Telefono:
            </div>
            
            <div id="inputs">
                <asp:TextBox ID="txtEmail" runat="server" Width="210px"></asp:TextBox>*
                <br />
                <br />
                <asp:TextBox ID="txtClave" runat="server" TextMode="Password"></asp:TextBox>*
                <br />
                <br />
                <asp:TextBox ID="txtNombre" runat="server" Width="175px"></asp:TextBox>
                <br />
                <br />
                <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:TextBox ID="txtDNI" runat="server" Width="140px"></asp:TextBox>
                <br />
                <br />
                <asp:TextBox ID="txtTelefono" runat="server" Width="140px"></asp:TextBox>
            </div>
            
            <div id="boton">
                <asp:Button ID="btnRegistrarse" runat="server" Text="Registrarse" Width="110px" OnClick="btnRegistrarse_Click" />
            </div>
            
            <div id="campos">
                * Campos obligatorios
            </div>
        </div>
    </form>
</body>
</html>
