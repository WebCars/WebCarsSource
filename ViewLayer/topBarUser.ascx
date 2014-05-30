﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="topBarUser.ascx.cs" Inherits="ViewLayer.topBarUser" %>

<div class="topBar">
    <div id="logo">
        <h1>WebCars</h1>
    </div>

    <div id="login" class="login" runat="server">
        <p>          
           <asp:HyperLink ID="entrarHyperLink" runat="server" CssClass="text" NavigateUrl="~/login.aspx">Entrar</asp:HyperLink>           |
           <asp:HyperLink ID="registrarHyperLink" runat="server" CssClass="text" NavigateUrl="~/cadastro.aspx">Crie sua conta</asp:HyperLink>          
        </p>
    </div>
    <div id="logado" class="logado" runat="server">
        <asp:Label ID="usuarioLogadoLabel" runat="server" Text="" CssClass="text"></asp:Label>
        <asp:HyperLink ID="painelHyperLink" runat="server">Conta</asp:HyperLink>
        <asp:HyperLink ID="sairHyperLink" runat="server">Sair</asp:HyperLink>
    </div>
</div>

