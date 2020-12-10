<%@ page import="java.sql.*" %>
<%
Connection con=null;
PreparedStatement ps=null;
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/kims";
String username="root";
String password="root";
con=DriverManager.getConnection(url,username,password);
%>