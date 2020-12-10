<!DOCTYPE html>
<html>
<body bgcolor="wheat">
<br><br><br>
<center><h1>Welcome to Appointment page</h1></center>
<br><br><br>
<a href="patient_home.html">HOME</a>
<a href="patient_profile.jsp">PROFILE</a>
<a href="index.html">LOGOUT</a>
<br><br><br>
<form action="apply_appointment.jsp" align="center">
 <input type="text" name="patient_name" placeholder="Enter name">
 <input type="number" name="phone" placeholder="Enter phone_no">
 <input type="text" name="email" placeholder="Enter email">
 <input type="radio" name="gender" value="male">Male
 <input type="radio" name="gender" value="female">Female
 <select name="blood_group">
  <option value="A+">A+</option>
  <option value="B+">B+</option>
  <option value="O+">O+</option>
  <option value="AB+">AB+</option>
  <option value="B-">B-</option>
  <option value="O-">O-</option>
  <option value="AB-">AB-</option>
 </select>
 <select name="specialist">
  <option value="DENTIST">DENTIST</option>
  <option value="ENT">ENT</option>
  <option value="CARDIAOLIGIST">CARDIAOLIGIST</option>
 </select>
 <input type="date" name="date_of_appointment" placeholder="select date">
 <input type="text" name="time_of_appointment" placeholder="Enter time">
 <input type="submit" value="apply">
</form>
</body>
</html>