<%@page import="java.sql.*"%>

<%
String cust_name=request.getParameter("cust_name");
System.out.println(cust_name);
String address=request.getParameter("address"); 
System.out.println(cust_name);
String mob_no=request.getParameter("mob_no");
System.out.println(cust_name);
String gst=request.getParameter("gst");
System.out.println(cust_name);
String cust_acc_no=request.getParameter("cust_acc_no");
System.out.println(cust_name);
String username=request.getParameter("username");
System.out.println(cust_name);
String bill_date=request.getParameter("bill_date");
System.out.println(cust_name);
String due_date=request.getParameter("due_date");
System.out.println(cust_name);
String plan_name=request.getParameter("plan_name");
System.out.println(cust_name);
String plan_duration=request.getParameter("plan_duration");
System.out.println(cust_name);
String crd_terms=request.getParameter("crd_terms");
System.out.println(cust_name);
String install_char=request.getParameter("install_char");
System.out.println(cust_name);
String pid_char=request.getParameter("pid_char");
System.out.println(cust_name);
String ott_char=request.getParameter("ott_char");
System.out.println(cust_name);


try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dwaraka","root","Flamingo@7");
	
	Statement st=con.createStatement();
	System.out.println("successful");
	st.executeUpdate("insert into details (cust_name, address, mob_no, gst, cust_acc_no, username, bill_date, due_date, plan_name, plan_duration, crd_terms, install_char, pid_char, ott_char ) values ('"+cust_name+"','"+address+"','"+mob_no+"','"+gst+"','"+cust_acc_no+"','"+username+"','"+bill_date+"','"+due_date+"','"+plan_name+"','"+plan_duration+"', '"+crd_terms+"','"+install_char+"', '"+pid_char+"','"+ott_char+"');");
	System.out.println("successful22");
	response.sendRedirect("save.html");
	
	
	 
	
	
}
catch(Exception e){
	
	response.sendRedirect("error.html");
}

%>

