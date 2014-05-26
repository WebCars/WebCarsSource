<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="topBarUser.ascx.cs" Inherits="ViewLayer.topBarUser" %>

<div class="topBar">
    <div id="logo">
        <h1>WebCars</h1>
    </div>
    <div id="login">
        <p>
           <asp:HyperLink ID="entrarHyperLink" runat="server" CssClass="text" NavigateUrl="~/login.aspx">Entrar</asp:HyperLink>
           |
           <asp:HyperLink ID="registrarHyperLink" runat="server" CssClass="text">Crie sua conta</asp:HyperLink>
        </p>
    </div>
    <div id="logado">
        <asp:Label ID="usuarioLogadoLabel" runat="server" Text="" CssClass="text"></asp:Label>
    </div>
</div>