<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
			<h4>Informations de Paiement</h4>
		</div>
	</div>
	<section class="checkout-section spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 order-2 order-lg-1">
					<form class="checkout-form">
						<div class="cf-title">Addresse de Facturation</div>
						<div class="row">
							<div class="col-md-7">
								<p>*Information de Facturation</p>
							</div>						
						</div>
						<div class="row address-inputs">
							<div class="col-md-12">
								<input type="text" placeholder="Addresse"> 
								<input type="text" placeholder="Ville"> 							
							</div>
							<div class="col-md-6">
								<input type="text" placeholder="Code Postal">
							</div>
							<div class="col-md-6">
								<input type="text" placeholder="No. Telephone">
							</div>
							<div class="col-md-12">
								<input type="text" placeholder="Pays"> 							
							</div>
						</div>
						<div class="filter-widget mb-0">
						<div class="row">
							<div class="col-md-7">
								<p>*Veuiller choisir un mode de paiement</p>
							</div>						
						</div>
						<div class="fw-size-choose">
							<div class="sc-item">
								<input type="radio" name="modePaiement" id="mastercard">
								<label for="mastercard">Mastercard</label>
							</div>
							<div class="sc-item">
								<input type="radio" name="modePaiement" id="visa">
								<label for="visa">Visa</label>
							</div>
							<div class="sc-item">
								<input type="radio" name="modePaiement" id="paypal">
								<label for="paypal">Paypal</label>
							</div>
						</div>
					</div>
						<div class="cf-title">Information de Livraison</div>
						<div class="row address-inputs">
							<div class="col-md-12">
								<input type="text" placeholder="Addresse"> 
								<input type="text" placeholder="Ville"> 							
							</div>
							<div class="col-md-6">
								<input type="text" placeholder="Code Postal">
							</div>
							<div class="col-md-6">
								<input type="text" placeholder="No. Telephone">
							</div>
							<div class="col-md-12">
								<input type="text" placeholder="Pays"> 							
							</div>
						</div>										
						<button class="site-btn submit-order-btn">Soummettre votre Commande</button>
					</form>
				</div>
				<div class="col-lg-4 order-1 order-lg-2">
					<div class="checkout-cart">
						<h3>Panier</h3>
						<ul class="product-list">
							<li>
								<div class="pl-thumb">
									<img src="img/product/corde/guitarElec2.jpg" alt="">
								</div>
								<h6>Guitare Electrique</h6>
								<p>$450.90</p>
							</li>
							<li>
								<div class="pl-thumb">
									<img src="img/product/accessoire/cableGuitar1.jpg" alt="">
								</div>
								<h6>Cable de Guitare</h6>
								<p>$45.90</p>
							</li>
							<li>
								<div class="pl-thumb">
									<img src="img/product/accessoire/accordeurGuitar1.jpg" alt="">
								</div>
								<h6>Accordeur de guitare</h6>
								<p>$45.90</p>
							</li>
						</ul>
						<ul class="price-list">
							<li>Total<span>$99.90</span></li>
							<li>Shipping<span>free</span></li>
							<li class="total">Total<span>$99.90</span></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
<%@ include file="/layout/footer.jsp"%>
</html>