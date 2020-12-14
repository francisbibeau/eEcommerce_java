<%@page import="model.entites.Produit"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%
ArrayList<Produit> produits = (ArrayList<Produit>)request.getAttribute("listeProduit");

%>
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
			<h4> Nos Produits</h4>
		</div>
	</div>
<section class="category-section spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 order-2 order-lg-1">
					<div class="filter-widget">
						<h2 class="fw-title">Categories</h2>
						<ul class="category-menu">
							<li><a href="#">A Cordes</a>	</li>
							<li><a href="#">Percussion</a></li>		
							<li><a href="#">A Vent</a></li>	
							<li><a href="#">Accesoires</a></li>								
						</ul>
					</div>
					<div class="filter-widget mb-0">						
					</div>										
					<div class="filter-widget">				
					</div>
				</div>
				<div class="col-lg-9  order-1 order-lg-2 mb-5 mb-lg-0">
					<div class="row">
						<div class="col-lg-4 col-sm-6">
							<div class="product-item">
								<div class="pi-pic">
									<img src="img/product/corde/guitarElec1.jpg" alt="">
									<div class="pi-links">
										<a href="controlerPanier" class="add-card"><i class="flaticon-bag"></i><span>AJOUTER</span></a>
									</div>
								</div>
								<div class="pi-text">
									<h6>$350,00</h6>
									<p>Guitare Electrique</p>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-sm-6">
							<div class="product-item">
								<div class="pi-pic">
									<img src="img/product/percussion/drumset1.jpg" alt="">
									<div class="pi-links">
										<a href="controlerPanier" class="add-card"><i class="flaticon-bag"></i><span>AJOUTER</span></a>
									</div>
								</div>
								<div class="pi-text">
									<h6>$400,00</h6>
									<p>Drumset</p>
								</div>
							</div>
						</div>	
						
						<% 
						for(Produit produit : produits){
							%>
							<div class="col-lg-4 col-sm-6">
							<div class="product-item">
								<div class="pi-pic">
									<img src="<%=(produit.getUrlImage() == null ?"img/product/corde/template.jpg" : produit.getUrlImage())%>" alt="<%=produit.getName()%>">
									<div class="pi-links">
										<a href="controlerPanier" class="add-card"><i class="flaticon-bag"></i><span>AJOUTER</span></a>
									</div>
								</div>
								<div class="pi-text">
									<h6><%=(produit.getPrix() + "") %></h6>
									<p><%=(produit.getName()) %></p>
								</div>
							</div>
						</div>	
							<%
						}
						%>
						
						
						
						<div class="col-lg-4 col-sm-6">
							<div class="product-item">
								<div class="pi-pic">
									<img src="img/imgTempalte.png" alt="">
									<div class="pi-links">
										<a href="controlerPanier" class="add-card"><i class="flaticon-bag"></i><span>AJOUTER</span></a>
									</div>
								</div>
								<div class="pi-text">
									<h6>$400,00</h6>
									<p>Drumset</p>
								</div>
							</div>
						</div>								
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
<%@ include file="/layout/footer.jsp" %>
</html>