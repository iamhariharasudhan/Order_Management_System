<!DOCTYPE html>
<html>
<head>
<title>Cancel Order</title>

<style>

body{
font-family:Arial;
background:#eef2f7;
}

.form-box{
width:450px;
margin:80px auto;
background:white;
padding:30px;
border-radius:10px;
box-shadow:0 0 8px rgba(0,0,0,0.1);
}

h2{
text-align:center;
}

input{
width:100%;
padding:10px;
margin:8px 0;
border:1px solid #ccc;
border-radius:5px;
}

button{
width:100%;
padding:10px;
background:#dc3545;
color:white;
border:none;
border-radius:5px;
}

button:hover{
background:#c82333;
}

</style>
</head>

<body>

<div class="form-box">

<h2>Cancel Order</h2>

<form action="OrderServlet" method="post">

Order ID
<input type="number" name="orderid">

<input type="hidden" name="action" value="cancel">

<button type="submit">Cancel Order</button>

</form>

</div>

</body>
</html>