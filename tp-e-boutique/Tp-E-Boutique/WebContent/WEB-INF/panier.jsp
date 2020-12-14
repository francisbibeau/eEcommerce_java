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
			<h4>Votre Panier</h4>
		</div>
	</div>

	<section class="cart-section spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					<div class="cart-table">
						<h3>Panier</h3>
						<div class="cart-table-warp">
							<table>
								<thead>
									<tr>
										<th class="product-th">Produit</th>
										<th class="quy-th">Quantiter</th>
										<th class="total-th">Prix</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="product-col"><img src="img/product/corde/guitarElec2.jpg" alt="">
											<div class="pc-title">
												<h4>Guitare Electrique</h4>
												<p>$450.90</p>
											</div></td>
										<td class="quy-col">
											<div class="quantity">
												<div class="pro-qty">
													<input type="text" value="1">
												</div>
											</div>
										</td>
										<td class="total-col"><h4>$450.90</h4></td>
									</tr>
									<tr>
										<td class="product-col"><img src="img/product/accessoire/cableGuitar1.jpg" alt="">
											<div class="pc-title">
												<h4>Cable de Guitare</h4>
												<p>$45.90</p>
											</div></td>
										<td class="quy-col">
											<div class="quantity">
												<div class="pro-qty">
													<input type="text" value="1">
												</div>
											</div>
										</td>
										<td class="total-col"><h4>$45.90</h4></td>
									</tr>
									<tr>
										<td class="product-col"><img src="img/product/accessoire/accordeurGuitar1.jpg" alt="">
											<div class="pc-title">
												<h4>Accordeur de guitare</h4>
												<p>$45.90</p>
											</div></td>
										<td class="quy-col">
											<div class="quantity">
												<div class="pro-qty">
													<input type="text" value="1">
												</div>
											</div>
										</td>
										<td class="total-col"><h4>$45.90</h4></td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="total-cost">
							<h6>
								Total <span>$999.90</span>
							</h6>
						</div>
					</div>
				</div>
				<div class="col-lg-4 card-right">
					<a href="controlerPaiement" class="site-btn">Proceder au Paiement</a> 
					<a href="controlerProduit"class="site-btn sb-dark">Continuer a Magasiner</a>
				</div>
			</div>
		</div>
	</section>
</body>
<%@ include file="/layout/footer.jsp"%>
</html>