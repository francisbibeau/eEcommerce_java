<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<%@ include file="/layout/header.jsp" %>
</head>
<body>
<div class="page-top-info">
		<div class="container">
			<h4>Se Connecter</h4>
		</div>
	</div>
	<section class="checkout-section spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 order-2 order-lg-1">
					<form method="post" action="controlerLogin" class="checkout-form">
						<div class="cf-title">Compte Utilisateur</div>
						<div class="row address-inputs">
							<div class="col-md-12">							
								<input name="username" type="text" placeholder="Nom d'usager (login)">	
								<input name="password" type="password" placeholder="Mot de passe">
								<input type="hidden" name="login" value="true">	
							</div>
						</div>									
						<button class="site-btn submit-order-btn">Connexion</button>
					</form>
				</div>
			</div>
		</div>
	</section>
</body>
<%@ include file="/layout/footer.jsp" %>
</html>