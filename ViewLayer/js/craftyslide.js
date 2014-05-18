/*
* Craftyslide
* Created by: Abid Din - http://craftedpixelz.co.uk
* Version: 1.0
* Copyright: Crafted Pixelz
* License: MIT license
* Updated: 7th June 2011
*/

(function ($) {
    $.fn.craftyslide = function (options) {

        // Defaults
        var defaults = {
            "width": 660,
            "height": 240,
            "pagination": true,
            "fadetime": 350,
            "delay": 500
        };
        first = true;

        var options = $.extend(defaults, options);

        return this.each(function () {

            // Vars
            var $this = $(this);
            var $slides = $this.find("ul li");

            $slides.not(':first').hide();

            // Pagination
            function paginate() {
                $this.append("<ol id='pagination' />");
                
                var i = 1;
                $slides.each(function () {
                    $(this).attr("id", "slide" + i);
                    $("#pagination").append("<li><a href='#slide" + i + "'>" + i + "</a></li>");
                    i++;
                });
                
                $("#pagination li a:first").addClass("active");
            }

            // Add captions
            function captions() {
                $slides.each(function () {
                    $caption = $(this).find("p").attr("title");
                    if ($caption !== undefined) {
                        $(this).prepend("<p class='caption'>" + $caption + "</p>");
                    }
                    $slides.filter(":first").find(".caption").css("bottom", 0);
                });
            }

            // Manual mode
            function manual() {
                var $pagination = $("#pagination li a");
                $pagination.click(function (e) {
                    e.preventDefault();
                    var $current = $(this.hash);
                    if ($current.is(":hidden")) {
                        $slides.fadeOut(options.fadetime);
                        $current.fadeIn(options.fadetime);
                        $pagination.removeClass("active");
                        $(this).addClass("active");
                        $(".caption").css("bottom", "-37px");
                        $current.find(".caption").delay(300).animate({
                            bottom: 0
                        }, 300);
                    }
                });               
            }

            // Auto mode
            function auto() {
                setInterval(function () {
                    console.log("1");
                    
                    
                    console.log("2");
                    $paginationClass = $("#pagination li a.active");
                    paginationHref = $paginationClass.attr('href');;
                    href = paginationHref.substring(6, 7);
                    if (href >= $slides.size())
                        href = 0;
                    console.log("3");
                    var $pagination = $("#pagination li a");
                    $pagination.removeClass("active");
                    next = parseInt(href) + 1;
                    str = 'a[href="#slide' + next + '"]';

                    $(str).addClass("active");
                    console.log("5");
                    $slides.each(function () {
                        if ($slides.is(":visible")) {
                            $(".caption").css("bottom", "-37px");
                            $(this).find(".caption").delay(300).animate({
                                bottom: 0
                            }, 300);
                        }
                    });
                    console.log("6");
                    $slides.filter(":first-child").fadeOut(1000);
                    $slides.filter(":first-child").next("li").fadeIn(1000, function () {
                        $slides.filter(":first-child").next("li").end().appendTo("ul", self)
                        auto();
                    });
                }, 1000);
            }
            
            // Width
            $this.width(options.width);
            $this.find("ul li img").each(function () {
                $(this).width(options.width / 2);
                $(this).css("border", "none");
            });

            // Height
            $this.height(options.height);
            $this.find("ul, li").height(options.height);

            // Check Boolean values
            if (options.pagination === true) {
                paginate();
               
            } else {
               
            }
            auto();
            captions(); manual();
            
        });
    };
})(jQuery);