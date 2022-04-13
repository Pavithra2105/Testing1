<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*" %>
	
	<%
	
	int population = Integer.parseInt(request.getParameter("population"));
    int adult = Integer.parseInt(request.getParameter("adult"));
    int tenedu = Integer.parseInt(request.getParameter("tenedu"));
    int degreeedu = Integer.parseInt(request.getParameter("degreeedu"));
    int SNo = Integer.parseInt(request.getParameter("SNo"));
	
	
	try {
		 Class.forName("com.mysql.cj.jdbc.Driver");
		 
		 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/villagedetails","root","Manoj@1999");
	 
		 
		PreparedStatement pst = con.prepareStatement("UPDATE village SET population= ?, adult=?, tenedu=?, degreeedu=? WHERE SNo=?");
		    
		    pst.setInt(1,population);
		    pst.setInt(2, adult);
		    pst.setInt(3, tenedu);
		    pst.setInt(4, degreeedu);
		    pst.setInt(5,SNo);
		    int i=pst.executeUpdate();
	
		 
		    if(i>0) {
		      	 out.println("Successfully Submitted!");
		       }else {
		       	out.println("Some thing Went wrong !");
		       }
	}catch(Exception e){
		out.println("Error :"+e);
	}
	
	
	%>
</body>
</html>