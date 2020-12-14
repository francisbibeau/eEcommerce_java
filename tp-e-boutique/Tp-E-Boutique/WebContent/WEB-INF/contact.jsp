<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html>
<head>
<title>contact</title>
<meta charset="ISO-8859-1">
<%@ include file="/layout/header.jsp"%>
</head>
<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Header section -->



	<!-- Header section end -->


	<!-- Page info -->
	<div class="page-top-info">
		<div class="container">
			<h4>Contact</h4>
			<div class="site-pagination">
				<a href="controlerAcceuil">Home</a> / <a href="">Contact</a>
			</div>
		</div>
	</div>
	<!-- Page info end -->


	<!-- Contact section -->
	<section class="contact-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 contact-info">
					<h3>Get in touch</h3>
					<p>255 Crémazie Est bureau 100 Montréal, Québec H2M 1M2
						Courriel : info@isi-mtl.com</p>
					<p>+514 842 2426</p>
					<p>musicouteuxg@contact.com</p>
					<div class="contact-social">
						<a href="#"><i class="fa fa-pinterest"></i></a> <a href="#"><i
							class="fa fa-facebook"></i></a> <a href="#"><i
							class="fa fa-twitter"></i></a> <a href="#"><i
							class="fa fa-dribbble"></i></a> <a href="#"><i
							class="fa fa-behance"></i></a>
					</div>
					<form class="contact-form">
						<input type="text" placeholder="Your name"> <input
							type="text" placeholder="Your e-mail"> <input type="text"
							placeholder="Subject">
						<textarea placeholder="Message"></textarea>
						<button class="site-btn">SEND NOW</button>
					</form>
				</div>
			</div>
		</div>
		
	</section>
	<!-- Contact section end -->


	

	<%@ include file="/layout/footer.jsp"%>
</html>