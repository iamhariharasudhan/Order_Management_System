package com.oms;

import java.io.IOException;
import java.sql.*;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/OrderServlet")

public class OrderServlet extends HttpServlet {

protected void doPost(HttpServletRequest request, HttpServletResponse response)
throws ServletException, IOException {

String action = request.getParameter("action");

try {

Connection con = DBConnection.getConnection();

if(action.equals("create")){

String customer = request.getParameter("customer");
String product = request.getParameter("product");
int quantity = Integer.parseInt(request.getParameter("quantity"));
double price = Double.parseDouble(request.getParameter("price"));

PreparedStatement ps = con.prepareStatement(
"INSERT INTO orders(customer_name,product_name,quantity,price,status) VALUES(?,?,?,?,?)");

ps.setString(1,customer);
ps.setString(2,product);
ps.setInt(3,quantity);
ps.setDouble(4,price);
ps.setString(5,"Created");

ps.executeUpdate();

response.sendRedirect("viewOrders.jsp");
}

else if(action.equals("update")){

int id = Integer.parseInt(request.getParameter("orderid"));
String status = request.getParameter("status");

PreparedStatement ps = con.prepareStatement(
"UPDATE orders SET status=? WHERE order_id=?");

ps.setString(1,status);
ps.setInt(2,id);

ps.executeUpdate();

response.sendRedirect("viewOrders.jsp");
}

else if(action.equals("cancel")){

int id = Integer.parseInt(request.getParameter("orderid"));

PreparedStatement ps = con.prepareStatement(
"UPDATE orders SET status='Cancelled' WHERE order_id=?");

ps.setInt(1,id);

ps.executeUpdate();

response.sendRedirect("viewOrders.jsp");
}

else if(action.equals("total")){

int id = Integer.parseInt(request.getParameter("orderid"));

PreparedStatement ps = con.prepareStatement(
"SELECT quantity,price FROM orders WHERE order_id=?");

ps.setInt(1,id);

ResultSet rs = ps.executeQuery();

if(rs.next()){

double total = rs.getInt("quantity") * rs.getDouble("price");

request.setAttribute("totalPrice", total);

RequestDispatcher rd = request.getRequestDispatcher("totalPrice.jsp");
rd.forward(request,response);
}
}

}
catch(Exception e){
e.printStackTrace();
}

}
}