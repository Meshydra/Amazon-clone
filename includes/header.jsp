<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
	<style>

*{
	font-family: sans-serif;
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}
		/*Heading style*/
header
{
 
   
   
}
.navbar{
    height: 100px;
    display: flex;
    flex-direction: row;
    justify-content: space-between;
    background-color:rgba(34, 33, 33, 0.993);
    align-items: center;
    
     
}

.left
{
    background-color:blue;
	width: 5rem;
	height: 5rem;
    margin-left: 20px;
    
}

.Amazon-logo
{
    width : 100%;
    height: 100%;
}

.center
{
    display: flex;
    justify-content: center;
    align-items: center;

    flex:1;
}

.search-bar
{
    height: 40px;
    width: 50%;
    outline: none;
    border: none;
    font-size: 20px;
    
}

.search-btn
{
    height:40px;
    width: 40px;
    border:none;
    outline: none;
    background-color: rgb(255, 196, 0);
}
.searchbtn-image
{
    height: 56%;
    width: 100%;
}

.right
{
    
    display: flex;
	justify-content: space-between;
    align-items: center;
    margin-right: 20px;
    width: 20%;
    
   
}

.right a{
color: white;
text-decoration: none;
}

.shopping-cart
{
    position:relative;
}

.cart-image
{
    width: 2rem;
}

		
</style>
	
	<header>
            <div class="navbar mb-5">
            <div class="left">
                <img class="Amazon-logo" src="https://seeklogo.com/images/A/amazon-dark-logo-01F3CFFF03-seeklogo.com.png" alt="">
            </div>

            <div class="center">
                <input class="search-bar" type="text">
                <button class="search-btn"><img class="searchbtn-image" src="https://cdn-icons-png.flaticon.com/128/54/54481.png" alt=""></button>
            </div>

            <div class="right">
            	<div class="home">
            		<a href="index.jsp">Home</a>
            	</div>
            	
            	<%if(auth != null){%>
            		<div class="Logout">
            		<a href="Log-out">Logout</a>
            	</div>
            	
            	<div class="orders">
        		<a href="orders.jsp">Orders</a>
        	</div>
            		
            	<%}else{%>
            		<div class="Login">
            		<a href="Login.jsp">Login</a>
            	</div>
            	<%}
            	
            	%>
	
            	
            
            
                <div class="shopping-cart">
                    <a href="cart.jsp" class="Cart-icon position-relative"><img class="cart-image" src="https://creazilla-store.fra1.digitaloceanspaces.com/icons/3269376/red-shopping-cart-icon-md.png" alt=""></a>
                    <div class="order-Quantity "><label class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">${cart_list.size()}</label></div>
                </div>
            </div>
        </div>
        </header>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>