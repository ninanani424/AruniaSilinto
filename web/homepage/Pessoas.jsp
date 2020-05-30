
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

        <h1 align="center">Gest&atilde;o de Pessoas</h1>

        <%
            String action = request.getParameter("action");

            if (action.equalsIgnoreCase("mostrar")) {

                out.println("<h3 align='center'>Todas as Pessoas</h3>");

                FactoryPessoa fu = new FactoryPessoa();
                List usuarios = new ArrayList<Pessoa>();
                usuarios = fu.selectAll();

                ArrayList<Pessoa> usuarios1 = new ArrayList<Pessoa>();
                usuarios1 = (ArrayList<Pessoa>) usuarios;
                out.println("<div id='client'>");
                out.println("<table border='0' align='center' >");
                out.println("<thead>");
                out.println("<tr>");
                out.println("<th width='150' bgcolor='silver'><h2 align='center'>Nome</h2></th>");
                out.println("<th width='150' bgcolor='silver'><h2 align='center'>Apelido</h2></th>");
                out.println("<th width='100' bgcolor='silver'><h2 align='center'>Sexo</h2></th>");
                out.println("<th width='150' bgcolor='silver'><h2 align='center'>Data de Nasc.</h2></th>");
                out.println("<th width='150' bgcolor='silver'><h2 align='center'>Prov&iacute;ncia de Nasc.</h2></th>");
                out.println("<th width='150' bgcolor='silver'><h2 align='center'>Cidade de Nasc.</h2></th>");
                out.println("<th width='200' bgcolor='silver'><h2 align='center'>Endere&ccedil;o</h2></th>");
                out.println("<th width='150' bgcolor='silver'><h2 align='center'>Telefone</h2></th>");
                out.println("<th width='auto' bgcolor='silver'><h2 align='center'>&nbsp;</h2></td>");
                out.println("</tr>");
                out.println("</thead>");

                for (Pessoa p : usuarios1) {
                    out.println("<tr>");
                    out.println("<td><p align='center'>" + p.getNome() + "</td>");
                    out.println("<td><p align='center'>" + p.getApelido() + "</p></td>");
                    out.println("<td><p align='center'>" + p.getSexo() + "</p></td>");
                    out.println("<td><p align='center'>" + p.getDataNascimento()+ "</p></td>");
                    out.println("<td><p align='center'>" + p.getProvinciaNascimento()+ "</p></td>");
                    out.println("<td><p align='center'>" + p.getCidadeNascimento()+ "</p></td>");
                    out.println("<td><p align='center'>" + p.getEndereco()+ "</p></td>");
                    out.println("<td><p align='center'>" + p.getTelefone()+ "</p></td>");
                    out.println("<td><a href='../homepage/Pessoas.jsp?action=editar&id=" + p.getIdPessoa() + "'><img src='../icons/edit.png' width='40' height='40' alt='Editar Pessoa'/> &nbsp; <a onclick='return confirm('Deseja apagar?')' href='../homepage/Pessoas.jsp?action=apagar&id=" + p.getIdPessoa() + "'><img src='../icons/remove.png' width='40' height='40' alt='Apagar Pessoa'/></td>");
                    out.println("</tr>");
                }
                out.println("</table>");

            } else if (action.equalsIgnoreCase("adicionar")) {

                out.println("<h3 align='center'>Criar nova Pessoa</h3>");

                out.println("<table border='0' align='center' bgcolor='silver'>");
                out.println("<form method='get' action='../homepage/Pessoas.jsp?action=criar'>");
                out.println("<input type='hidden' name='action' value='criar'/>");
                out.println("<tr>");
                out.println("<td width='200'><h2 align='center'>Nome:</h2></td>");
                out.println("<td width='200'><input type='text' name='nome' required/></td>");
                out.println("</tr>");
                out.println("<tr>");
                out.println("<td width='200'><h2 align='center'>Apelido</h2></td>");
                out.println("<td width='200'><input type='text' name='apelido' required/></td>");
                out.println("</tr>");   
                out.println("<tr>");
                out.println("<td width='200'><h2 align='center'>Sexo:</h2></td>");
                out.println("<td width='200'>Masculino<input type='radio' name='sexo' value='masculino' required>");
                out.println("Femelino<input type='radio' name='sexo' value='femenino' required></td>");
                out.println("</tr>");
                out.println("<tr>");
                out.println("<td width='200'><h2 align='center'>Data de Nascimento:</h2></td>");
                out.println("<td width='200'><input type='date' name='dataNascimento' required/></td>");
                out.println("</tr>");
                out.println("<tr>");
                out.println("<td width='200'><h2 align='center'>Prov&iacute;ncia de Nascimento:</h2></td>");
                out.println("<td width='200'><select name='provinciaNascimento'>");
                out.println("<option value='Maputo Cidade'>Maputo Cidade</option>");
                out.println("<option value='Maputo Provincia'>Maputo Provincia</option>");
                out.println("<option value='Gaza'>Gaza</option>");
                out.println("<option value='Inhambane'>Inhambane</option>");
                out.println("<option value='Manica'>Manica</option>");
                out.println("<option value='Sofala'>Sofala</option>");
                out.println("<option value='Tete'>Tete</option>");
                out.println("<option value='Zambezia'>Zambezia</option>");
                out.println("<option value='Nampula'>Nampula</option>");
                out.println("<option value='CaboDelgado'>Cabo Delgado</option>");
                out.println("<option value='Niassa'>Niassa</option>");
                out.println("</select></td>");
                out.println("</tr>");            
                out.println("<tr>");
                out.println("<td width='200'><h2 align='center'>Cidade de Nascimento:</h2></td>");
                out.println("<td width='200'><input type='text' name='cidadeNascimento' required/></td>");
                out.println("</tr>");
                out.println("<tr>");
                out.println("<td width='200'><h2 align='center'>Endere&ccedil;o:</h2></td>");
                out.println("<td width='200'><input type='text' name='endereco' required/></td>");
                out.println("</tr>");
                out.println("<tr>");
                out.println("<td width='200'><h2 align='center'>Telefone:</h2></td>");
                out.println("<td width='200'><input type='number' name='telefone' required/></td>");
                out.println("</tr>");
                out.println("<tr>");
                out.println("<td><input type='reset' value='Limpar'/>");
                out.println("</td>");
                out.println("<td><input type='submit' value='Criar'/>");
                out.println("</td>");
                out.println("</tr>");
                out.println("</table>");

            } else if (action.equalsIgnoreCase("criar")) {

                String nome = request.getParameter("nome");
                String apelido = request.getParameter("apelido");
                String sexo = request.getParameter("sexo");
                String dataNascimento = request.getParameter("dataNascimento");
                String provinciaNascimento = request.getParameter("provinciaNascimento");
                String cidadeNascimento = request.getParameter("cidadeNascimento");
                String endereco = request.getParameter("endereco");
                String telefone = request.getParameter("telefone");

                FactoryPessoa fu = new FactoryPessoa();
                Pessoa c = (Pessoa) fu.newElement();

                c.setNome(nome);
                c.setApelido(apelido);
                c.setSexo(sexo);
                c.setDataNascimento(dataNascimento);
                c.setProvinciaNascimento(provinciaNascimento);
                c.setCidadeNascimento(cidadeNascimento);
                c.setEndereco(endereco);
                c.setTelefone(telefone);

                fu.insert(c);

                response.sendRedirect(request.getContextPath() + "/homepage/Pessoas.jsp?action=mostrar");

            }  else if (action.equalsIgnoreCase("apagar")) {

                String id = request.getParameter("id");

                FactoryPessoa fu = new FactoryPessoa();

                fu.delete(id);

                response.sendRedirect(request.getContextPath() + "/homepage/Pessoas.jsp?action=mostrar&alert=apagar");

            } else if (action.equalsIgnoreCase("editar")) {

                String id = request.getParameter("id");

                FactoryPessoa fu = new FactoryPessoa();

                fu.read(id);

                out.println("");

                FactoryPessoa fu2 = new FactoryPessoa();
                List usuarios2 = new ArrayList<Pessoa>();
                usuarios2 = fu.selectPessoasByPrimaryKey(id);

                ArrayList<Pessoa> usuarios3 = new ArrayList<Pessoa>();
                usuarios3 = (ArrayList<Pessoa>) usuarios2;

                for (Pessoa p : usuarios3) {
                    out.println("<h3 align='center'>Editar Pessoa</h3>");

                    out.println("<table border='0' align='center' bgcolor='silver'>");
                    out.println("<form method='get' action='../homepage/Pessoas.jsp?action=alterar'>");
                    out.println("<input type='hidden' name='action' value='alterar'/>");
                    out.println("<input type='hidden' name='id' value='" + p.getIdPessoa() + "'/>");
                    out.println("<tr>");
                    out.println("<td width='200'><h2 align='center'>Nome:</h2></td>");
                    out.println("<td width='200'><input type='text' name='nome' value='" + p.getNome() + "' required/></td>");
                    out.println("</tr>");
                    out.println("<tr>");
                    out.println("<td width='200'><h2 align='center'>Apelido:</h2></td>");
                    out.println("<td width='200'><input type='text' name='apelido' value='" + p.getApelido()+ "' required/></td>");
                    out.println("</tr>");
                    out.println("<tr>");
                    String sexo1 = "";
                    String sexo2 = "";
                    if (p.getSexo().equalsIgnoreCase("masculino")) {
                        sexo1 = "checked='checked'";
                    } else if (p.getSexo().equalsIgnoreCase("femenino")) {
                        sexo2 = "checked='checked'";
                    }
                    out.println("<td width='200'><h2 align='center'>Sexo:</h2></td>");
                    out.println("<td width='200'>Masculino<input type='radio' name='sexo' value='masculino' " + sexo1 + ">");
                    out.println("Femelino<input type='radio' name='sexo' value='femenino' " + sexo2 + "></td>");
                    out.println("</tr>");
                    out.println("<tr>");
                    out.println("<tr>");
                    out.println("<td width='200'><h2 align='center'>Data de Nascimento:</h2></td>");
                    out.println("<td width='200'><input type='date' name='dataNascimento' value='" + p.getDataNascimento()+ "' required/></td>");
                    out.println("</tr>");
                    
                    String maputoCidade = "";
                    String maputoProvincia = "";
                    String gaza = "";
                    String inhambane = "";
                    String manica = "";
                    String sofala = "";
                    String tete = "";
                    String zambezia = "";
                    String nampula = "";
                    String caboDelgado = "";
                    String niassa = "";
                    
                    if (p.getProvinciaNascimento().equalsIgnoreCase("Maputo Cidade")) {
                        maputoCidade = "selected";
                    } else if (p.getProvinciaNascimento().equalsIgnoreCase("Maputo Provincia")) {
                        maputoProvincia = "selected";
                    } else if (p.getProvinciaNascimento().equalsIgnoreCase("Gaza")) {
                        gaza = "selected";
                    } else if (p.getProvinciaNascimento().equalsIgnoreCase("Inhambane")) {
                        inhambane = "selected";
                    } else if (p.getProvinciaNascimento().equalsIgnoreCase("Manica")) {
                        manica = "selected";
                    } else if (p.getProvinciaNascimento().equalsIgnoreCase("Sofala")) {
                        sofala = "selected";
                    } else if (p.getProvinciaNascimento().equalsIgnoreCase("Tete")) {
                        tete = "selected";
                    } else if (p.getProvinciaNascimento().equalsIgnoreCase("Zambezia")) {
                        zambezia = "selected";
                    } else if (p.getProvinciaNascimento().equalsIgnoreCase("Nampula")) {
                        nampula = "selected";
                    } else if (p.getProvinciaNascimento().equalsIgnoreCase("CaboDelgado")) {
                        caboDelgado = "selected";
                    } else if (p.getProvinciaNascimento().equalsIgnoreCase("Niassa")) {
                        niassa = "selected";
                    }
                    out.println("<td width='200'><h2 align='center'>Prov&iacute;ncia de Nascimento:</h2></td>");
                    out.println("<td width='200'><select name='provinciaNascimento'>");
                    out.println("<option " + maputoCidade + " value='Maputo Cidade'>Maputo Cidade</option>");
                    out.println("<option " + maputoProvincia + " value='Maputo Provincia'>Maputo Provincia</option>");
                    out.println("<option " + gaza + " value='Gaza'>Gaza</option>");
                    out.println("<option " + inhambane + " value='Inhambane'>Inhambane</option>");
                    out.println("<option " + manica + " value='Manica'>Manica</option>");
                    out.println("<option " + sofala + " value='Sofala'>Sofala</option>");
                    out.println("<option " + tete + " value='Tete'>Tete</option>");
                    out.println("<option " + zambezia + " value='Zambezia'>Zambezia</option>");
                    out.println("<option " + nampula + " value='Nampula'>Nampula</option>");
                    out.println("<option " + caboDelgado + " value='CaboDelgado'>Cabo Delgado</option>");
                    out.println("<option " + niassa + " value='Niassa'>Niassa</option>");
                    out.println("</select></td>");
                    out.println("</tr>");
                    out.println("<tr>");
                    out.println("<td width='200'><h2 align='center'>Cidade de Nascimento:</h2></td>");
                    out.println("<td width='200'><input type='text' name='cidadeNascimento' value='" + p.getCidadeNascimento()+ "' required/></td>");
                    out.println("</tr>");
                    out.println("<tr>");
                    out.println("<td width='200'><h2 align='center'>Endere&ccedil;o:</h2></td>");
                    out.println("<td width='200'><input type='text' name='endereco' value='" + p.getEndereco()+ "' required/></td>");
                    out.println("</tr>");
                    out.println("<tr>");
                    out.println("<td width='200'><h2 align='center'>Telefone:</h2></td>");
                    out.println("<td width='200'><input type='number' name='telefone' value='" + p.getTelefone()+ "' required/></td>");
                    out.println("</tr>");
                    out.println("<tr>");
                    out.println("<td>");
                    out.println("</td>");
                    out.println("<td><input type='submit' value='Editar'/>");
                    out.println("</td>");
                    out.println("</tr>");
                    out.println("</table>");
                }

            } else if (action.equalsIgnoreCase("alterar")) {

                int id2 = Integer.parseInt(request.getParameter("id"));
                String nome2 = request.getParameter("nome");
                String apelido2 = request.getParameter("apelido");
                String sexo2 = request.getParameter("sexo");
                String dataNascimento2 = request.getParameter("dataNascimento");
                String provinciaNascimento2 = request.getParameter("provinciaNascimento");
                String cidadeNascimento2 = request.getParameter("cidadeNascimento");
                String endereco2 = request.getParameter("endereco");
                String telefone2 = request.getParameter("telefone");

                FactoryPessoa fu = new FactoryPessoa();
                Pessoa c = (Pessoa) fu.newElement();

                c.setIdPessoa(id2);
                c.setNome(nome2);
                c.setApelido(apelido2);
                c.setSexo(sexo2);
                c.setDataNascimento(dataNascimento2);
                c.setProvinciaNascimento(provinciaNascimento2);
                c.setCidadeNascimento(cidadeNascimento2);
                c.setEndereco(endereco2);
                c.setTelefone(telefone2);

                fu.update(c);

                response.sendRedirect(request.getContextPath() + "/homepage/Pessoas.jsp?action=mostrar");

            }  else if (action.equalsIgnoreCase("procurar")) {

                out.println("<h3 align='center'>Procurar Pessoa</h3>");

                String id = request.getParameter("procurarNome");

                FactoryPessoa fu = new FactoryPessoa();

                fu.read(id);

                out.println("");

                FactoryPessoa fu2 = new FactoryPessoa();
                List usuarios2 = new ArrayList<Pessoa>();
                usuarios2 = fu.selectPessoasByNome(id);

                ArrayList<Pessoa> usuarios3 = new ArrayList<Pessoa>();
                usuarios3 = (ArrayList<Pessoa>) usuarios2;

                if (usuarios3.isEmpty()) {

                    out.println("<br><p align='center' style='color: red'>N&atilde;o foi encontrado nenhum resultado com o o nome:</p> <h1 align='center' style='color: red'>" + id + "</h1>");

                } else {

                    out.println("<div id='client'>");
                out.println("<table border='0' align='center' >");
                out.println("<thead>");
                out.println("<tr>");
                out.println("<th width='150' bgcolor='silver'><h2 align='center'>Nome</h2></th>");
                out.println("<th width='150' bgcolor='silver'><h2 align='center'>Apelido</h2></th>");
                out.println("<th width='100' bgcolor='silver'><h2 align='center'>Sexo</h2></th>");
                out.println("<th width='150' bgcolor='silver'><h2 align='center'>Data de Nasc.</h2></th>");
                out.println("<th width='150' bgcolor='silver'><h2 align='center'>Prov&iacute;ncia de Nasc.</h2></th>");
                out.println("<th width='150' bgcolor='silver'><h2 align='center'>Cidade de Nasc.</h2></th>");
                out.println("<th width='200' bgcolor='silver'><h2 align='center'>Endere&ccedil;o</h2></th>");
                out.println("<th width='150' bgcolor='silver'><h2 align='center'>Telefone</h2></th>");
                out.println("<th width='auto' bgcolor='silver'><h2 align='center'>&nbsp;</h2></td>");
                out.println("</tr>");
                out.println("</thead>");

                for (Pessoa p : usuarios3) {
                    out.println("<tr>");
                    out.println("<td><p align='center'>" + p.getNome() + "</td>");
                    out.println("<td><p align='center'>" + p.getApelido() + "</p></td>");
                    out.println("<td><p align='center'>" + p.getSexo() + "</p></td>");
                    out.println("<td><p align='center'>" + p.getDataNascimento()+ "</p></td>");
                    out.println("<td><p align='center'>" + p.getProvinciaNascimento()+ "</p></td>");
                    out.println("<td><p align='center'>" + p.getCidadeNascimento()+ "</p></td>");
                    out.println("<td><p align='center'>" + p.getEndereco()+ "</p></td>");
                    out.println("<td><p align='center'>" + p.getTelefone()+ "</p></td>");
                    out.println("<td><a href='../homepage/Pessoas.jsp?action=editar&id=" + p.getIdPessoa() + "'><img src='../icons/edit.png' width='40' height='40' alt='Editar Pessoa'/> &nbsp; <a onclick='return confirm('Deseja apagar?')' href='../homepage/Pessoas.jsp?action=apagar&id=" + p.getIdPessoa() + "'><img src='../icons/remove.png' width='40' height='40' alt='Apagar Pessoa'/></td>");
                    out.println("</tr>");
                }
                out.println("</table>");
                }
            }
            


        %>

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