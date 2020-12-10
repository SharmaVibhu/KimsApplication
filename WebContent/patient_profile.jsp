<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<body bgcolor="wheat"></body>
<body bgcolor="wheat">
<br><br><br>
<center><h1>Welcome to Doctor Home</h1></center>
<a href="patient_home.html"><h2>HOME<h2></a>
<a href="patient_profile.jsp">PROFILE</a>
<a href="patient_login.html">PATIENT_LOGIN</a>
<%@ page import="java.sql.*" %>
<table border="2" align="center" width="600" height="200" cellpadding="10">
<tr>
    <td>Id</td>
    <td>Name</td>
    <td>Email</td>
    <td>Phone</td>
    <td>address</td>
    <td>disease</td>
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
Integer id=(Integer)session.getAttribute("sid");
ps=con.prepareStatement("select * from patient where id=?");
ps.setInt(1,id);
ResultSet rs=ps.executeQuery();
while(rs.next()){
%>
<tr>
<td><%=rs.getInt("id") %></td>
<td><%=rs.getString("name") %></td>
<td><%=rs.getString("email") %></td>
<td><%=rs.getString("phone") %></td>
<td><%=rs.getString("address") %></td>
<td><%=rs.getString("disease") %></td>
<td><a href="update_patient_profile.jsp?id=<%=rs.getInt(1)%>">Update</a></td>
</tr>
<%}%>
</table>
</body>
</html>