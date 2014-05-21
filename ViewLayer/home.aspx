<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="ViewLayer.home" %>

<%@ Register Src="~/topBarUser.ascx" TagPrefix="uc1" TagName="topBarUser" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/topBarStyle.css" rel="stylesheet" />    
    <link href="css/slippry.css" rel="stylesheet" />
    <link href="css/homeStyle.css" rel="stylesheet" />
    <title></title>

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
    <script type="text/javascript" src="http://ui.lucasmaia.com/ui/ui.js.php?functions=ancora"></script>
    
    <script src="js/jquery.easing.1.3.js"></script>
    <script src="js/slippry.js"></script>
    <script src="js/quicksand.js"></script>
      
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

            var alturaTela = $(window).height();
            $("#tudoTopo").height(alturaTela);
            $("#listaAnuncios").height(alturaTela);    

            // get the action filter option item on page load
            var $filterType = $('#filterOptions li.active a').attr('class');

            // get and assign the listaAnunciosUL element to the
            // $holder varible for use later
            var $holder = $('#listaAnunciosUL');

            // clone all items within the pre-assigned $holder element
            var $data = $holder.clone();

            // attempt to call Quicksand when a filter option
            // item is clicked
            $('#filterOptions li a').click(function (e) {
                // reset the active class on all the buttons
                $('#filterOptions li').removeClass('active');

                // assign the class of the clicked filter option
                // element to our $filterType variable
                var $filterType = $(this).attr('class');
                $(this).parent().addClass('active');
                if ($filterType == 'all') {
                    // assign all li items to the $filteredData var when
                    // the 'All' filter option is clicked
                    var $filteredData = $data.find('li');
                }
                else {
                    // find all li elements that have our required $filterType
                    // values for the data-type element
                    var $filteredData = $data.find('li[data-type=' + $filterType + ']');
                }

                // call quicksand and assign transition parameters
                $holder.quicksand($filteredData, {
                    duration: 800,
                    easing: 'easeInOutQuad'
                });
                return false;
            });       
        })
    </script> 
</head>
<body>
    <form id="form1" runat="server">
        <uc1:topBarUser runat="server" id="topBarUser" />
    <div id="tudoTopo">
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
        
    </div>
        <div id="maisAnuncios">
            <a href="#outrosAnuncios" class="maisAnuncios">
                <img src="images\maisAnunciosBtn.png" />
            </a>
        </div>   
        
        <a name="outrosAnuncios"></a>
            <div id="listaAnuncios">
                <ul id="filterOptions">
                    <li class="active"><a class="all">Todos</a></li>
                    <li><a class="preco">Preço</a></li>
                    <li><a class="marca">Marca</a></li>
                    <li><a class="ano">ano</a></li>
                    <li><a class="categoria">categoria</a></li>
                </ul>   
            
            <ul id="listaAnunciosUL">                                          
                <li class="item" data-id="id-1" data-type="league2">
                    <a href="">
                        <div class="fotoAnuncio">
                        <img src="images/slider/punto.jpg"  class="imagemEsquerda" height="180" width="220"/>
                        </div>
                        <div class="descricaoAnuncio">
                            <p>Legenda</p>
                        </div>
                    </a>
                </li>
                
                
                <li class="item" data-id="id-2" data-type="ano">
                    <a href="">
                        <div class="foto">
                        <img src="images/slider/porsche1.jpg"  class="imagemEsquerda" height="180" width="220"/>                                       
                        </div>
                         <div class="descricaoAnuncio">
                            <p>Legenda</p>
                        </div>
                    </a>
                </li>     
               
                <li data-id="id-3" data-type="ano">
                    <a href="">
                        <div class="foto">
                        <img src="images/slider/mave1.jpg"  class="imagemEsquerda" height="180" width="220"/>
                        </div>
                         <div class="descricaoAnuncio">
                            <p>Legenda</p>
                        </div>
                    </a>
                </li>
                

                <li data-id="id-4" data-type="preco">
                    <a href="">
                        <div class="foto">
                        <img src="images/slider/porsche1.jpg"  class="imagemEsquerda" height="180" width="220"/>
                        </div>
                         <div class="descricaoAnuncio">
                            <p>Legenda</p>
                        </div>
                    </a>       
                </li>
                         
                
                <li data-id="id-5" data-type="ano">
                    <a href="">
                        <div class="foto">
                        <img src="images/slider/porsche1.jpg"  class="imagemEsquerda" height="180" width="220"/>
                        </div>
                         <div class="descricaoAnuncio">
                            <p>Legenda</p>
                        </div>
                    </a>       
                </li>                                
                <li data-id="id-7" data-type="league1">
                    <a href="">
                        <div class="foto">
                        <img src="images/slider/porsche1.jpg"  class="imagemEsquerda" height="180" width="220"/>
                        </div>
                         <div class="descricaoAnuncio">
                            <p>Legenda</p>
                        </div>
                    </a>
                </li>
                
            </ul>
        </div>
    </form>
</body>
</html>
