<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="UserInterface.User"%>
<%@page import="dataBase.dataConnection"%>
<%@page import="Dao.ProductDaoImplement"%>
<%@page import="Dao.UserDaoImplement"%>
<%@page import="UserInterface.Product" %>

<%@page import="java.util.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
  <link rel="stylesheet" href="K:\fontawesome\fontawesome-free-5.13.0-web\fontawesome-free-5.13.0-web\css\all.min.css">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <link rel="stylesheet" href='https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css'>
 <script src="cart.js" async> </script>




<style>
	body{
	   margin:0;
	   font-family:system-ui;
	}
	.parallax, .parallaxl{
	   background-image:url('https://images.alphacoders.com/109/thumb-1920-1095531.jpg');
	   height:max-content;
	   background-attachment:fixed;
	   background-position:center;
	   background-repeat:no-repeat;
	   background-size:cover;

	}

	.page-title{
	   background:rgba(0,0,0,0.5);
	   text-align:center;
	   color:white;
	   padding:50px;
	   font-variant:small-caps;
	   font-size:100px;
	   font-family:fantasy;
	   letter-spacing:20px;
	}

	.sticky{
	   position:fixed;
	   top:0;
	   width:100%;
	}

	.menu{
	  background:#184d47;
	  text-align:right;
	}
	.menu-ul{
	  margin:0;
	  padding:0;
	  display:inline;

	}

	.menu-ul li{
	  font-size:17px;
	  list-style:none;
	  display:inline-block;
	  padding:25px 25px 26px 25px;

	}

	.a-menu, .a-links{
	  text-decoration:none;
	  color:white;
	}

	.menu-ul li:hover{
	   background:#5b8c5a;
	   transform:scale(1.1);
	}
	.search-input{
	   width:250px;
	   border:none;
	   font-size:16px;
	   outline:none;
	   background:transparent;
	   margin:15px 0 0 10px;

	}
	i{
	  font-size:20px;

	  margin:0 10px 0 0;

	}
  .deal .i{
	color:black;
	}
   .cartbutton button{
		float:right;
		color:white;
		padding: 15px 15px;
		margin:10px;
		text-align:center;
		background-color:#184d47;
		border:none;
			
		}
	.cartbutton button:hover{
	   background:#5b8c5a;
	   transform:scale(1.5);
			}

	.deal button{
	  background:transparent;
	  border:1px solid black;
	  outline:none;
	}

	.container, .deals-container{
	  margin:50px 50px 50px 5%;
	  width:90%;
	  text-align:center;
	}
	.categories,  .items{
	   width:max-content;
	   margin:25px;
	   border:1px solid #184d47;
	   border-radius:0 0 50px 50px;
	   display:inline-block;
	}
	.categories:hover, .items:hover{
	   box-shadow:0 0 10px 3px #184d47;
	}

	.item-image{
	   height:200px;
	   width:200px;
	   border-radius:0 0 50px 50px;
	   padding:10px;
	}

	.image-title{
	  text-align:center;
	  padding:10px;
	  font-weight:bold;
	}

	a{
	   text-decoration:none;
	}

	.title{
	   padding:50px;
	   font-size:50px;
	   font-weight:bold;
	   letter-spacing:10px;
	   color:white;
	   background:rgba(0,0,0,0.5);
	}
	.deal{
	   padding:40px;
	   font-size:20px;
	   font-weight:bold;
	   color:black;
	   display:inline-block;
	   margin:20px;
	   max-width:20%;
	   background-color:#e6ffe6;
	   background-image:url('https://www.aramani.in/Content/TrackAppMedia/ContentWrite/3/c5f755e20bb34ef785483dc779f40898-14-06-2019-11-33-39.png');
	  /* background:linear-gradient(120deg,#16817a 20%,#cee397 50%,#16817a 80%);*/
	}
	.coupon-btn{
	  border:1px solid white;
	  color:white;
	  margin:10px;
	  padding:10px;
	  border-radius:20px;
	}
	.coupon-btn:hover{
	  box-shadow:0 0 10px 5px white inset;
	}

	.images{
		display:inline-block;
	}

	.item-image-size{
		height:200px;
		width:300px;
		padding:5px;
	}

	.description{
		margin:20px;
		min-weight:100px;
	}
	.item-select{
	   margin:10px 0 0 0;
	}

	.buynow-btn{
	   border:1px solid #184d47;
	   background:#184d47;
	   padding:5px 15px;
	   border-radius:20px;
	   font-weight:bold;
	   margin-top:10px;
	   color:white;
	}

	.buynow-btn:hover{
		border:1px solid #5b8c5a;
		box-shadow:0 0 10px 5px #5b8c5a inset;
	}

	.parallaxl{
	   background-image:url('https://s-media-cache-ak0.pinimg.com/originals/b8/d1/66/b8d166511de2bd451dce04293111e9a0.jpg');
	}
	.footer{
		background:rgba(0,0,0,0.5);
		text-align:center;
		padding:20px;
	}
	.quick-links{
	   color:white;
	   font-size:20px;
	   font-weight:bold;
	   display:inline-block;
	   min-width:30%;
	}

	.quick-links ul{
	   padding:0;
	}

	.quick-links li{
	   list-style:none;
	   padding:10px;
	   font-weight:300;
	  
	}
	.a-links:hover{
	   color:#fd5e53;
	}
	.dropdown {
	  float:right;
	  overflow: hidden;
	}

	.dropdown .dropbtn {
	  cursor: pointer;
	  font-size: 17px;  
	  border: none;
	  outline: none;
	  color: white;
	  padding: 22px 16px;
	  background-color: inherit;
	  font-family: inherit;
	  margin: 0;
	}
	.dropdown:hover .dropbtn, .dropbtn:focus {
	  background-color: #5b8c5a;
	  padding:25px 25px 26px 25px;
	  transform:scale(1.1);
	  font-size:17px;
	  list-style:none;
	  display:inline-block;
	}

	.dropdown-content {
	  display: none;
	  position: absolute;
	  background-color: #f9f9f9;
	  min-width:300px;
	  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
	  z-index: 1;
	}

	.dropdown-content a {
	  font-family:verdana, arial, helvecita,sans-serif;
	  float: none;
	  color: black;
	  padding:12px 16px 0 0;
	  text-decoration: none;
	  display: block;
	  text-align: left;
	  height:55px;
	}

	.dropdown-content a:hover {
	 color:white;
	 padding:5px;
	 background-color: #5b8c5a;
	 text-decoration: none;
	 
	 transform:scale(1.0);
	}
	.show {
	  display: block;
	}
	.size{
	   padding: 12px 16px;
	   background:white;
	   list-style-type: none;  
	   float:none;
	  
	}
	.size:hover{
	  padding:2px;
	}
	.about{
	  width:100%;
	  padding:78px 0px;
	  background-color:#eee0e3;
	}
	.about img{
	  height:auto;
	  width:420px;
	}
	.about-text{
	  width:550px;
	}
	.main{
	  width:1130px;
	  max-width:95%;
	  margin:0 auto;
	  display:flex;
	  align-items:center;
	  justify-content:space-around;

	}

	.about-text h1{
	  color:black;
	  font-size:50px;
	  text-transform:capitalize;
	  margin-bottom:20px;
	  text-align:center;

	}
	.about-text p{
	  color:black;
	  letter-spacing:1px;
	  line-height:28px;
	  font-size:18px;
	  margin-bottom:45px;
	  text-align:center;

	}
	.copyrights{
	  font-size:16px;
	  font-family:verdana, arial, helvecita,sans-serif;
	  text-align:center;
	  margin:15px;
	}
	.modal {
	  display: none; /* Hidden by default */
	  position: fixed; /* Stay in place */
	  z-index: 1; /* Sit on top */
	  padding-top: 100px; /* Location of the box */
	  left: 0;
	  top: 0;
	  width: 100%; /* Full width */
	  height: 100%; /* Full height */
	  overflow: auto; /* Enable scroll if needed */
	  background-color: rgb(0,0,0); /* Fallback color */
	  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
	}

	/* Modal Content */
	.modal-content {
	  background-color:	#e6ffe6;
	  margin: auto;
	  padding: 20px;
	  border: 1px solid #888;
	  width: 80%;
	}

	/* The Close Button */
	.close {
	  color: #aaaaaa;
	  float: right;
	  font-size: 28px;
	  font-weight: bold;
	}

	.close:hover,
	.close:focus {
	  color: #000;
	  text-decoration: none;
	  cursor: pointer;
	}
    .shop-item {
			margin: 30px;
			border:2px solid black;
			box-shadow: 0 5px 8px 5 rgba(0, 0, 0, 0.5);
			background: rgba(0, 0, 0, 0.2);
			display:inline-block;
			margin:10px;
			width:260px;
			border-radius:10px;
			padding:5px;
			text-align:center;
		}

	.shop-item-title {
			display: block;
			width: 100%;
			text-align: center;
			font-weight: bold;
			font-size: 1.5em;
			color: white;
			margin-bottom: 15px;
		}

	.shop-item-image {
			padding:10px;
			width:240px;
			height:200px;
			border-radius:5px;
		}

	.shop-item-details {
			display: flex;
			align-items: center;
			padding: 5px;
			border:5px solid black;
		}

	.shop-item-price {
			flex-grow: 1;
			color: white;
		}
	.shop-items {
			display: flex;
			flex-wrap: wrap;
			justify-content: space-around;
		}
	.shop-item:hover{
			transform: scale(1.05);
			cursor: pointer;
			box-shadow: 2px
		}
	.shop-item button {
		background-color: #04AA6D;
		color: black;
	    font-size:15px;
	    font-weight:bold;
    	padding: 10px 15px;
		margin: 8px 0;
		border: none;
		cursor: pointer;
		width: 60%;
		border-radius:5px;
		}
		
	.shop-item button:hover {
		opacity: 0.8;
		}

	.cart-header {
		font-weight: bold;
		font-size: 1.25em;
		color: #333;
	}

	.cart-column {
		display: flex;
		align-items: center;
		border-bottom: 1px solid black;
		margin-right: 1.5em;
		padding-bottom: 10px;
		margin-top: 10px;
	}

	.cart-row {
		display: flex;
	}

	.cart-item {
		width: 45%;
	}

	.cart-price {
		width: 20%;
		font-size: 1.2em;
		color: #333;
	}

	.cart-quantity {
		width: 35%;
	}

	.cart-item-title {
		color: #333;
		margin-left: .5em;
		font-size: 1.2em;
	}

	.cart-item-image {
		width: 75px;
		height: auto;
		border-radius: 10px;
	}

	.btn-danger {
		color: white;
		background-color: green;
		border: none;
		border-radius: .3em;
		font-weight: bold;
	}

	.btn-danger:hover {
		background-color: #CC4C4C;
	}

	.cart-quantity-input {
		height: 34px;
		width: 50px;
		border-radius: 5px;
		border: 1px solid #56CCF2;
		background-color: #eee;
		color: #333;
		padding: 0;
		text-align: center;
		font-size: 1.2em;
		margin-right: 25px;
	}

	.cart-row:last-child {
		border-bottom: 1px solid black;
	}

	.cart-row:last-child .cart-column {
		border: none;
	}

	.cart-total {
		text-align: end;
		margin-top: 10px;
		margin-right: 10px;
	}

	.cart-total-title {
		font-weight: bold;
		font-size: 1.5em;
		color: black;
		margin-right: 20px;
	}

	.cart-total-price {
		color: #333;
		font-size: 1.1em;
	}

	.btn-purchase {
		display: block;
		margin: 40px auto 80px auto;
		font-size: 1.75em;
      color: white;
      background-color: green;
	}
   .btn-purchase:hover{
      background-color: #CC4C4C;
   }

