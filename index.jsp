<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.connection.DbCon"%>
    <%@page import="com.model.*"%>
    <%@page import="com.dao.ProductDao"%>
    <%@page import="java.util.*"%>
	 
    <%
    	User auth = (User) request.getSession().getAttribute("auth");
   		if(auth != null){
   			
   			request.setAttribute("auth", auth);
   		}
   		
   		ProductDao pd = new ProductDao(DbCon.getConnection());
   		List<Product> products = pd.getAllProducts();
   		ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
   		
   		if (cart_list != null) {
   			request.setAttribute("cart_list", cart_list);
   		}
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Amazon</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
</head>
<body>
	<%@include file="includes/header.jsp" %>
	
	<div class="container" style="margin-top: 10%">
		<div class="card-header my-3 bg-secondary rounded h4 p-2 text-white">All Products</div>
		<div class="row">
		<%
			if(!products.isEmpty()){
				
				for(Product p:products){%>
					<div class="col-md-3 my-3">
					 <div class="card w-100 h-100">
		  <img class="card-img-top" src="product-images/<%=p.getImage()%>">
		  <div class="card-body">
		    <h5 class="card-title"><%= p.getName() %></h5>
		    <h6 class="price">Price: <%=p.getPrice() %></h6>
		    <h6 class="category">Category: <%=p.getCategory() %></h6>
		    <div class="mt-3 d-flex justify-content-between">
		    <a href="add-to-cart?id=<%=p.getId() %>" class="btn btn-secondary">Add to Cart</a>
		  	<a href="order-now?quantity=1&id=<%=p.getId() %>" class="btn btn-success">Buy Now</a>
		  	</div>
		  </div>
		</div> 
				</div>
				<%}
				
			}
		%>

	</div>
	
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>
</html>