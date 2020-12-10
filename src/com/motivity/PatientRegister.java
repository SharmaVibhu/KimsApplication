package com.motivity;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PatientRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	Connection con=null;
	PreparedStatement ps=null;
	public void init(ServletConfig config) throws ServletException {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
		}
		catch(ClassNotFoundException e) {
			e.printStackTrace();
		}
		String url="jdbc:mysql://localhost:3306/kims";
		String username="root";
		String password="root";
		try {
			con=DriverManager.getConnection(url,username,password);
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    String name=request.getParameter("name");
	    String password=request.getParameter("password");
	    String email=request.getParameter("email");
	    String phone=request.getParameter("phone");
	    long mobile=Long.parseLong(phone);
	    String address=request.getParameter("address");
	    String disease=request.getParameter("disease");
	    
	    PrintWriter pw=response.getWriter();
	    
	    String sql="insert into patient(name,password,email,phone,address,disease) values(?,?,?,?,?,?)";
	    try {
	    	ps=con.prepareStatement(sql);
	    	ps.setString(1, name);
	    	ps.setString(2,password);
	    	ps.setString(3,email);
	    	ps.setLong(4,mobile);
	    	ps.setString(5,address);
	    	ps.setString(6,disease);
	    	pw.println("<html> <body bgcolor='wheat'><center><h1>");
	    	int x=ps.executeUpdate();
	    	if(x==1) 
	    		pw.println("Patient registered successfully");
	    	pw.println("</h1></center></body></html>");
	    }
	    catch(SQLException e) {
	    	e.printStackTrace();
	    }
	}    
}