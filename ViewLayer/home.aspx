    <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="ViewLayer.home" %>

<%@ Register Src="~/topBarUser.ascx" TagPrefix="uc1" TagName="topBarUser" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/topBarStyle.css" rel="stylesheet" />    
    <link href="css/slippry.css" rel="stylesheet" />
    <link href="css/homeStyle.css" rel="stylesheet" />
    <title></title>
    <script src="js/jquery-min.js"></script>
    
    <script type="text/javascript" src="js/ancora.js"></script>
    
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
    <div id="all">
        <div id="tudoTopo">
            <div id="header">
                <div id="pesquisaPrincipal">
                    <h1>Pesquisa rápida!</h1>
                    <table id="pesquisaTable">
                    <tr>
                        <td align="right"><asp:Label ID="veiculoLabel" runat="server" Text="Veículo" CssClass="labelPesquisa"></asp:Label></td>
                        <td><asp:TextBox ID="veiculoText" runat="server"  cssClass="boxPesquisa"></asp:TextBox></td>
                    </tr>
                        <td align="right"><asp:Label ID="categoriaLabel" runat="server" Text="Categoria" CssClass="labelPesquisa" ></asp:Label></td>
                        <td><asp:DropDownList ID="categoriaDropDownList1" runat="server" cssClass="boxPesquisa"></asp:DropDownList>                        
                    <tr>
                        <td align="right"><asp:Label ID="maracaLabel" runat="server" Text="Marca" CssClass="labelPesquisa"></asp:Label></td>
                        <td><asp:DropDownList ID="marcaDropDownList" runat="server" cssClass="boxPesquisa"></asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td align="right"><asp:Label ID="anoLabel" runat="server" Text="Ano" CssClass="labelPesquisa" ></asp:Label></td>
                        <td><asp:DropDownList ID="anoInicialDropDownList1" runat="server" cssClass="boxPesquisa"></asp:DropDownList>
                        a <asp:DropDownList ID="anoFinalDropDownList2" runat="server" cssClass="boxPesquisa"></asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td align="right"><asp:Label ID="Label4" runat="server" Text="Preço" CssClass="labelPesquisa"></asp:Label></td>
                        <td><asp:TextBox ID="precoInicialTextBox" runat="server" Width="80px" placeholder="R$" cssClass="boxPesquisa"></asp:TextBox>
                        a <asp:TextBox ID="precoFinalTextbox" runat="server" Width="80px" placeholder="R$" cssClass="boxPesquisa"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="right"><asp:Label ID="cidadeLabel" runat="server" Text="Cidade" CssClass="labelPesquisa"></asp:Label></td>                        
                        <td><asp:DropDownList ID="cidadeDropDownList" runat="server" CssClass="boxPesquisa"></asp:DropDownList></td>
                    </tr>                
                    <tr>
                        <td align="right"><asp:Label ID="estadoLabel" runat="server" Text="Estado   " CssClass="labelPesquisa"></asp:Label></td>                        
                        <td><asp:DropDownList ID="estadoDropDownList" runat="server" CssClass="boxPesquisa"></asp:DropDownList></td>
                    </tr>                
                    </table>
                    <asp:Button ID="pesquisarButton" runat="server" Text="Pesquisar"/>
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
            <a href="#outrosAnuncios" class="maisAnuncios">
                <div id="maisAnuncios">                                                
                    <p>Destaques</p>
                </div>           
             </a>                
            <a name="outrosAnuncios"></a>                           
            <div id="outrosAnuncios">
                 <div id="filtroDiv">                    
                    <ul id="filterOptions">
                        <li class="descricaoFiltro">Filtro</li>
                        <li class="active"><a class="all">Destaques</a></li>
                        <li><a class="preco">Preço</a></li>
                        <li><a class="marca">Marca</a></li>
                        <li><a class="ano">ano</a></li>
                        <li><a class="categoria">categoria</a></li>
                    </ul>   
                </div>
                <div id="listaAnuncios">
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
                    </ul>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
