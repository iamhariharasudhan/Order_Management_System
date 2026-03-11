<!DOCTYPE html>
<html>
<head>
<title>Order Management System</title>

<style>

body{
font-family: Arial, sans-serif;
background:#f4f6f9;
margin:0;
padding:0;
}

.container{
width:500px;
margin:80px auto;
background:white;
padding:40px;
border-radius:10px;
box-shadow:0 0 10px rgba(0,0,0,0.1);
text-align:center;
}

h2{
margin-bottom:30px;
}

.menu a{
display:block;
padding:12px;
margin:10px 0;
background:#007bff;
color:white;
text-decoration:none;
border-radius:5px;
}

.menu a:hover{
background:#0056b3;
}

</style>

</head>

<body>

<div class="container">

<h2>Order Management System</h2>

<div class="menu">

<a href="createorder.jsp">1. Create Order</a>

<a href="updateOrder.jsp">2. Update Order Status</a>

<a href="cancelOrder.jsp">3. Cancel Order</a>

<a href="viewOrders.jsp">4. View Order History</a>

<a href="totalPrice.jsp">5. Calculate Total Price</a>

<a href="index.jsp">6. Exit</a>

</div>

</div>

</body>
</html>