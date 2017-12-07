<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="es">
    <head>
        <title>Mesa de ayuda UdeC</title>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Responsive meta -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- IE Compatibility meta -->
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <!-- Description meta -->
        <meta name="description" content="...">
        <!-- Page Title -->
        <title>Italiano Restaurante</title>
        <!-- Favicon -->
        <link rel="shortcut icon" href="<c:url value='/italiano/css/favicon.ico' />">

        <!-- Bootstrap -->
        <link rel="stylesheet" href="<c:url value='/italiano/css/bootstrap.min.css' />">
        <!-- Custom font icons -->
        <link rel="stylesheet" href="https://file.myfontastic.com/6AeAYiqp5KBjSiZ2tE8WJW/icons.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <!-- Slider -->
        <link rel="stylesheet" href="<c:url value='/italiano/css/slider.min.css' />">
        <!-- Lightbox Pop up -->
        <link rel="stylesheet" href="<c:url value='/italiano/css/lightbox.min.css' />">
        <!-- Datepicker -->
        <link rel="stylesheet" href="<c:url value='/italiano/css/datepicker.min.css' />">
        <!-- Datepicker -->
        <link rel="stylesheet" href="<c:url value='/italiano/css/timepicki.min.css' />">
        <!-- Owl Carousel -->
        <link rel="stylesheet" href="<c:url value='/italiano/css/owl.carousel.min.css' />">
        <!-- Custom CSS -->
        <link rel="stylesheet" href="<c:url value='/italiano/css/style.default.css' />">
        <!-- Modernizr -->
        <script type="text/javascript" src="<c:url value='/italiano/js/modernizr.custom.79639.min.js' />"></script>

        <style>
          #mapRegistro {
            height: 400px;
            width: 100%;
           }
        </style>
    </head>
    <body>

        <div class="page-holder">
            <!-- Navbar -->
            <header class="header">
                <nav class="navbar navbar-default navbar-fixed-top">
                    <div class="container">
                        <div class="navbar-header"><a href="index.html" class="navbar-brand"><img src="<c:url value='/italiano/img/logo.png' />" alt="Italiano" width="100"></a>
                            <div class="navbar-buttons">
                                <button type="button" data-toggle="collapse" data-target=".navbar-collapse" class="navbar-toggle navbar-btn">Menu<i class="fa fa-align-justify"></i></button>
                            </div>
                        </div>
                        <div id="navigation" class="collapse navbar-collapse navbar-right">
                            <ul class="nav navbar-nav">
                                <li class="active"><a href="#hero">Inicio</a></li>
                                <li><a href="#about">Conócenos</a></li>
                                <li><a href="#menu">Menú</a></li>
                                <li><a href="#gallery">Galería</a></li>
                                <li><a href="#booking">Reservación</a></li>
                                <li><a href="#contact">Contacto</a></li>
                            </ul>
                            <a href="#" class="btn navbar-btn btn-unique hidden-sm hidden-xs" id="open-reservation">Pedir</a>
                        </div>
                    </div>
                </nav>
            </header><!-- End Navbar -->



            <!-- Hero Section -->
            <section id="hero" class="hero">
                <div id="slider" class="sl-slider-wrapper">

                    <div class="sl-slider">
                        <!-- slide -->
                        <div class="sl-slide bg-1" data-orientation="horizontal" data-slice1-rotation="-25" data-slice2-rotation="-25" data-slice1-scale="2" data-slice2-scale="2">
                            <div class="sl-slide-inner" style="background-image: url(italiano/img/hero-bg.jpg);">
                                <div class="container">
                                    <h2><span class="text-primary"></span></h2>
                                    <h1>Italiano Restaurante</h1>
                                    <p>El lugar que encantará tu paladar al mejor estilo italiano.</p>
                                </div>
                            </div>
                        </div>
                        <!-- slide -->
                        <div class="sl-slide bg-3" data-orientation="horizontal" data-slice1-rotation="3" data-slice2-rotation="3" data-slice1-scale="2" data-slice2-scale="1">
                            <div class="sl-slide-inner" style="background-image: url(italiano/img/hero-bg03.jpg);">
                                <div class="container">
                                    <h2>Visita <span class="text-primary">italiano restaurante</span></h2>
                                    <h1>No podrás resistir</h1>
                                    <p>Los mejores sabores para disfrutar en familia, pareja o amigos.</p>
                                </div>
                            </div>
                        </div>
                    </div><!-- End sl-slider -->

                    <!-- slider pagination -->
                    <nav id="nav-dots" class="nav-dots">
                        <span class="nav-dot-current"></span>
                        <span></span>
                    </nav>

                    <!-- scroll down btn -->
                    <a id="scroll-down" href="#about" class="hidden-xs"></a>

                    <!-- social icons menu -->
                    <div class="social">
                        <div class="wrapper">
                            <ul class="list-unstyled">
                                <li><a href="#" title="facebook" target="_blank"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#" title="twitter" target="_blank"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#" title="pinterest" target="_blank"><i class="fa fa-pinterest"></i></a></li>
                                <li><a href="#" title="instagram" target="_blank"><i class="fa fa-instagram"></i></a></li>
                            </ul>
                            <span>Follow us on</span>
                        </div>
                    </div>
                </div><!-- End slider-wrapper -->
            </section><!-- End Hero Section -->



            <!-- Details -->
            <section id="details" class="details">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="heading text-center">
                                <p>Llámanos ahora para</p>
                                <h5>Servicio a Domicilio</h5>
                            </div>
                            <a href="tel:9870988764" class="phone">312 100 22 33</a>
                        </div>

                        <div class="col-sm-6">
                            <div class="heading text-center">
                                <p>Checa nuestro menú</p>
                                <h5>Menú diario actualizado</h5>
                            </div>
                            <a href="#menu" class="reviews btn-unique"><i class="fa fa-angle-right"></i></a>
                        </div>
                    </div>
                </div>
            </section>
            <!-- End Details-->


            <!-- About Section -->
            <section id="about" class="about">
                <div class="container text-center">
                    <header>
                        <h2>Acerca de nosotros</h2>
                        <h3>Conócenos</h3>
                    </header>
                    <p class="lead">“Italiano Restaurante” es la cadena de restaurantes de comida italiana más grande, innovadora y exitosa de México y para poder llegar al estándar de servicio necesario, mantenemos una política de eficiencia y trato ético y honesto hacia nuestros clientes, colaboradores, proveedores, asociados y a la comunidad en general.
                    </p>
                    <p class="lead">“Italiano Restaurante” llega a tierras Mexicanas en 1997, y a lo largo de estos años se logró tener presencia a lo largo del país. Actualmente cuenta con más de 43 establecimientos, en los cuales se atiende a más de 132,000 familias semanalmente, teniendo el apoyo de cerca de 3,000 colaboradores. Nos consideramos una empresa que trabaja con orgullo y pasión todos los días para poder ganarnos tu cariño y preferencia.
                    </p>
                </div>
            </section>
            <!-- End About Section -->


            <!-- Menu Section -->
            <section id="menu" class="menu">
                <div class="container">
                    <header class="text-center">
                        <h2>Menú del día</h2>
                        <h3 id="diaMenu"></h3>
                    </header>

                    <div class="menu">

                        <!-- Tab panes -->
                        <div class="tab-content">

                            <!-- Breakfast Panel -->
                            <div role="tabpanel" class="tab-pane active" id="breakfast">
                                <div class="row">
                                    <!-- item -->
                                    <div class="col-sm-6">
                                        <div class="menu-item recommended has-border clearfix">
                                            <div class="item-details pull-left">
                                                <h5>Wild Mushroom Bucatini with Kale</h5>
                                                <p>Mushroom / Veggie / White Sources</p>
                                            </div>
                                            <div class="item-price pull-right">
                                                <strong class="text-large text-primary">20$</strong>
                                                <span class="text-medium">Recommended</span>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- item -->
                                    <div class="col-sm-6">
                                        <div class="menu-item recommended has-border clearfix">
                                            <div class="item-details pull-left">
                                                <h5>Lemon and Garlic Green Beans</h5>
                                                <p>Lemon / Garlic / Beans</p>
                                            </div>
                                            <div class="item-price pull-right">
                                                <strong class="text-large text-primary">20$</strong>
                                                <span class="text-medium">Recommended</span>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- item -->
                                    <div class="col-sm-6">
                                        <div class="menu-item clearfix">
                                            <div class="item-details pull-left">
                                                <h5>LambBeef Kofka Skewers with Tzatziki</h5>
                                                <p>Lamb / Wine / Butter</p>
                                            </div>
                                            <div class="item-price pull-right">
                                                <strong class="text-large text-primary">20$</strong>

                                            </div>
                                        </div>
                                    </div>
                                    <!-- item -->
                                    <div class="col-sm-6">
                                        <div class="menu-item clearfix">
                                            <div class="item-details pull-left">
                                                <h5>Meatloaf with Black Pepper-Honey BBQ</h5>
                                                <p>Pepper / Chicken / Honey</p>
                                            </div>
                                            <div class="item-price pull-right">
                                                <strong class="text-large text-primary">20$</strong>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- item -->
                                    <div class="col-sm-6">
                                        <div class="menu-item clearfix">
                                            <div class="item-details pull-left">
                                                <h5>Imported Oysters Grill (5 Pieces)</h5>
                                                <p>Oysters / Veggie / Ginger</p>
                                            </div>
                                            <div class="item-price pull-right">
                                                <strong class="text-large text-primary">20$</strong>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- item -->
                                    <div class="col-sm-6">
                                        <div class="menu-item clearfix">
                                            <div class="item-details pull-left">
                                                <h5>Wild Mushroom Bucatini with Kale</h5>
                                                <p>Mushroom / Veggie / White Sources</p>
                                            </div>
                                            <div class="item-price pull-right">
                                                <strong class="text-large text-primary">20$</strong>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- item -->
                                    <div class="col-sm-6">
                                        <div class="menu-item recommended has-border clearfix">
                                            <div class="item-details pull-left">
                                                <h5>Lemon and Garlic Green Beans</h5>
                                                <p>Lemon / Garlic / Beans</p>
                                            </div>
                                            <div class="item-price pull-right">
                                                <strong class="text-large text-primary">20$</strong>
                                                <span class="text-medium">Recommended</span>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- item -->
                                    <div class="col-sm-6">
                                        <div class="menu-item clearfix">
                                            <div class="item-details pull-left">
                                                <h5>Wild Mushroom Bucatini with Kale</h5>
                                                <p>Mushroom / Veggie / White Sources</p>
                                            </div>
                                            <div class="item-price pull-right">
                                                <strong class="text-large text-primary">20$</strong>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- item -->
                                    <div class="col-sm-6">
                                        <div class="menu-item clearfix">
                                            <div class="item-details pull-left">
                                                <h5>LambBeef Kofka Skewers with Tzatziki</h5>
                                                <p>Lamb / Wine / Butter</p>
                                            </div>
                                            <div class="item-price pull-right">
                                                <strong class="text-large text-primary">20$</strong>

                                            </div>
                                        </div>
                                    </div>
                                    <!-- item -->
                                    <div class="col-sm-6">
                                        <div class="menu-item clearfix">
                                            <div class="item-details pull-left">
                                                <h5>Meatloaf with Black Pepper-Honey BBQ</h5>
                                                <p>Pepper / Chicken / Honey</p>
                                            </div>
                                            <div class="item-price pull-right">
                                                <strong class="text-large text-primary">20$</strong>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- item -->
                                    <div class="col-sm-6">
                                        <div class="menu-item clearfix">
                                            <div class="item-details pull-left">
                                                <h5>Imported Oysters Grill (5 Pieces)</h5>
                                                <p>Oysters / Veggie / Ginger</p>
                                            </div>
                                            <div class="item-price pull-right">
                                                <strong class="text-large text-primary">20$</strong>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- item -->
                                    <div class="col-sm-6">
                                        <div class="menu-item clearfix">
                                            <div class="item-details pull-left">
                                                <h5>Wild Mushroom Bucatini with Kale</h5>
                                                <p>Mushroom / Veggie / White Sources</p>
                                            </div>
                                            <div class="item-price pull-right">
                                                <strong class="text-large text-primary">20$</strong>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- End Breakfast Panel-->
                        </div>
                    </div>
                </div>
            </section>
            <!-- End Menu Section -->

            <!-- Gallery Section -->
            <section id="gallery" class="gallery">
                <div class="container text-center">
                    <header>
                        <h2>Nuestra galería</h2>
                        <h3>Descubre la galería de fotos</h3>
                    </header>

                    <div class="gellery">
                        <div class="row">
                            <!-- Item -->
                            <div class="col-md-3 col-sm-4 col-xs-6 col-xs-6 col-custom-12">
                                <div class="item">
                                    <img src="<c:url value='/italiano/img/bg01-small.jpg' />" alt="image">
                                    <a href="<c:url value='/italiano/img/bg01.jpg' />" data-lightbox="image-1" data-title="Comida del día" class="has-border">
                                        <span class="icon-search"></span>
                                    </a>
                                </div>
                            </div>
                            <!-- Item -->
                            <div class="col-md-3 col-sm-4 col-xs-6 col-custom-12">
                                <div class="item">
                                    <img src="<c:url value='/italiano/img/bg02-small.jpg' />" alt="image">
                                    <a href="<c:url value='/italiano/img/bg02.jpg' />" data-lightbox="image-1" data-title="Comida del día" class="has-border">
                                        <span class="icon-search"></span>
                                    </a>
                                </div>
                            </div>
                            <!-- Item -->
                            <div class="col-md-3 col-sm-4 col-xs-6 col-custom-12">
                                <div class="item">
                                    <img src="<c:url value='/italiano/img/bg03-small.jpg' />" alt="image">
                                    <a href="<c:url value='/italiano/img/bg03.jpg' />" data-lightbox="image-1" data-title="Comida del día" class="has-border">
                                        <span class="icon-search"></span>
                                    </a>
                                </div>
                            </div>
                            <!-- Item -->
                            <div class="col-md-3 col-sm-4 col-xs-6 col-custom-12">
                                <div class="item">
                                    <img src="<c:url value='/italiano/img/bg-small.jpg' />" alt="image">
                                    <a href="<c:url value='/italiano/img/bg.jpg' />" data-lightbox="image-1" data-title="Comida del día" class="has-border">
                                        <span class="icon-search"></span>
                                    </a>
                                </div>
                            </div>
                            <!-- Item -->
                            <div class="col-md-3 col-sm-4 col-xs-6 col-custom-12">
                                <div class="item">
                                    <img src="<c:url value='/italiano/img/bg05-small.jpg' />" alt="image">
                                    <a href="<c:url value='/italiano/img/bg05.jpg' />" data-lightbox="image-1" data-title="Comida del día" class="has-border">
                                        <span class="icon-search"></span>
                                    </a>
                                </div>
                            </div>
                            <!-- Item -->
                            <div class="col-md-3 col-sm-4 col-xs-6 col-custom-12">
                                <div class="item">
                                    <img src="<c:url value='/italiano/img/bg06-small.jpg' />" alt="image">
                                    <a href="<c:url value='/italiano/img/bg06.jpg' />" data-lightbox="image-1" data-title="Comida del día" class="has-border">
                                        <span class="icon-search"></span>
                                    </a>
                                </div>
                            </div>
                            <!-- Item -->
                            <div class="col-md-3 col-sm-4 col-xs-6 col-custom-12">
                                <div class="item">
                                    <img src="<c:url value='/italiano/img/bg04-small.jpg' />" alt="image">
                                    <a href="<c:url value='/italiano/img/bg04.jpg' />" data-lightbox="image-1" data-title="Comida del día" class="has-border">
                                        <span class="icon-search"></span>
                                    </a>
                                </div>
                            </div>
                            <!-- Item -->
                            <div class="col-md-3 col-sm-4 col-xs-6 col-custom-12">
                                <div class="item">
                                    <img src="<c:url value='/italiano/img/bg07-small.jpg' />" alt="image">
                                    <a href="<c:url value='/italiano/img/bg07.jpg' />" data-lightbox="image-1" data-title="Comida del día" class="has-border">
                                        <span class="icon-search"></span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- End Gallery Section -->


            <!-- Booking Section -->
            <section id="booking" class="booking">
                <div class="container text-center">
                    <header>
                        <h2>Order your table</h2>
                        <h3>Enjoy your meal at our restaurant</h3>
                    </header>

                    <div class="row">
                        <div class="form-holder col-md-10 col-md-push-1 text-center">
                            <div class="ribbon">
                                <i class="fa fa-star"></i>
                            </div>

                            <h2>Make a reservation</h2>
                            <h3>Book your table now</h3>

                            <form id="booking-form" method="get" action="#">
                                <div class="row">
                                    <div class="col-md-10 col-md-push-1">
                                        <div class="row">
                                            <label for="name" class="col-sm-6 unique">Name
                                                <input name="name" type="text" id="name" required>
                                            </label>
                                            <label for="email" class="col-sm-6 unique">Email
                                                <input name="email" type="email" id="email" required>
                                            </label>
                                            <label for="number" class="col-sm-6 unique">Number
                                                <input name="number" type="text" id="number" required>
                                            </label>
                                            <label for="people" class="col-sm-6 unique">How Many People
                                                <input name="people" type="number" id="people" min="1" required>
                                            </label>
                                            <label for="date" class="col-sm-6 unique">Date
                                                <input name="date" type="text" id="date" class="datepicker-here" data-language='en' required>
                                            </label>
                                            <label for="time" class="col-sm-6 unique">Time
                                                <input name="time" type="text" id="time" class="timepicker" required>
                                            </label>
                                            <label for="request" class="col-sm-12 unique">Special Request
                                                <textarea id="request" name="request" required></textarea>
                                            </label>
                                            <div class="col-sm-12">
                                                <button type="submit" class="btn-unique">Book Now</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </section>
            <!-- End Booking Section -->


            <!-- End Booking Section -->
            <section id="contact" class="contact">
                <div id="map"></div>
                <div class="container text-center">
                    <div class="form-holder">
                        <header>
                            <h2>Contact Us</h2>
                            <h3>Feel free to contact us</h3>
                        </header>

                        <form method="get" action="#" id="contact-form">
                            <div class="row">
                                <label for="user-name" class="col-sm-6 unique">Name
                                    <input type="text" name="username" id="user-name" required>
                                </label>
                                <label for="user-email" class="col-sm-6 unique">Email
                                    <input type="email" name="useremail" id="user-email" required>
                                </label>
                                <label for="message" class="col-sm-12 unique">Your Message
                                    <textarea name="message" id="message" required></textarea>
                                </label>
                                <div class="col-sm-12">
                                    <button type="submit" class="btn-unique" id="submit">Send</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </section>
            <!-- End Booking Section -->


            <!-- Footer -->
            <footer id="mainFooter" class="mainFooter">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4 brief">
                            <div class="header">
                                <img src="<c:url value='/italiano/img/logo-footer.png' />" alt="italiano" width="100">
                            </div>
                            <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
                        </div>

                        <div class="col-md-4 contact">
                            <div class="header">
                                <h6>Contact</h6>
                            </div>
                            <ul class="contact list-unstyled">
                                <li><span class="icon-map text-primary"></span>Basioun, 23 July st, Egypt</li>
                                <li><a href="mailto:Italiano@Company.com"><span class="icon-phone text-primary"></span>Italiano@Company.com</a></li>
                                <li><span class="icon-mail text-primary"></span>9465 7675 294</li>
                                <li><span class="icon-printer text-primary"></span>333-999-666</li>
                            </ul>
                        </div>

                        <div class="col-md-4 newsletter">
                            <div class="header">
                                <h6>Newsletter</h6>
                            </div>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit sed do eiusmo.</p>
                            <form action="#" id="subscribe" class="clearfix">
                                <input type="email" name="subscribtion-email" placeholder="Enter Your Email Address" class="pull-left">
                                <button type="submit" class="btn-unique has-border pull-left">Subscribe</button>
                            </form>
                        </div>
                    </div>

                    <ul class="social list-unstyled list-inline">
                        <li><a href="#" target="_blank" title="Facebook"><i class="fa fa-facebook"></i></a></li>
                        <li><a href="#" target="_blank" title="Twitter"><i class="fa fa-twitter"></i></a></li>
                        <li><a href="#" target="_blank" title="Instagram"><i class="fa fa-instagram"></i></a></li>
                        <li><a href="#" target="_blank" title="Google plus"><i class="fa fa-google-plus"></i></a></li>
                        <li><a href="#" target="_blank" title="Pinterest"><i class="fa fa-pinterest"></i></a></li>
                        <li><a href="#" target="_blank" title="Skype"><i class="fa fa-skype"></i></a></li>
                    </ul>
                </div>

                <div class="copyrights">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-5">
                                <ul class="list-unstyled list-inline">
                                    <li><a href="#">Policy Privacy</a></li>
                                    <li><a href="#">Terms of Use</a></li>
                                    <li><a href="#">Contact</a></li>
                                </ul>
                            </div>

                            <div class="col-sm-7">
                                <p>&copy; 2017 Italiano Restaurant. Template By <a href="https://bootstraptemple.com/" target="_blank">BootstrapTemple.com</a></p>
                                <!-- Please do not remove the backlink to us unless you have purchased the attribution-free license at https://bootstraptemple.com. It is part of the license conditions. Thanks for understanding :) -->
                            </div>
                        </div>
                    </div>
                </div>
            </footer>
            <!-- End Footer -->

            <!-- scroll top btn -->
            <div id="scrollTop" class="btn-unique">
                <i class="fa fa-angle-up"></i>
            </div><!-- end scroll top btn -->


            <!-- moadal booking form -->
            <div class="reservation-overlay hidden-sm hidden-xs">
                <section id="reservation-modal" class="reservation-modal">
                    <div id="close"><i class="icon-close"></i></div>

                    <div class="container">
                        <div class="row">
                            <div class="form-holder col-md-12 text-center">
                                <h2>Regístrate</h2>
                                <h3>Pide platillos ahora mismo</h3>

                                <form id="registrate">
                                    <div class="row">
                                        <div class="col-md-push-1 col-sm-10">
                                            <div class="row">
                                                <label for="cname" class="col-sm-6 unique">Primer nombre
                                                    <input name="primer_nombre" type="text" id="primer_nombre" required>
                                                </label>
                                                <label for="cname" class="col-sm-6 unique">Segundo nombre
                                                    <input name="segundo_nombre" type="text" id="segundo_nombre" required>
                                                </label>
                                                <label for="cname" class="col-sm-6 unique">Apellido paterno
                                                    <input name="apellido_paterno" type="text" id="apellido_paterno" required>
                                                </label>
                                                <label for="cname" class="col-sm-6 unique">Apellido materno
                                                    <input name="apellido_materno" type="text" id="apellido_materno" required>
                                                </label>
                                                <label for="cemail" class="col-sm-6 unique">Correo
                                                    <input name="correo" type="email" id="correo" required>
                                                </label>
                                                <label for="cnumber" class="col-sm-6 unique">Number
                                                    <input name="telefono" type="text" id="telefono" required>
                                                </label>
                                                <label for="cpassword" class="col-sm-6 unique">Contraseña nueva
                                                    <input name="contrasenia" type="password" id="contrasenia" required>
                                                </label>
                                                <label for="cdate" class="col-sm-6 unique">Fecha de nacimiento
                                                    <input name="fecha_nacimiento" type="text" id="fecha_nacimiento" class="datepicker-here" data-language='en' required>
                                                </label>
                                                <label for="domicilio" class="col-sm-12 unique">Domicilio
                                                    <input id="domicilio" type="text" name="domicilio" required>
                                                </label>
                                                <div class="col-sm-12">
                                                    <div id="mapRegistro"></div>
                                                </div>
                                                <div class="col-sm-12">
                                                    <button id="btnRegistrate" class="btn-unique">Registrarme</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </section>
            </div><!-- end modal booking form -->
        </div>



        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
        <script src="<c:url value='/italiano/js/bootstrap.min.js' />"></script>
        <script src="<c:url value='/italiano/js/jquery.ba-cond.min.js' />"></script>
        <script src="<c:url value='/italiano/js/jquery.slitslider.min.js' />"></script>
        <script src="<c:url value='/italiano/js/owl.carousel.min.js' />"></script>
        <script src="<c:url value='/italiano/js/lightbox.min.js' />"></script>
        <script src="<c:url value='/italiano/js/datepicker.min.js' />"></script>
        <script src="<c:url value='/italiano/js/datepicker.en.min.js' />"></script>
        <script src="<c:url value='/italiano/js/timepicki.min.js' />"></script>
        <script src="<c:url value='/italiano/js/jquery.validate.min.js' />"></script>
        <script src="<c:url value='/italiano/js/smooth.scroll.min.js' />"></script>
        <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC0dSWcBx-VghzhzQB6oCMTgeXMOhCYTvk"></script>
        <script src="<c:url value='/italiano/js/map.min.js' />"></script>
        <script src="<c:url value='/italiano/js/script.js' />"></script>
        <script>
            let today = new Date();
            let options = { weekday: 'long', year: 'numeric', month: 'long', day: 'numeric' };
            var marker = null;
            $("#diaMenu").text(today.toLocaleDateString('es-MX', options))
            initMap();

            function initMap() {
                var map = new google.maps.Map(document.getElementById('mapRegistro'), {
                  zoom: 8,
                  center: {lat: 19.241665, lng: -103.726549}
                });
                var geocoder = new google.maps.Geocoder();

                document.getElementById('domicilio').addEventListener('keyup', function() {
                  geocodeAddress(geocoder, map);
                });
              }

              function geocodeAddress(geocoder, resultsMap) {
                var address = document.getElementById('domicilio').value;
                geocoder.geocode({'address': address}, function(results, status) {
                  if (status === 'OK') {
                    resultsMap.setCenter(results[0].geometry.location);
                    marker.map = resultsMap;
                    marker.position = results[0].geometry.location;
                    console.log(marker)
                  } else {
                    alert('No se puede encontrar la dirección debido a: ' + status);
                  }
                });
              }
            $(document).ready(function(){

                $("#registrate").validate({
                    rules: {
                        primer_nombre, correo: {
                            required: true,
                            maxlength: 30,
                            email: true
                        },
                        contrasenia: {
                            required: true,
                            password: true,
                            maxlength: 20
                        },
                        creditcard: {
                            required: true,
                            creditcard: true
                        },
                        telefono: {
                            required: true,
                            maxlength:10,
                            minlength:10,
                            number: true
                        },
                        domicilio: {
                            required: true,
                            maxlength:80
                        },
                        fecha_nacimiento: {
                            required: true,
                            date: true
                        },
                    },
                    messages: {
                        correo: {
                            required: "Ingrese un correo valido, por favor",
                            maxlength: "Tu correo debe de tener maximo 30 caracteres"
                        },
                        contrasenia: {
                            required: "Ingrese una contraseña valida, por favor",
                            maxlength: "Tu contraseña debe de tener maximo 20 caracteres"
                        },
                        creditcard: {
                            required: "Ingrese un número de tarjeta valido, por favor"
                        },
                        telefono: {
                            required: "Ingrese un número de telefono valido, por favor",
                            maxlength: "El número debe de tener 10 numeros",
                            minlength: "El número debe de tener 10 numeros"
                        },
                        domicilio: {
                            required: "Ingrese un domicilio valido, por favor",
                            maxlength: "Tu domicilio debe de tener maximo 80 caracteres"
                        },
                        fecha_nacimiento: {
                            required: "Ingrese una fecha valida con el siguiente formato, mm/dd/aaaa, por favor"
                        },
                    }
                });    
                $("#btnRegistrate").unbind('click').on('click', function(e){
                    e.preventDefault();
                    var settings = {
                      "async": true,
                      "crossDomain": true,
                      "url": "http://localhost:8084/entrega-comida/administrador?action=registrar",
                      "method": "POST",
                      "headers": {
                        "content-type": "application/x-www-form-urlencoded; charset=UTF-8",
                        "cache-control": "no-cache",
                      },
                      "data": {
                        "correo": "aliy@ucol.yl",
                        "contrasenia": "123",
                        "primer_nombre": "José",
                        "segundo_nombre": "Ricardo",
                        "apellido_paterno": "Mendoza",
                        "apellido_materno": "Martínez"
                      }
                    }

                    $.ajax(settings).done(function (response) {
                      console.log(response);
                    });
                })
            });
        </script>
    </body>
</html>
