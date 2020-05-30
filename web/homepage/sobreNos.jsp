
<%@page import="java.util.List"%>
<%@page import="metodos.FactoryPessoa"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelo.Pessoa"%>
<!DOCTYPE html>
<html lang="en">
    <!-- Basic -->

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <!-- Mobile Metas -->
        <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

        <!-- Site Metas -->
        <title>Sistema de Gest&atilde;o de Pessoas</title>
        <meta name="keywords" content="">
        <meta name="description" content="">
        <meta name="author" content="">

        <!-- Site Icons -->
        <link rel="shortcut icon" href="#" type="image/x-icon" />
        <link rel="apple-touch-icon" href="#" />

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="../homepage/css/bootstrap.min.css" />
        <!-- Pogo Slider CSS -->
        <link rel="stylesheet" href="../homepage/css/pogo-slider.min.css" />
        <!-- Site CSS -->
        <link rel="stylesheet" href="../homepage/css/style.css" />
        <!-- Responsive CSS -->
        <link rel="stylesheet" href="../homepage/css/responsive.css" />
        <!-- Custom CSS -->
        <link rel="stylesheet" href="../homepage/css/custom.css" />

        <link rel="stylesheet" href="../homepage/css/sobreNos.css" />

        <link href="https://fonts.googleapis.com/css?family=Fira+Sans+Condensed:300,400,600i&display=swap" rel="stylesheet">

    </head>

    <body id="home" data-spy="scroll" data-target="#navbar-wd" data-offset="98">

        <!-- LOADER -->
        <div id="preloader">
            <div class="loader">
                <img src="../homepage/images/loader.gif" alt="#" />
            </div>
        </div>
        <!-- end loader -->
        <!-- END LOADER -->
        <!-- Start header -->
        <header class="top-header">
            <nav class="navbar header-nav navbar-expand-lg">
                <div class="container-fluid">
                    <a class="navbar-brand" href="../homepage/indexProject.jsp"><img src="../homepage/img/arunialogohome.png" alt="image" width="350" height="100"></a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-wd" aria-controls="navbar-wd" aria-expanded="false" aria-label="Toggle navigation">
                        <span></span>
                        <span></span>
                        <span></span>
                    </button>
                    <div class="collapse navbar-collapse justify-content-end" id="navbar-wd">
                        <ul class="navbar-nav">
                            <li><a class="nav-link active" href="../homepage/indexProject.jsp">P&aacute;gina Inicial</a></li>
                            <li><a class="nav-link" href="../homepage/Pessoas.jsp?action=adicionar">Nova Pessoa</a></li>
                            <li><a class="nav-link" href="../homepage/Pessoas.jsp?action=mostrar">Mostrar Todas Pessoas</a></li>                                                             
                            <li><a class="nav-link active" style="background:#f2184f;color:#fff;" href="../homepage/sobreNos.jsp">Sobre N&oacute;s</a></li>                           
                        </ul>
                    </div>
                    <div class="search-box">
                        <form name="procurar" action="../homepage/Pessoas.jsp?action=procurar">
                            <input type="hidden" name="action" value="procurar"/>
                            <input type="text" class="search-txt" name="procurarNome" placeholder="Procurar Nome da Pessoa">
                            <a class="search-btn">
                                <img src="../homepage/images/search_icon.png" alt="#" />
                            </a>
                        </form>
                    </div>
                </div>
            </nav>
        </header>
        <!-- End header -->
        <br/><br/><br/><br/><br/>
        <!-- Start Banner -->

        <p style="margin-left: 20px"><a href="../homepage/indexProject.jsp"><img src="../icons/back.png" width="30" height="30" alt="Voltar"/> Voltar</a></p>

        <h1 align="center">Sobre N&oacute;s</h1>


        <div class="infocardContainer">
            <div id="main">
                <img src="https://upload.wikimedia.org/wikipedia/commons/e/ea/Dog_coat_variation.png"></img>
            </div>
            <div id="textbois">
                <h2 style="color: black">Arunia Ol&iacute;mpio</h2>
                <h4 style="color: black">Desenvolvedora de Software</h4>
                <a href="mailto:ninanani424@gmail.com"  style="color: black">ninanani424@gmail.com</a>
                <div id="hotlinks">
                    <a href="https://www.facebook.com/aruniaesperanca.nina"><img id="codepenio" src="../icons/fblogo.png" target="_blank"></img>
                    </a>
                    <a href="https://codepen.io/LIMESTA">
                        <img id="codepenio" src="../icons/gitlogo.png" target="_blank"></img>
                    </a>
                    <a href="#">
                        <img id="codepenio" src="../icons/googlelogo.png" target="_blank"></img>
                    </a>
                </div>
            </div>  
        </div>
        <div class="infocardContainer">
            <div id="main">
                <img src="https://upload.wikimedia.org/wikipedia/commons/e/ea/Dog_coat_variation.png"></img>
            </div>
            <div id="textbois">
                <h2 style="color: black">Silinto</h2>
                <h4 style="color: black">Engenheiro de Software</h4>
                <a href="mailto:limecicila@gmail.com"  style="color: black">limecicila@gmail.com</a>
                <div id="hotlinks">
                    <a href="https://codepen.io/LIMESTA"><img id="codepenio" src="../icons/fblogo.png" target="_blank"></img>
                    </a>
                    <a href="https://codepen.io/LIMESTA">
                        <img id="codepenio" src="../icons/gitlogo.png" target="_blank"></img>
                    </a>
                    <a href="#">
                        <img id="codepenio" src="../icons/googlelogo.png" target="_blank"></img>
                    </a>
                </div>
            </div>  
        </div>

        <br/><br/>

        <!-- End Banner -->

        <!-- section --><!-- end section -->

        <!-- section -->
        <div class="section dark_bg">
            <div class="container-fluid">
                <div class="row"></div>
            </div>
        </div>

        <!-- Start Footer -->
        <footer class="footer-box">
            <div class="container">
                <div class="row"></div>

            </div>
        </footer>
        <!-- End Footer -->

        <div class="footer_bottom">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <p class="crp">© 2020 Arunia e Silinto . Todos os direitos reservados.</p>
                        <ul class="bottom_menu">
                            <li><a href="#">Advanced Software Engineering</a></li>
                            <li><a href="#">UCM</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <a href="#" id="scroll-to-top" class="hvr-radial-out"><i class="fa fa-angle-up"></i></a>

        <!-- ALL JS FILES -->
        <script src="../homepage/js/jquery.min.js"></script>
        <script src="../homepage/js/popper.min.js"></script>
        <script src="../homepage/js/bootstrap.min.js"></script>
        <!-- ALL PLUGINS -->
        <script src="../homepage/js/jquery.magnific-popup.min.js"></script>
        <script src="../homepage/js/jquery.pogo-slider.min.js"></script>
        <script src="../homepage/js/slider-index.js"></script>
        <script src="../homepage/js/smoothscroll.js"></script>
        <script src="../homepage/js/form-validator.min.js"></script>
        <script src="../homepage/js/contact-form-script.js"></script>
        <script src="../homepage/js/isotope.min.js"></script>
        <script src="../homepage/js/images-loded.min.js"></script>
        <script src="../homepage/js/custom.js"></script>
        <script>
            /* counter js */

            (function ($) {
                $.fn.countTo = function (options) {
                    options = options || {};

                    return $(this).each(function () {
                        // set options for current element
                        var settings = $.extend({}, $.fn.countTo.defaults, {
                            from: $(this).data('from'),
                            to: $(this).data('to'),
                            speed: $(this).data('speed'),
                            refreshInterval: $(this).data('refresh-interval'),
                            decimals: $(this).data('decimals')
                        }, options);

                        // how many times to update the value, and how much to increment the value on each update
                        var loops = Math.ceil(settings.speed / settings.refreshInterval),
                                increment = (settings.to - settings.from) / loops;

                        // references & variables that will change with each update
                        var self = this,
                                $self = $(this),
                                loopCount = 0,
                                value = settings.from,
                                data = $self.data('countTo') || {};

                        $self.data('countTo', data);

                        // if an existing interval can be found, clear it first
                        if (data.interval) {
                            clearInterval(data.interval);
                        }
                        data.interval = setInterval(updateTimer, settings.refreshInterval);

                        // initialize the element with the starting value
                        render(value);

                        function updateTimer() {
                            value += increment;
                            loopCount++;

                            render(value);

                            if (typeof (settings.onUpdate) == 'function') {
                                settings.onUpdate.call(self, value);
                            }

                            if (loopCount >= loops) {
                                // remove the interval
                                $self.removeData('countTo');
                                clearInterval(data.interval);
                                value = settings.to;

                                if (typeof (settings.onComplete) == 'function') {
                                    settings.onComplete.call(self, value);
                                }
                            }
                        }

                        function render(value) {
                            var formattedValue = settings.formatter.call(self, value, settings);
                            $self.html(formattedValue);
                        }
                    });
                };

                $.fn.countTo.defaults = {
                    from: 0, // the number the element should start at
                    to: 0, // the number the element should end at
                    speed: 1000, // how long it should take to count between the target numbers
                    refreshInterval: 100, // how often the element should be updated
                    decimals: 0, // the number of decimal places to show
                    formatter: formatter, // handler for formatting the value before rendering
                    onUpdate: null, // callback method for every time the element is updated
                    onComplete: null       // callback method for when the element finishes updating
                };

                function formatter(value, settings) {
                    return value.toFixed(settings.decimals);
                }
            }(jQuery));

            jQuery(function ($) {
                // custom formatting example
                $('.count-number').data('countToOptions', {
                    formatter: function (value, options) {
                        return value.toFixed(options.decimals).replace(/\B(?=(?:\d{3})+(?!\d))/g, ',');
                    }
                });

                // start all the timers
                $('.timer').each(count);

                function count(options) {
                    var $this = $(this);
                    options = $.extend({}, options || {}, $this.data('countToOptions') || {});
                    $this.countTo(options);
                }
            });
        </script>
    </body>

</html>