</style>
</head>

<body>
  <div class="parallax">
    <div class="page-title">Grocery world</div>
  </div> 
  
	<div class="menu" id="sticky">
		  <ul class="menu-ul">
		     <div class="cartbutton">
				<a href="checkout.jsp"><button id="mybtn"><i class="fa fa-shopping-cart" style="font-size:20px"></i></button> </a>
			 </div>
			 <%String userName=(String)session.getAttribute("userName"); %>
                <a href="#" class="a-menu"> <li>Welcome <%out.println(userName); %> !</li></a>
			 <!--  a href="homeFile.jsp" class="a-menu"><li>Products</li></a>-->
			  <a href="#" class="a-menu"><li>Home</li></a>
			  <a href="#deals" class="a-menu"><li>Deals</li></a>
			  <a href="Login.jsp" class="a-menu"><li>Log out</li></a>
			  <a href="#about" class="a-menu"><li>About us</li></a>
			  <a href="#contact" class="a-menu"><li>Contact</li></a>
			 
		   
			  
		  </ul>
		 <div class="dropdown">
			  <button class="dropbtn" onclick="myFunction()">Categories !!
				<i class="fa fa-caret-down"></i>
				 </button>
				   <div class="dropdown-content" id="myDropdown">
					 <div class="size">
					 <a href="#vegetables" class="a-menu"><li>Vegetables</li></a>
					 <a href="#fruits" class="a-menu"><li>Fruits</li></a>
					 <a href="#meat" class="a-menu"><li>Meat</li></a>
					 <a href="#chocolates" class="a-menu"><li>Chocolates</li></a>
					 <a href="#grains" class="a-menu"><li>Grains</li></a>
					 <a href="#dairy" class="a-menu"><li>Dairy products</li></a>
					 <a href="#others" class="a-menu"><li>Other products</li></a>
		  </div>
		 </div>
  </div> 
