<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="anuncio.aspx.cs" Inherits="ViewLayer.anuncio" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<%@ Register Src="~/topBarUser.ascx" TagPrefix="uc1" TagName="topBarUser" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <title></title>

    <link href="css/anuncioStyle.css" rel="stylesheet" />
	<link type="text/css" href="css/right.css" rel="stylesheet" />	
    
    <script src="js/jquery-min.js"></script>
    <script src="js/ancora.js"></script>
    <script src="js/jquery.jcarousel.min.js"></script>    
    <script src="js/jquery.pikachoose.min.js"></script>
    <script src="js/jquery.touchwipe.min.js"></script>
	<script language="javascript">	   
	    $(document).ready(function () {

	        var alturaTela = $(window).height();
	        $("#primeiraPagina").height(alturaTela);
	        $("#segundaPagina").height(alturaTela);

			    $("#pikame").PikaChoose({
			        carousel: false,
			        carouselVertical: false,
			        hoverPause: true,
			        showCaption: false,
                    text: {previous: "Anterior", next: "Próximo" }
			    });
			});

		
	</script>
</head>
<body>
    <form id="form1" runat="server">
        <uc1:topBarUser runat="server" ID="topBarUser" />
    <div id="tudo">
        <div id="primeiraPagina">
            <div id="anuncioSlider">
               <div class="pikachoose">
               <ul id="pikame" class="jcarousel-skin-pika">
		            <li><img src="images/slider/punto2.jpg"/></><span>This is an example of the basic theme.</span></li>
		            <li><img src="images/slider/punto.jpg"/><span>jCarousel is supported and can be integrated with PikaChoose!</span></li>		        
                    <li><img src="images/slider/punto.jpg"/><span>jCarousel is supported and can be integrated with PikaChoose!</span></li>		        
                    <li><img src="images/slider/punto2.jpg"/><span>jCarousel is supported and can be integrated with PikaChoose!</span></li>		        
                    <li><img src="images/slider/punto2.jpg"/><span>jCarousel is supported and can be integrated with PikaChoose!</span></li>		                       
	            </ul>
                </div>
            </div>
            <div id="titulo">            
                <asp:Label ID="tituloAnuncio" runat="server" Text="PUNTO T-JET 1.4 TURBO 16V PRETO 2011 - CAXIAS DO SUL" CssClass="titulo"></asp:Label>
            </div>            
            <div id="caracteristicas">
                <div id="principal">
                    <div id="botoes">
                        <button ID="propostaButton">Fazer uma proposta</button>
                        <!--<asp:Button ID="propostaButton" runat="server" Text="Fazer uma proposta" UseSubmitBehavior="False" />-->
                    </div>
                    <ul>
                        <li>
                            <asp:Label ID="nrAnuncioLabel" runat="server" Text="Nr Anuncio:"></asp:Label>
                            <asp:Label ID="nrAnuncio" runat="server" Text="123"></asp:Label>
                        </li>            
                        <li>
                            <asp:Label ID="categoriaLabel" runat="server" Text="Categoria:"></asp:Label>
                            <asp:Label ID="categoria" runat="server" Text="Carro"></asp:Label>
                        </li>            
                        <li>
                            <asp:Label ID="marcaLabel" runat="server" Text="Marca:"></asp:Label>
                            <asp:Label ID="marca" runat="server" Text="KIA MOTORS"></asp:Label>
                        </li>            
                        <li>
                            <asp:Label ID="modeloLabel" runat="server" Text="Marca:"></asp:Label>
                            <asp:Label ID="modelo" runat="server" Text="CERATO"></asp:Label>
                        </li>            
                        <li>
                            <asp:Label ID="anoLabel" runat="server" Text="Ano:"></asp:Label>
                            <asp:Label ID="ano" runat="server" Text="2012"></asp:Label>
                        </li>            
                        <li>
                            <asp:Label ID="corLabel" runat="server" Text="Cor:"></asp:Label>
                            <asp:Label ID="cor" runat="server" Text="Cinza"></asp:Label>
                        </li>            
                        <li>
                            <asp:Label ID="precoLabel" runat="server" Text="Preco:"></asp:Label>
                            <asp:Label ID="preco" runat="server" Text="R$ 46.500,00"></asp:Label>
                        </li>            
                        <li>
                            <asp:Label ID="combustivelLabel" runat="server" Text="Combustivel:"></asp:Label>
                            <asp:Label ID="combutivel" runat="server" Text="Gasolina"></asp:Label>
                        </li>            
                        <li>
                            <asp:Label ID="placaLabel" runat="server" Text="Combustivel:"></asp:Label>
                            <asp:Label ID="placa" runat="server" Text="IRY3292"></asp:Label>
                        </li>            
                        <li>
                            <asp:Label ID="quilometragemLabel" runat="server" Text="Quilometragem:"></asp:Label>
                            <asp:Label ID="quilometragem" runat="server" Text="IRY3292"></asp:Label>
                        </li>            
                        <li>
                            <asp:Label ID="CambioLabel" runat="server" Text="Cambio:"></asp:Label>
                            <asp:Label ID="Cambio" runat="server" Text="Manual"></asp:Label>
                        </li>
                    </ul>               
                </div>
             
                <div id="infoAdic">
                    <div id="anunciante">
                        <h2>Sobre o Anunciante</h2>
                        Peruzzo Veículos 
                        Av. Presidente Vargas, 1661
                        Bairro Centro
                        NOVA PRATA
                        Telefones: (54)3242-1385 | (54)9972-2580
                        peruzzo@peruzzoveiculos.com.br
                        www.peruzzoveiculos.com.br
                        Horário de atendimento: 08:30 às 11:55 / 13:30 às 18:30
                    </div>
                    <div id="opcionais">
                        <h2>Opcionais</h2>
                        Air Bag Duplo, Alarme, Ar Condicionado, Ar Quente, Cd Player, Computador de Bordo, Desembaçador Traseiro, Direção Hidráulica, Farol Neblina, Freio Abs, Retrovisores Elétricos, Rodas Liga Leve, Travas Elétricas, Vidros Verdes, Vidros Elétricos.
                    </div>
                </div>
             </div>
            <div id="segundaPagina">
                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
                <ajaxToolkit:ModalPopupExtender ID="MPE" runat="server"
                     TargetControlID="propostaButton"
                     PopupControlID="proposta"
                     BackgroundCssClass="modalBackground" 
                     DropShadow="true"  >                  
                 </ajaxToolkit:ModalPopupExtender>

                

                <div id="proposta">
                    <table>
                        
                    <tr><td><asp:Label ID="nomeLabel" runat="server" Text="Nome"></asp:Label></td>
                    <td><asp:TextBox ID="nomeTextBox" runat="server"></asp:TextBox></td></tr>
                    
                    <tr><td><asp:Label ID="cidadeLabel" runat="server" Text="Cidade"></asp:Label></td>
                    <td><asp:TextBox ID="cidadeTextBox" runat="server"></asp:TextBox></td></tr>

                    <tr><td><asp:Label ID="telefoneLabel" runat="server" Text="Telefone"></asp:Label></td>
                    <td><asp:TextBox ID="telefoneTextBox" runat="server"></asp:TextBox></td></tr>

                    <tr><td><asp:Label ID="celularLabel" runat="server" Text="Celular"></asp:Label></td>
                    <td><asp:TextBox ID="celularTextBox" runat="server"></asp:TextBox></td></tr>

                    <tr><td><asp:Label ID="emailLabel" runat="server" Text="Email"></asp:Label></td>
                    <td><asp:TextBox ID="emailTextBox" runat="server"></asp:TextBox></td></tr>

                    <tr><td><asp:Label ID="propostaLabel" runat="server" Text="Proposta"></asp:Label></td>
                    <td><asp:TextBox id="propostaTextArea" TextMode="multiline" Columns="50" Rows="5" runat="server" /></td></tr>

                    </table>

                </div>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
