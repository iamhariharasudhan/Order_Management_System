<!DOCTYPE html>
<html>
<head>
<title>Create Order</title>

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
background:#28a745;
color:white;
border:none;
border-radius:5px;
}

button:hover{
background:#218838;
}

a{
display:block;
margin-top:10px;
text-align:center;
}

</style>
</head>

<body>

<div class="form-box">

<h2>Create Order</h2>

<form action="OrderServlet" method="post">

Customer Name
<input type="text" name="customer">

Product Name
<input type="text" name="product">

Quantity
<input type="number" name="quantity">

Price
<input type="number" name="price">

<input type="hidden" name="action" value="create">

<button type="submit">Create Order</button>

</form>

<a href="index.jsp">Back</a>

</div>

</body>
</html>