<!--div class="search-box">
 <form>
   <input type="text" placeholder="search..." name="search"
   class="search-input"/>
   <button type="submit"><i class="fa fa-search"></i></button>
</form>
</div-->
</div>
<!--Home page begins-->
<div class="container">
  <a href="#vegetables">
    <div class="categories">
         <img src="https://thumbs.dreamstime.com/b/fresh-vegetables-herbs-natural-background-toned-fresh-vegetables-herbs-natural-background-toned-119119758.jpg" class="item-image"/>
         <div class="image-title">Vegetables</div>
    </div>
</a>
<a href="#fruits">
    <div class="categories">
         <img src="https://wallpapercave.com/wp/wp3231026.jpg" class="item-image"/>
         <div class="image-title">Fruits</div>
   </div>
</a>
<a href="#meat">
    <div class="categories">
         <img src="http://wallpapercave.com/wp/wp1903806.jpg" class="item-image"/>
         <div class="image-title">Meats & Seafood</div>
  </div>
</a>
<a href="#deals">
    <div class="categories">
         <img src="https://i.pinimg.com/736x/c8/68/f0/c868f001d7d6efb06523057e870e16eb--patriot-deck.jpg" class="item-image"/>
         <div class="image-title">Deals</div>
  </div>
</a>
<a href="#chocolates">
    <div class="categories">
         <img src="https://cdn.wallpapersafari.com/16/84/ov4VHK.jpg" class="item-image"/>
         <div class="image-title">Chocolates</div>
  </div>
