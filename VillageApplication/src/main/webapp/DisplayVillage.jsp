<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
|<%@ page import="java.sql.*" %>
	
	<% 
	int SNo = Integer.parseInt(request.getParameter("SNo"));
	
	try {
		 Class.forName("com.mysql.cj.jdbc.Driver");
		 
		 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/villagedetails","root","Manoj@1999");
		 
		 String view_village_details = "SELECT * FROM village where SNo='"+SNo+"'";
			
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(view_village_details);
			while (rs.next()){
%>
<h3>Village Details</h3>
<table border="1">
 <tbody>
 <tr>
 <th>S.NO. : </th>
 <th>Village Name : </th>
 <th>Village Taluk </th>
 <th>District</th>
 <th>State</th>
 <th>Population</th>
 <th>Adult</th>
 <th>Educated till 10th</th>
 <th>Educated till Degree</th>
 <th>Electricity Facility ?</th>
 <th>Internet Facility ?</th>
 <th>Hospital Facility ?</th>
 <th>School Facility ?</th>
 <th>No of Farmers</th>
 <th>Peoples Occupation</th>
 <th>Road Street , Light Facility ?</th>
 <th>Post office , Bank Facility ?</th>
 <th>Village MLA Name</th>
 <th>Village MP Name</th>
 <th>Vaccinations , polio</th>
 <th>Business Opportunity </th>
 <th>Village Land Type</th>
 <th>Bus and Transport Facility ?</th>
 <th>Major Town in Village </th>
</tr>
<tr>
 <td><%= rs.getInt(1)%></td>
 <td><%= rs.getString(2)%></td>
 <td><%= rs.getString(3)%></td>
 <td><%= rs.getString(4)%></td>
 <td><%= rs.getString(5)%></td>
 <td><%= rs.getInt(6)%></td>
 <td><%= rs.getInt(7)%></td>
 <td><%= rs.getInt(8)%></td>
 <td><%= rs.getInt(9)%></td>
 <td><%= rs.getString(10)%></td>
 <td><%= rs.getString(11)%></td>
 <td><%= rs.getString(12)%></td>
 <td><%= rs.getString(13)%></td>
 <td><%= rs.getString(14)%></td>
 <td><%= rs.getString(15)%></td>
 <td><%= rs.getString(16)%></td>
 <td><%= rs.getString(17)%></td>
 <td><%= rs.getString(18)%></td>
 <td><%= rs.getString(19)%></td>
 <td><%= rs.getString(20)%></td>
 <td><%= rs.getString(21)%></td>
 <td><%= rs.getString(22)%></td>
 <td><%= rs.getString(23)%></td>
 <td><%= rs.getString(24)%></td>
 </tr><br>
 </tbody>
 </table>
<% 
	}
	}catch(Exception e){
			 out.println("Error :"+e);
		 }
	%>

</body>
</html>