<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="ViewLayer.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <link href="css/craftyslide.css" rel="stylesheet" />
    <link href="css/homeStyle.css" rel="stylesheet" />
    <title></title>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
    <script src="js/craftyslide.js"></script>
      
    <script>
        $(document).ready(function () {
            $("#slideshow").craftyslide();
        });
    </script> 
</head>
<body>
    <form id="form1" runat="server">
    <div id="tudo">
        <div id="header">
            <div id="pesquisaPrincipal">
                <h1>Pesquise seu carro!</h1>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <br />
            </div>    
            <div id="anuncioPrincipal">
                 <div id="slideshow">
                    <ul>                      
                      <li>                      
                        <img src="images/slider/punto2.jpg" alt="" title="ASDASDASD" class="imagemDireita"/>
                        <img src="images/slider/punto.jpg" alt="" title="" />
                        <p class="legenda" style="display:none" title="Punto TJET 1.4 TURBO"></p>
                      </li>                        
                      <li>
                        <img src="images/slider/fusca2.jpg" alt="" title="Punto TJET 1.4 TURBO" />
                        <img src="images/slider/fusca1.jpg" alt="" title="Punto TJET 1.4 TURBO" />
                          <p class="legenda" style="display:none" title="FUSCA 1966"></p>
                      </li>      
                                             
                </div>                   
            </div>
            <div id="patrocinio">
                <img src="images\friboi.jpg" />
            </div>
        </div>
    </div>
    </form>
</body>
</html>