</a>
<a href="#grains">
    <div class="categories">
         <img src="https://upload.wikimedia.org/wikipedia/commons/e/ea/Indian_Spices.jpg" class="item-image"/>
         <div class="image-title">Grains</div>
  </div>
</a>
<a href="#dairy">
    <div class="categories">
         <img src="https://images6.alphacoders.com/365/365496.jpg" class="item-image"/>
         <div class="image-title">Dairy Products</div>
  </div>
</a>
<a href="#others">
    <div class="categories">
         <img src="http://dubli.blog/wp-content/uploads/2017/08/main-2.jpg" class="item-image"/>
         <div class="image-title">Other Products</div>
  </div>
</a>
</div>
<!--Deal Begins here-->
    <div class="deals-container" id="deals">
        <div class="parallax">
            <div class="title">DEALS</div>
         </div>
          <div class="deal">
               Save 20% on min-purchase of Rs.500 on vegetables<br/>
               <button class="coupon-btn">Add coupon</button>
           </div>
          <div class="deal">
               Save 25% on min-purchase of Rs.750 on fruits<br/>
               <button class="coupon-btn">Add coupon</button>
          </div>
          <div class="deal">
               Save 10% on min-purchase of Rs.50 on chocolates<br/>
               <button class="coupon-btn">Add coupon</button>
          </div>
     </div>
