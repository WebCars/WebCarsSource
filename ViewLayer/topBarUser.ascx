<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="topBarUser.ascx.cs" Inherits="ViewLayer.topBarUser" %>
<link href="css/topBarStyle.css" rel="stylesheet" />    
<div class="topBar">
    
    <div id="logo">
        <h1><a href="home.aspx">WebCars</a></h1>
    </div>

    <div id="login" class="login" runat="server">
        <p>          
           <asp:HyperLink ID="entrarHyperLink" runat="server" CssClass="text" NavigateUrl="~/login.aspx">Entrar</asp:HyperLink>           |
           <asp:HyperLink ID="registrarHyperLink" runat="server" CssClass="text" NavigateUrl="~/cadastro.aspx">Crie sua conta</asp:HyperLink>          
        </p>
    </div>
    <div id="logado" class="logado" runat="server">
        <asp:Label ID="usuarioLogadoLabel" runat="server" Text="" CssClass="text"></asp:Label>     
        <asp:LinkButton ID="painelLink" runat="server">Conta</asp:LinkButton>
        <asp:LinkButton ID="sairLink" runat="server" OnClick="sairLink_Click">Sair</asp:LinkButton>           
        
    </div>
</div>

