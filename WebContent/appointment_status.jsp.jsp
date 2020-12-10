<!DOCTYPE html>
<html>
<body bgcolor="wheat">
<br><br><br>
<center><h1>Welcome to Patient Home</h1></center>
<br><br><br>
<a href="patient_home.html">HOME</a>|
<a href="patient_profile.jsp">PROFILE</a>|
<a href="appointment.jsp">APPOINTMENT</a>|
<a href="appointment_status.jsp">APPOINTMENT_STATUS</a>|
<a href="index.html">LOGOUT</a>|
<br><br><br>
<%@ include file="connect.jsp" %>
<table border="2" width="600" height="300" cellpadding="20">
  <tr>  
   <td>Patient name</td>
   <td>phone</td>
   <td>Email</td>
   <td>Gender</td>
   <td>Blood Group</td>
   <td>Specialist</td>
   <td>Date</td>
   <td>Time</td>
   <td>status</td>
   <td>doctor name</td>
  </tr>
  <%
   int id=(Integer)session.getAttribute("sid");
   ps=con.prepareStatement("select * from appointment where pid=?");
   ps.setInt(1,id);
   ResultSet rs=ps.executeQuery();
   while(rs.next()){
  %>
  <tr>
   <td><%=rs.getString(2) %></td>
   <td><%=rs.getLong(3) %></td>
   <td><%=rs.getString(4) %></td>
   <td><%=rs.getString(5) %></td>
   <td><%=rs.getString(6) %></td>
   <td><%=rs.getString(7) %></td>
   <td><%=rs.getString(8) %></td>
   <td><%=rs.getString(9) %></td>
   <td><%=rs.getString(10) %></td>
   <td><%=rs.getString(11) %></td>
  </tr> 
  <%} %>
  </table>
</body>
</html>