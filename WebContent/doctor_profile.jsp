<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="wheat">
<br><br><br>
<center><h1>Welcome to Doctor Home</h1></center>
<a href="doctor_home.html"><h2>HOME<h2></a>
<a href="doctor_profile.jsp">PROFILE</a>
<a href="index.html">LOGOUT</a>
<br><br><br>
<%@ page import="java.sql.*" %>
<table border="2" align="center" width="600" height="200" cellpadding="10">
<tr>
    <td>Id</td>
    <td>Name</td>
    <td>Email</td>
    <td>Phone</td>
    <td>Specialisation</td>
    <td>Action</td>
</tr>
<%
   Connection con=null;
   PreparedStatement ps=null;
   Class.forName("com.mysql.jdbc.Driver");
   String url="jdbc:mysql://localhost:3306/kims";
   String username="root";
   String password="root";   
   con=DriverManager.getConnection(url,username,password);
   
   int id=(Integer)session.getAttribute("id");
   
   ps=con.prepareStatement("select * from doctor where id=?");
   ps.setInt(1,id);
   ResultSet rs=ps.executeQuery();
   while(rs.next()){
%>
<tr>
   <td><%=rs.getInt("id") %></td>
   <td><%=rs.getString("name") %></td>
   <td><%=rs.getString("email") %></td>
   <td><%=rs.getString("phone") %></td>
   <td><%=rs.getString("specialisation") %></td>
   <td><a href="update_doctor_profile.jsp?id=<%=rs.getInt(1)%>">Update</a></td>
</tr>

<%}%>
</table>
</body>
</html>