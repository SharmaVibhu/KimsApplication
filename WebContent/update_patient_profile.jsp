<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<body bgcolor="wheat">
<br><br><br>
<center><h1>Welcome to Patient Home</h1></center>
<a href="patient_home.html"><h2>HOME<h2></a>
<a href="patient_profile.jsp">PROFILE</a>
<a href="index.html">LOGOUT</a>
<br><br><br>
<%@ page import="java.sql.*" %>
<%
Connection con=null;
PreparedStatement ps=null;
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/kims";
String username="root";
String password="root";
con=DriverManager.getConnection(url,username,password);
int id=Integer.parseInt(request.getParameter("id"));
ps=con.prepareStatement("select * from patient where id=?");
ps.setInt(1,id);
ResultSet rs=ps.executeQuery();
if(rs.next()){
%>

<form action="patient_profile_update.jsp" method="post" align="center">
 <input type="hidden" name="id" value="<%=rs.getInt("id") %>">
 <input type="text" name="name" value="<%=rs.getString("name") %>">
 <input type="email" name="email" value="<%=rs.getString("email") %>">
 <input type="number" name="phone" value="<%=rs.getInt("phone") %>">
 <select name="disease">
    <option value="<%=rs.getString("disease") %>"><%=rs.getString("disease") %></option>
    <option value="FEVER">FEVER</option>
    <option value="CANCER">CANCER</option>
    <option value="SUGAR">SUGAR</option>
    <option value="EYE-PROBLEM">EYE-PROBLEM</option>
  </select>
 <br><br><br>
 <center>
 <input type="submit" value="Update">
 </center>
</form>  
<%} %>