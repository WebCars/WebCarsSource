<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ViewLayer.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="css/loginStyle.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="loginBox">
        <div id="header">
            <asp:HyperLink ID="homeHyperLink" runat="server" NavigateUrl="~/home.aspx">WebCars</asp:HyperLink>
        </div>
        <div id="usuario">
            <asp:Label ID="usuarioLabel" runat="server" Text="Usuário"></asp:Label>
            <asp:TextBox ID="usuarioTextBox" runat="server"></asp:TextBox>
        </div>
        <div id="senha">
            <asp:Label ID="senhaLabel" runat="server" Text="Senha"></asp:Label>
            <asp:TextBox ID="senhaTextBox" runat="server" TextMode="Password"></asp:TextBox>
        </div>        
        <div id="actions">            
            <asp:Button ID="entrarButton" runat="server" Text="Entrar" OnClick="entrarButton_Click"/>
            <asp:HyperLink ID="cadastreHyperLink" runat="server" NavigateUrl="~/cadastro.aspx">Cadastre-se</asp:HyperLink>
        </div>
    </div>
    </form>
</body>
</html>
