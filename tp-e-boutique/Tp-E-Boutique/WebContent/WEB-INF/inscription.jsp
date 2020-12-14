<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
	String messageErreur = (String) request.getAttribute("wrongMDP");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<%@ include file="/layout/header.jsp"%>
</head>
<body>
	<div class="page-top-info">
		<div class="container">
			<h4>Information d'inscription</h4>
		</div>
	</div>
	<section class="checkout-section spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 order-2 order-lg-1">
					<form class="checkout-form" method="post">
						<div class="cf-title">Donnees relative au compte</div>
						<div class="row">
							<div class="col-md-7">
								<p>*Informations obligatoire pour la creation du compte</p>
							</div>
						</div>
						<div class="row address-inputs">
							<div class="col-md-12">
								<p class="text-danger">
									<%
										if (messageErreur != null) {
									%>
									<%=messageErreur%>
									<%
										}
									%>
								</p>
								<input type="text" name="title" placeholder="titre"> <input
									type="text" name="Nom" placeholder="Nom"> <input
									type="text" name="Prenom" placeholder="Prenom"> <input
									type="text" name="login" placeholder="Nom d'usager (login)">
								<input type="text" name="Courriel" placeholder="Courriel">
								<input type="password" name="mdp" placeholder="Mot de passe">
								<input type="password" name="verifieMdp"
									placeholder="Verification du mot de passe">
							</div>
						</div>
						<button class="site-btn submit-order-btn">Soummettre
							votre Inscription</button>
					</form>
				</div>
			</div>
		</div>
	</section>
</body>
<%@ include file="/layout/footer.jsp"%>
</html>