<!--Deal ends here-->
<!--About us begins here-->
<section class="about" id="about">
  <div class="main">
    <img src="https://images.all-free-download.com/images/graphiclarge/plums_518539.jpg">
      <div class="about-text">
          <h1>ABOUT US</h1>
        <p>While fresh vegetables should be a part of your everyday meals, some vegetables are hard to find even in the huge supermarkets in your area. Heading to the nearest supermarket with a list of monthly provisions is passé. Now visit our online staples store called bigbasket, one of the most famous online grocery shopping interfaces to stack up your monthly requirements of staples.Any online transaction comes with a prime advantage of completing chores without stepping out of one’s home. </p>
    </div>
</div>
</section>
<!--About us ends here-->

<!--Veg Begins here-->
      <div class="deals-container" id="vegetables">
      <div class="parallax">
             <div class="title">VEGETABLES</div>
         </div>
      <%
        	ProductDaoImplement productDAO=new ProductDaoImplement(dataConnection.databaseConnection());
            List<Product> list=productDAO.getVegetablesProduct();
            for(Product product:list){%>
         
         <div class="items">
            <div class="images">
               <img src="images/<%=product.getProductImage()%>" class="item-image-size"/>
            </div>
            <div class="description">
                <b> <%=product.getProductName() %></b><br/>
                <div class="item-select">
                    Rs.<%=product.getProductPrice() %>
                </div>
               <label>Qty:</label>
                <select class="item-select">
                     <option>250 grams</option>
                     <option>500 grams</option>
                     <option>750 grams</option>
                     <option>1000 grams</option>
                </select><br/>
                <!--button class="buynow-btn">Add to Cart</button-->
				 <a href="cart?ProductId=<%=product.getProductId()%>"><button class="buynow-btn " type="button">Add to cart</button></a>
             </div>
          </div>
         <% }%>
        </div>
<!--veg ends here-->
<!--Fruits Begins here-->
      <div class="deals-container" id="fruits">
      <div class="parallax">
             <div class="title">FRUITS</div>
         </div>
      <%
        	ProductDaoImplement productDao=new ProductDaoImplement(dataConnection.databaseConnection());
            List<Product> lists=productDao.getFruitsProduct();
            for(Product product:lists){%>
         
         <div class="items">
            <div class="images">
               <img src="images/<%=product.getProductImage()%>" class="item-image-size"/>
            </div>
            <div class="description">
                <b> <%=product.getProductName() %></b><br/>
                <div class="item-select">
                    Rs.<%=product.getProductPrice() %>
                </div>
               <label>Qty:</label>
                <select class="item-select">
                     <option>250 grams</option>
                     <option>500 grams</option>
                     <option>750 grams</option>
                     <option>1000 grams</option>
                </select><br/>
                <!--button class="buynow-btn">Add to Cart</button-->
				<button class="buynow-btn " type="button">Add to cart</button>
             </div>
          </div>
         <% }%>
        </div>
<!--fruits ends here-->
<!--meat Begins here-->
      <div class="deals-container" id="meat">
      <div class="parallax">
             <div class="title">MEATS&SEAFOODS</div>
         </div>
      <%
        	ProductDaoImplement productDao2=new ProductDaoImplement(dataConnection.databaseConnection());
            List<Product> lists2=productDao2.getMeatsSeaFoodsProduct();
            for(Product product:lists2){%>
         
         <div class="items">
            <div class="images">
               <img src="images/<%=product.getProductImage()%>" class="item-image-size"/>
            </div>
            <div class="description">
                <b> <%=product.getProductName() %></b><br/>
                <div class="item-select">
                    Rs.<%=product.getProductPrice() %>
                </div>
               <label>Qty:</label>
                <select class="item-select">
                     <option>250 grams</option>
                     <option>500 grams</option>
                     <option>750 grams</option>
                     <option>1000 grams</option>
                </select><br/>
                <!--button class="buynow-btn">Add to Cart</button-->
				<button class="buynow-btn " type="button">Add to cart</button>
             </div>
          </div>
         <% }%>
        </div>
