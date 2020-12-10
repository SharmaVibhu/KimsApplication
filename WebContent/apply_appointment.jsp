<%@ include file="connect.jsp"%>
<%
  String patient_name=request.getParameter("patient_name");
  long phone=Long.parseLong(request.getParameter("phone"));
  String email=request.getParameter("email");
  String gender=request.getParameter("gender");
  String blood_group=request.getParameter("blood_group");
  String specialist=request.getParameter("specialist");
  String date_of_appointment=request.getParameter("date_of_appointment");
  String time_of_appointment=request.getParameter("time_of_appointment");
  int pid=(Integer)session.getAttribute("sid");
  String sql="insert into appointment(patient_name,phone,email,gender,blood_group,specialist,date_of_appointment,time_of_appointment,pid) values(?,?,?,?,?,?,?,?,?)";
  ps=con.prepareStatement(sql);
  ps.setString(1,patient_name);
  ps.setLong(2,phone);
  ps.setString(3,email);
  ps.setString(4,gender);
  ps.setString(5,blood_group);
  ps.setString(6,specialist);
  ps.setString(7,date_of_appointment);
  ps.setString(8,time_of_appointment);
  ps.setInt(9,pid);
  int x=ps.executeUpdate();
  if(x!=0){
	  response.sendRedirect("appointment.jsp?msg=applied_appointment");
  }
%>