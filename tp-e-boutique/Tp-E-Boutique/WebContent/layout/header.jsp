<%@page import="model.entites.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%
User user = (User)session.getAttribute("user");
%>
<!DOCTYPE html>
    <html>
        <head>
            <title>E-Commerce TP</title>
            <meta charset="UTF-8">
            <meta name="description" content=" Divisima | eCommerce Template">
            <meta name="keywords" content="divisima, eCommerce, creative, html">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <!-- Favicon -->
            <link href="img/favicon.ico" rel="shortcut icon"/>

            <!-- Google Font -->
            <link href="https://fonts.googleapis.com/css?family=Josefin+Sans:300,300i,400,400i,700,700i" rel="stylesheet">


            <!-- Stylesheets -->
            <link rel="stylesheet" href="css/bootstrap.min.css"/>
            <link rel="stylesheet" href="css/font-awesome.min.css"/>
            <link rel="stylesheet" href="css/flaticon.css"/>
            <link rel="stylesheet" href="css/slicknav.min.css"/>
            <link rel="stylesheet" href="css/jquery-ui.min.css"/>
            <link rel="stylesheet" href="css/owl.carousel.min.css"/>
            <link rel="stylesheet" href="css/animate.css"/>
            <link rel="stylesheet" href="css/style.css"/>

        </head>
        <body>

            <!-- Header section -->
            <header class="header-section " >
                <div class="header-top">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-2 text-center text-lg-left">
                                <!-- logo -->
                                <a href="acceuil.jsp" class="site-logo">
                                    <img src="img/logo.png" alt="">
                                </a>
                            </div>
                            <div class="col-xl-6 col-lg-5">
                                <form class="header-search-form">
                                    <input type="text" placeholder="Recherche de produit ...">
                                    <button><i class="flaticon-search"></i></button>
                                </form>
                            </div>
                            <div class="col-xl-4 col-lg-5">
                                <div class="user-panel">
                                    <div class="up-item">
                                        <i class="flaticon-profile"></i>
                                        
                                        <%
                                        if(user != null){
                                        	%>
                                        	<a href="controlerAcceuil">
                                        	Bonjour <%=user.getUser_firstname() + " " + user.getUser_lastname() %>
                                        	</a>
                                        	<%
                                        }
                                        else {
                                        	%><a href="controlerLogin">Se Connecter</a> / <a href="controlerInscription">S'inscrire</a> <%
                                        }
                                        %>
                                        
                                    </div>
                                    <div class="up-item">
                                        <div class="shopping-card">
                                            <i class="flaticon-bag"></i>
                                            <span>0</span>
                                        </div>
                                        <a href="controlerPanier">Panier D'achat</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="text-center">
                    <nav class="main-navbar">
                        <div class="container">
                            <!-- menu -->
                            <ul class="main-menu">
                                <li><a style="font-size:30px" href="controlerAcceuil">Acceuil</a></li>
                                <li><a style="font-size:30px" href="controlerProduit">Produits</a></li>
                                <li><a style="font-size:30px" href="controlerPanier">Panier</a></li>
                                <li><a style="font-size:30px" href="controlerProduit">Categories</a>
                                <li><a style="font-size:30px" href="controlerContact">Contact</a></li>
                                    <ul class="sub-menu">
                                        <li><a href="controlerProduit?categorie_id=1">A VENT</a></li>
                                        <li><a href="controlerProduit?categorie_id=2">CORDE</a></li>
                                        <li><a href="controlerProduit?categorie_id=3">PERCUSSIONS</a></li>
                                        <li><a href="controlerProduit?categorie_id=4">ACCESSOIRES</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </header>
        </body>
    </html>
</head>
</html>