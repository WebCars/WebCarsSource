<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ViewLayer.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="usuarioLabel" runat="server" Text="Usuário"></asp:Label>
        <asp:TextBox ID="usuarioTextBox" runat="server"></asp:TextBox>
        <asp:Label ID="senhaLabel" runat="server" Text="Senha"></asp:Label>
        <asp:TextBox ID="senhaTextBox" runat="server"></asp:TextBox>
        <asp:Button ID="entrarButton" runat="server" Text="Entrar" />
    </div>
    </form>
</body>
</html>
