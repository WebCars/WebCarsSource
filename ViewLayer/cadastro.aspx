<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cadastro.aspx.cs" Inherits="ViewLayer.cadastro" validateRequest="false"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cadastro</title>
    <link href="css/cadastroStyle.css" rel="stylesheet" />
    <script src="js/cidades-estados-1.2-utf8.js"></script>
    <script type="text/javascript">
    window.onload = function() {
      new dgCidadesEstados({
        estado: document.getElementById('estado'),
        cidade: document.getElementById('cidade'),
        estadoVal: '<%=Request.QueryString["estado"] %>',
        cidadeVal: '<%=Request.QueryString["cidade"] %>'
      });
    }

    </script>
</head>
<body>
    <form id="form1" runat="server">
       <div id="cadastreBox">
        <div id="header">
            <asp:HyperLink ID="homeHyperLink" runat="server" NavigateUrl="~/home.aspx">WebCars</asp:HyperLink>
        </div>
        <!-- NOME -->
        <div id="campos">
            <div id="none">
                <asp:Label ID="noneLabel" runat="server" Text="Usuário"></asp:Label>
                <asp:TextBox ID="noneTextBox" runat="server"></asp:TextBox>
            </div>
            <!-- SENHA -->
            <div id="senha">
                <asp:Label ID="senhaLabel" runat="server" Text="Senha"></asp:Label>
                <asp:TextBox ID="senhaTextBox" runat="server" TextMode="Password"></asp:TextBox>
            </div>        
            <!-- CONFIRMAR SENHA -->
            <div id="senha2">
                <asp:Label ID="senha2Label" runat="server" Text="Confirmar Senha"></asp:Label>
                <asp:TextBox ID="senha2TextBox" runat="server" TextMode="Password"></asp:TextBox>
            </div>        
            <!-- CPF -->
            <div id="cpf">
                <asp:Label ID="cpfLabel" runat="server" Text="Cpf"></asp:Label>
                <asp:TextBox ID="cpfTextBox" runat="server" ></asp:TextBox>
            </div>          
            <!-- ESTADO -->
            <div id="estadoDiv">
                <label>Estado</label>
                <select id="estado" name="estado" ></select>            
            </div>  
            <!-- CIDADE -->
            <div id="cidadeDiv">
                <label>Cidade</label>
                <select id="cidade" name="cidade"></select>
            </div>  
            <!-- AÇÕES -->
            <div id="actions">                            
                <asp:HyperLink ID="loginHyperLink" runat="server" NavigateUrl="~/Login.aspx">Ja possui uma conta?</asp:HyperLink>
                <asp:Button ID="cadastrarButton" runat="server" Text="Cadastrar" />
            </div>
        </div>
    </div>
    </form>
</body>
</html>
