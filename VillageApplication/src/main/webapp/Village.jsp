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
    int SNo =0;
    String vlgname =request.getParameter("vlgname");
    String vlgtaluk = request.getParameter("vlgtaluk");
    String district =request.getParameter("district");
    String state = request.getParameter("state");
    
    int population = Integer.parseInt(request.getParameter("population"));
    int adult = Integer.parseInt(request.getParameter("adult"));
    int tenedu = Integer.parseInt(request.getParameter("tenedu"));
    int degreeedu = Integer.parseInt(request.getParameter("degreeedu"));
    
    String electricty =request.getParameter("electricty");
    String internet =request.getParameter("internet");
    String hospital =request.getParameter("hospital");
    String school =request.getParameter("school");
    String formers =request.getParameter("formers");
    String occupation =request.getParameter("occupation");
    
    String roadlight =request.getParameter("roadlight");
    String postbank =request.getParameter("postbank");
    String mla =request.getParameter("mla");
    String mp =request.getParameter("mp");
    
    String polio =request.getParameter("polio");
    String business =request.getParameter("business");
    String landtype =request.getParameter("landtype");
    
    String transport =request.getParameter("transport");
    String town =request.getParameter("town");
    
    
    try{
    Class.forName("com.mysql.cj.jdbc.Driver");

    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/villagedetails","root","Manoj@1999");
    
    try {
        String create_Student_table_query = "CREATE TABLE village(SNo INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,vlgname varchar(225), vlgtaluk varchar(225), district varchar(50), state varchar(50),population INTEGER NOT NULL, adult INTEGER NOT NULL, tenedu INTEGER NOT NULL, degreeedu INTEGER NOT NULL, electricty varchar(50), internet varchar(50), hospital varchar(50), school varchar(50), formers varchar(50), occupation varchar(50), roadlight varchar(50), postbank varchar(50), mla varchar(50), mp varchar(50), polio varchar(50), business varchar(50), landtype varchar(50), transport varchar(50),town varchar(50))";

        Statement stmt = con.createStatement();

        stmt.executeUpdate(create_Student_table_query);

        out.println("Village Table created successfully");
        out.println();

    } catch (Exception e) {
        out.println("Error: " + e);
        out.println();
    }
    
    PreparedStatement pst = con.prepareStatement("insert into village values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
    pst.setInt(1,SNo);
    pst.setString(2,vlgname);
    pst.setString(3,vlgtaluk);
    pst.setString(4,district);
    pst.setString(5,state);
    pst.setInt(6,population);
    pst.setInt(7, adult);
    pst.setInt(8, tenedu);
    pst.setInt(9, degreeedu);
    pst.setString(10, electricty);
    pst.setString(11, internet);
    pst.setString(12, hospital);
    pst.setString(13, school);
    pst.setString(14,formers);
    pst.setString(15, occupation);
    pst.setString(16, roadlight);
    pst.setString(17, postbank);
    pst.setString(18, mla);
    pst.setString(19, mp);
    pst.setString(20, polio);
    pst.setString(21, business);
    pst.setString(22, landtype);
    pst.setString(23, transport);
    pst.setString(24, town);
    
    int i=pst.executeUpdate();
    
    if(i>0) {
   	 out.println("Successfully Submitted!");
    }else {
    	out.println("Some thing Went wrong !");
    }
    
    }catch(Exception e){
    	out.println("Error: "+e);
    }
    %>

</body>
</html>