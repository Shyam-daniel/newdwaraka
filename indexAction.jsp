<%@page import="java.sql.*"%>

<%
/* String username=request.getParameter("username");
String password=request.getParameter("password"); */

Statement st = null;
ResultSet rs = null;
String username = request.getParameter("username");
String password = request.getParameter("password");
String name=null;
session.setAttribute("username",username);
session.setAttribute("password",password);

try{
	/* Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dwaraka","root","Flamingo@7");
	System.out.println("successful");
	Statement st=con.createStatement();
	st.executeUpdate("insert into dwk_credentials (username, password) values ('"+username+"','"+password+"')");
	response.sendRedirect("save.html");
	 */
	Class.forName("com.mysql.jdbc.Driver");	
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dwaraka","root","Flamingo@7");
	st = con.createStatement();
	String qry ="select * from dwk_credentials where  username='"+username+"' AND password='"+password+"'"; 
	rs = st.executeQuery(qry);
	if(rs.next()){
	name=rs.getString("username");
	session.setAttribute("username",name);
	response.sendRedirect("enter_details.html");
	
	}
	else{
		out.println("Enter correct username, password");		
	}
	con.close();
	st.close();
	 
	 
	
	
}
catch(Exception e){
	
	response.sendRedirect("error.html");
}

%>

