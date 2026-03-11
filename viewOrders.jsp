<%@ page import="java.sql.*" %>
<%@ page import="com.oms.DBConnection" %>

<!DOCTYPE html>
<html>
<head>
<title>Order History</title>

<style>

body{
font-family:Arial;
background:#f4f6f9;
}

.container{
width:900px;
margin:60px auto;
background:white;
padding:30px;
border-radius:10px;
box-shadow:0 0 8px rgba(0,0,0,0.1);
}

table{
width:100%;
border-collapse:collapse;
}

th,td{
padding:10px;
border:1px solid #ddd;
text-align:center;
}

th{
background:#007bff;
color:white;
}

tr:nth-child(even){
background:#f2f2f2;
}

</style>
</head>

<body>

<div class="container">

<h2>Order History</h2>

<table>

<tr>
<th>ID</th>
<th>Customer</th>
<th>Product</th>
<th>Quantity</th>
<th>Price</th>
<th>Status</th>
<th>Total</th>
</tr>

<%

Connection con = DBConnection.getConnection();
Statement st = con.createStatement();
ResultSet rs = st.executeQuery("SELECT * FROM orders");

while(rs.next()){

int qty = rs.getInt("quantity");
double price = rs.getDouble("price");

double total = qty * price;

%>

<tr>

<td><%=rs.getInt("order_id")%></td>
<td><%=rs.getString("customer_name")%></td>
<td><%=rs.getString("product_name")%></td>
<td><%=qty%></td>
<td><%=price%></td>
<td><%=rs.getString("status")%></td>
<td><%=total%></td>

</tr>

<% } %>

</table>
<a class="back" href="index.jsp"> Back to Dashboard</a>
</div>

</body>
</html>