<!--meat ends here-->
<!--chocolates Begins here-->
      <div class="deals-container" id="chocolates">
      <div class="parallax">
             <div class="title">CHOCOLATESS</div>
         </div>
      <%
        	ProductDaoImplement productDao1=new ProductDaoImplement(dataConnection.databaseConnection());
            List<Product> lists1=productDao1.getChocolatesProduct();
            for(Product product:lists1){%>
         
         <div class="items">
            <div class="images">
               <img src="images/<%=product.getProductImage()%>" class="item-image-size"/>
            </div>
            <div class="description">
                <b> <%=product.getProductName() %></b><br/>
                <div class="item-select">
                    Rs.<%=product.getProductPrice() %>
                </div>
               <label>Qty:</label>
                <select class="item-select">
                     <option>250 grams</option>
                     <option>500 grams</option>
                     <option>750 grams</option>
                     <option>1000 grams</option>
                </select><br/>
                <!--button class="buynow-btn">Add to Cart</button-->
				<button class="buynow-btn " type="button">Add to cart</button>
             </div>
          </div>
         <% }%>
        </div>
<!--chocolates ends here-->
<!--GrainsBegins here-->
      <div class="deals-container" id="grains">
      <div class="parallax">
             <div class="title">GRAINS</div>
         </div>
      <%
        	ProductDaoImplement productDao3=new ProductDaoImplement(dataConnection.databaseConnection());
            List<Product> lists3=productDao3.getGrainsProduct();
            for(Product product:lists3){%>
         
         <div class="items">
            <div class="images">
               <img src="images/<%=product.getProductImage()%>" class="item-image-size"/>
            </div>
            <div class="description">
                <b> <%=product.getProductName() %></b><br/>
                <div class="item-select">
                    Rs.<%=product.getProductPrice() %>
                </div>
               <label>Qty:</label>
                <select class="item-select">
                     <option>250 grams</option>
                     <option>500 grams</option>
                     <option>750 grams</option>
                     <option>1000 grams</option>
                </select><br/>
                <!--button class="buynow-btn">Add to Cart</button-->
				<button class="buynow-btn " type="button">Add to cart</button>
             </div>
          </div>
         <% }%>
        </div>
<!--Grains ends here-->
<!--dairy Begins here-->
      <div class="deals-container" id="dairy">
      <div class="parallax">
             <div class="title">DAIRY PRODUCTS</div>
         </div>
      <%
        	ProductDaoImplement productDao4=new ProductDaoImplement(dataConnection.databaseConnection());
            List<Product> lists4=productDao4.getDairyProduct();
            for(Product product:lists4){%>
         
         <div class="items">
            <div class="images">
               <img src="images/<%=product.getProductImage()%>" class="item-image-size"/>
            </div>
            <div class="description">
                <b> <%=product.getProductName() %></b><br/>
                <div class="item-select">
                    Rs.<%=product.getProductPrice() %>
                </div>
               <label>Qty:</label>
                <select class="item-select">
                     <option>250 grams</option>
                     <option>500 grams</option>
                     <option>750 grams</option>
                     <option>1000 grams</option>
                </select><br/>
                <!--button class="buynow-btn">Add to Cart</button-->
				<button class="buynow-btn " type="button">Add to cart</button>
             </div>
          </div>
         <% }%>
        </div>
<!--dairy  ends here-->

