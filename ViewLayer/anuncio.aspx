<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="anuncio.aspx.cs" Inherits="ViewLayer.anuncio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <title></title>

    <link href="css/anuncioStyle.css" rel="stylesheet" />
    <link href="css/supersized.css" rel="stylesheet" />
    
    	
	<link rel="stylesheet" href="css/supersized.shutter.css" media="screen" />
		
    <script src="js/jquery-min.js"></script>
	<script src="js/jquery.easing.min.js"></script>		
	<script src="js/supersized.3.2.7.min.js"></script>    
	<script src="theme/supersized.shutter.min.js"></script>
		
	<script type="text/javascript">

		jQuery(function ($) {

		    $.supersized({

		        // Functionality
		        slideshow: 1,			// Slideshow on/off
		        autoplay: 1,			// Slideshow starts playing automatically
		        start_slide: 1,			// Start slide (0 is random)
		        stop_loop: 0,			// Pauses slideshow on last slide
		        random: 0,			// Randomize slide order (Ignores start slide)
		        slide_interval: 3000,		// Length between transitions
		        transition: 6, 			// 0-None, 1-Fade, 2-Slide Top, 3-Slide Right, 4-Slide Bottom, 5-Slide Left, 6-Carousel Right, 7-Carousel Left
		        transition_speed: 1000,		// Speed of transition
		        new_window: 1,			// Image links open in new window/tab
		        pause_hover: 0,			// Pause slideshow on hover
		        keyboard_nav: 1,			// Keyboard navigation on/off
		        performance: 1,			// 0-Normal, 1-Hybrid speed/quality, 2-Optimizes image quality, 3-Optimizes transition speed // (Only works for Firefox/IE, not Webkit)
		        image_protect: 1,			// Disables image dragging and right click with Javascript

		        // Size & Position						   
		        min_width: 0,			// Min width allowed (in pixels)
		        min_height: 0,			// Min height allowed (in pixels)
		        vertical_center: 1,			// Vertically center background
		        horizontal_center: 1,			// Horizontally center background
		        fit_always: 0,			// Image will never exceed browser width or height (Ignores min. dimensions)
		        fit_portrait: 1,			// Portrait images will not exceed browser height
		        fit_landscape: 0,			// Landscape images will not exceed browser width

		        // Components							
		        slide_links: 'blank',	// Individual links for each slide (Options: false, 'num', 'name', 'blank')
		        thumb_links: 1,			// Individual thumb links for each slide
		        thumbnail_navigation: 1,			// Thumbnail navigation
		        slides: [			// Slideshow Images
													{ image: 'images/slider/punto2.jpg', thumb: 'images/slider/punto2.jpg'},
													{ image: 'images/slider/punto.jpg', title: 'Image Credit: Maria Kazvan', thumb: 'images/slider/punto.jpg', url: 'http://www.nonsensesociety.com/2011/04/maria-kazvan/' },
													
													
		        ],

		        // Theme Options			   
		        progress_bar: 1,			// Timer for each slide							
		        mouse_scrub: 0

		    });
		});

	</script>
		
</head>
<body>
    <form id="form1" runat="server">
    <div id="tudo">
        <div id="anuncioSlider">
              <div id="imageSlider">

	        </div>
            <!--Thumbnail Navigation-->
	        <div id="prevthumb"></div>
	        <div id="nextthumb"></div>
	
	        <!--Arrow Navigation-->
	        <a id="prevslide" class="load-item"></a>
	        <a id="nextslide" class="load-item"></a>
	
	        <div id="thumb-tray" class="load-item">
		       
	        </div>
	      
	        <!--Time Bar-->
	        <div id="progress-back" class="load-item">
		        <div id="progress-bar"></div>
	        </div>
	
	        <!--Control Bar-->
	        
        </div>
        <div id="titulo">
            <h2>PORSCHE CAYMAN S 3.4 AUTOMATI 2011 - BENTO GONÇALVES</h2>
        </div>
        <div id="caracteristicas">
            <div id="principal">
            
                <asp:Label ID="nrAnuncioLabel" runat="server" Text="Nr Anuncio:"></asp:Label>
                <asp:Label ID="nrAnuncio" runat="server" Text="123"></asp:Label>
            
                <asp:Label ID="categoriaLabel" runat="server" Text="Categoria:"></asp:Label>
                <asp:Label ID="categoria" runat="server" Text="Carro"></asp:Label>
            
                <asp:Label ID="marcaLabel" runat="server" Text="Marca:"></asp:Label>
                <asp:Label ID="marca" runat="server" Text="KIA MOTORS"></asp:Label>
            
                <asp:Label ID="modeloLabel" runat="server" Text="Marca:"></asp:Label>
                <asp:Label ID="modelo" runat="server" Text="CERATO"></asp:Label>
            
                <asp:Label ID="anoLabel" runat="server" Text="Ano:"></asp:Label>
                <asp:Label ID="ano" runat="server" Text="2012"></asp:Label>
            
                <asp:Label ID="corLabel" runat="server" Text="Cor:"></asp:Label>
                <asp:Label ID="cor" runat="server" Text="Cinza"></asp:Label>
            
                <asp:Label ID="precoLabel" runat="server" Text="Preco:"></asp:Label>
                <asp:Label ID="preco" runat="server" Text="R$ 46.500,00"></asp:Label>
            
                <asp:Label ID="combustivelLabel" runat="server" Text="Combustivel:"></asp:Label>
                <asp:Label ID="combutivel" runat="server" Text="Gasolina"></asp:Label>
            
                <asp:Label ID="placaLabel" runat="server" Text="Combustivel:"></asp:Label>
                <asp:Label ID="placa" runat="server" Text="IRY3292"></asp:Label>
            
                <asp:Label ID="quilometragemLabel" runat="server" Text="Quilometragem:"></asp:Label>
                <asp:Label ID="quilometragem" runat="server" Text="IRY3292"></asp:Label>
            
                <asp:Label ID="CambioLabel" runat="server" Text="Cambio:"></asp:Label>
                <asp:Label ID="Cambio" runat="server" Text="Manual"></asp:Label>
                        
            </div>
            <div id="opcionais">
                Air Bag Duplo, Alarme, Ar Condicionado, Ar Quente, Cd Player, Computador de Bordo, Desembaçador Traseiro, Direção Hidráulica, Farol Neblina, Freio Abs, Retrovisores Elétricos, Rodas Liga Leve, Travas Elétricas, Vidros Verdes, Vidros Elétricos.
            </div>
            <div id="anunciante">
                Peruzzo Veículos 
                Av. Presidente Vargas, 1661
                Bairro Centro
                NOVA PRATA
                Telefones: (54)3242-1385 | (54)9972-2580
                peruzzo@peruzzoveiculos.com.br
                www.peruzzoveiculos.com.br
                Horário de atendimento: 08:30 às 11:55 / 13:30 às 18:30
            </div>
        </div>
    </div>
    </form>
</body>
</html>
