<%@ page language="java" %>

<!DOCTYPE html>
<html>
<head>
<title>Calculate Total Price</title>

<style>

body{
font-family: 'Segoe UI', Tahoma, sans-serif;
background: linear-gradient(135deg,#eef2f7,#dfe9f3);
margin:0;
padding:0;
}


.container{
width:420px;
margin:120px auto;
background:white;
padding:35px;
border-radius:12px;
box-shadow:0 10px 25px rgba(0,0,0,0.1);
text-align:center;
}

h2{
margin-bottom:25px;
color:#333;
}


input{
width:100%;
padding:12px;
margin:10px 0 20px 0;
border:1px solid #ccc;
border-radius:6px;
font-size:14px;
}



button{
width:100%;
padding:12px;
background:#17a2b8;
color:white;
border:none;
border-radius:6px;
font-size:15px;
cursor:pointer;
transition:0.3s;
}

button:hover{
background:#138496;
}


.result{
margin-top:25px;
padding:15px;
background:#e8f7f9;
border-left:5px solid #17a2b8;
font-size:18px;
color:#333;
border-radius:6px;
}



.back{
display:inline-block;
margin-top:20px;
text-decoration:none;
color:#007bff;
font-size:14px;
}

.back:hover{
text-decoration:underline;
}

</style>
</head>

<body>

<div class="container">

<h2>Calculate Total Price</h2>

<form action="OrderServlet" method="post">

<label>Enter Order ID</label>

<input type="number" name="orderid" required>

<input type="hidden" name="action" value="total">

<button type="submit">Calculate Total</button>

</form>

<%
if(request.getAttribute("totalPrice")!=null){
%>

<div class="result">
Total Price : <%= request.getAttribute("totalPrice") %>
</div>

<%
}
%>

<a class="back" href="index.jsp"> Back to Dashboard</a>

</div>

</body>

</html>
