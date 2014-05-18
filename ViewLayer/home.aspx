<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="ViewLayer.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <link href="css/slippry.css" rel="stylesheet" />
    <link href="css/homeStyle.css" rel="stylesheet" />
    <title></title>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
    <script src="js/slippry.js"></script>
      
    <script>
        $(document).ready(function () {
            $(function () {
                var slideshow = $("#demo1").slippry({
                    transition: 'fade',
                    useCSS: true,
                    speed: 1000,
                    pause: 3000,
                    auto: true,
                    preload: 'visible'
                });
            });
            
            $('.maisAnuncios a').click(function () {
                var vaiPara = $(this).attr('href').split('#').pop();

                $('html,body').stop().animate({ scrollTop: $(vaiPara).offset().top }, 2000);
                return false;
            });
        });        

    </script> 
</head>
<body>
    <form id="form1" runat="server">
    <div id="tudo">
        <div id="header">
            <div id="pesquisaPrincipal">
                <h1>Pesquise seu carro!</h1>
                <table id="pesquisaTable">
                <tr>
                    <td><asp:Label ID="veiculoLabel" runat="server" Text="Veículo"></asp:Label></td>
                    <td><asp:TextBox ID="veiculoText" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
                </tr>                
                </table>
            </div>    
            <div id="anuncioPrincipal">
                 <div id="slideshowDiV">
                     <ul id="demo1">
				        <li>
                            <a href="#slide1">
                                <img src="images/slider/punto2.jpg" alt="This is caption 1 <a href='#link'>Even with links!</a>" class="imagemEsquerda"/>
                                <img src="images/slider/punto.jpg"  alt="This is caption 2" class="imagemDireita"/>                    
				            </a>
                            <p title="Punto 1.4 Turbo">
				        </li>		
                        <li>
                            <a href="#slide2">
                                <img src="images/slider/mave1.jpg"  class="imagemEsquerda" />
                                <img src="images/slider/mave2.jpg"  alt="This is caption 2" class="imagemDireita" />
				            </a>
                            <p title="MAVERICAO">
				        </li>
                        <li>
                            <a href="#slide2">
                                <img src="images/slider/porsche1.jpg"  class="imagemEsquerda" />
                                <img src="images/slider/porsche2.jpg"  alt="This is caption 2" class="imagemDireita" />
				            </a>
                            <p title="PORSCHE CAYMAN S 3.4 AUTOMATI 2011 - BENTO GONÇALVES">
				        </li> 		
			        </ul>
              </div>
            </div>
            <div id="patrocinio">
                <img src="images\friboi.jpg" />
            </div>           
        </div>        
        <div id="maisAnuncios">
            <a href="#outrosAnuncios" id="#ancoraAnuncios"  class="maisAnuncios">Mais Anuncios</a>
            <img src="css\assets\setaBaixo.png" />
        </div>
                 
            <img src="images/slider/porsche1.jpg"  class="imagemEsquerda" />
                                <img src="images/slider/porsche2.jpg"  alt="This is caption 2" class="imagemDireita" />
            <img src="images/slider/porsche1.jpg"  class="imagemEsquerda" />
                                <img src="images/slider/porsche2.jpg"  alt="This is caption 2" class="imagemDireita" />
            <img src="images/slider/porsche1.jpg"  class="imagemEsquerda" />
                                <img src="images/slider/porsche2.jpg"  alt="This is caption 2" class="imagemDireita" />
        <div id="outrosAnuncios">  
            <img src="images/slider/porsche1.jpg"  class="imagemEsquerda" />
                                <img src="images/slider/porsche2.jpg"  alt="This is caption 2" class="imagemDireita" />

        </div>
    </div>
    </form>
</body>
</html>