<!--others Begins here-->
      <div class="deals-container" id="others">
      <div class="parallax">
             <div class="title">OTHER PRODUCTS</div>
         </div>
      <%
        	ProductDaoImplement productDao5=new ProductDaoImplement(dataConnection.databaseConnection());
            List<Product> lists5=productDao5.getOthersProduct();
            for(Product product:lists5){%>
         
         <div class="items">
            <div class="images">
               <img src="images/<%=product.getProductImage()%>" class="item-image-size"/>
            </div>
            <div class="description">
                <b> <%=product.getProductName() %></b><br/>
                <div class="item-select">
                    Rs.<%=product.getProductPrice() %>
                </div>
               <label>Qty:</label>
                <select class="item-select">
                     <option>250 grams</option>
                     <option>500 grams</option>
                     <option>750 grams</option>
                     <option>1000 grams</option>
                </select><br/>
                <!--button class="buynow-btn">Add to Cart</button-->
				<button class="buynow-btn " type="button">Add to cart</button>
             </div>
          </div>
         <% }%>
        </div>
<!--others ends here-->
<div id='myModal' class='modal'>
		   <div class='modal-content'>
		        <span class="close">&times;</span>
		<section class="container content-section">
					<h2 class="section-header">CART</h2>
					<div class="cart-row">
						<span class="cart-item cart-header cart-column">ITEM</span>
						<span class="cart-price cart-header cart-column">PRICE</span>
						<span class="cart-quantity cart-header cart-column">QUANTITY</span>
					</div>
					<div class="cart-items">
					</div>
					<div class="cart-total">
						<strong class="cart-total-title">Total</strong>
						<span class="cart-total-price">Rs</span>
					</div>
					<button class="btn btn-primary btn-purchase" type="button">PURCHASE</button>
				</section>
			</div>
		</div>
<!--Home page ends-->
<!--footer starts here-->
   <div class="parallaxl">
    <div class="footer" id="contact">
     <div class="quick-links">
      <div>Locations</div>
       <ul>
        <li><a href="" class="a-links">Coimbatore</a></li>
        <li><a href="" class="a-links">Chennai</a></li>
        <li><a href="" class="a-links">Bangalore</a></li>
       </ul>
   </div>
    <div class="quick-links">
      <div>Careers</div>
       <ul>
        <li><a href="" class="a-links">Packing Staff</a></li>
        <li><a href="" class="a-links">Delivery Agents</a></li>
        <li><a href="" class="a-links">Shelf Fillers</a></li>
       </ul>
     </div>
     <div class="quick-links">
       <div>Quick Links</div>
       <ul>
        <li><a href="mailto:info@w3docs.com?cc=secondemail@example.com, anotheremail@example.com, &bcc=lastemail@example.com&subject=Mail from our Website&body=Dear W3docs Team" class="a-links">Send Email</a></li>
        <li><a href="" class="a-links">FAQ</a></li>
        <li><a href="" class="a-links">Help</a></li>
       </ul>
     </div>
     </div>
    </div>
<div class="copyrights">
    <i class="far fa-copyright fa-1x"></i>2021 By Programmer oviya's Web grocery store online
</div>
<!--footer ends here-->
<!--  script>
function stickyMenu(){
   var sticky=document.getElementById('sticky');
   if(window.pageYOffset >220){
      sticky.classList.add('sticky');
   }
else{
   sticky.classList.remove('sticky');
}
}
window.onscroll=function(){
   stickyMenu();
}
function myFunction() {
  document.getElementById("myDropdown").classList.toggle("show");
}
window.onclick = function(e) {
  if (!e.target.matches('.dropbtn')) {
  var myDropdown = document.getElementById("myDropdown");
    if (myDropdown.classList.contains('show')) {
      myDropdown.classList.remove('show');
    }
  }
}
var modal = document.getElementById("myModal");

		// Get the button that opens the modal
		var btn = document.getElementById("mybtn");

		// Get the <span> element that closes the modal
		var span = document.getElementsByClassName("close")[0];

		// When the user clicks the button, open the modal 
		btn.onclick = function() {
		  modal.style.display = "block";
		}

		// When the user clicks on <span> (x), close the modal
		span.onclick = function() {
		  modal.style.display = "none";
		}

		// When the user clicks anywhere outside of the modal, close it
		window.onclick = function(event) {
		  if (event.target == modal) {
			modal.style.display = "none";
		  }
		}
</script-->
</body>
</html>
    