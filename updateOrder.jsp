<!DOCTYPE html>
<html>
<head>
<title>Update Order Status</title>

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

input,select{
width:100%;
padding:10px;
margin:8px 0;
border:1px solid #ccc;
border-radius:5px;
}

button{
width:100%;
padding:10px;
background:#007bff;
color:white;
border:none;
border-radius:5px;
}

button:hover{
background:#0056b3;
}

</style>
</head>

<body>

<div class="form-box">

<h2>Update Order Status</h2>

<form action="OrderServlet" method="post">

Order ID
<input type="number" name="orderid">

Select Status
<select name="status">
<option>Created</option>
<option>Shipped</option>
<option>Delivered</option>
</select>

<input type="hidden" name="action" value="update">

<button type="submit">Update Status</button>
<a class="back" href="index.jsp"> Back to Dashboard</a>
</form>

</div>

</body>
</html>