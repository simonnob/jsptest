<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HOME</title>
</head>
<body>
	<%
		Class.forName("com.mysql.jdbc.Driver");
	%>
	<h2 style="color: fuchsia;">
		Database Name:
		<%=DriverManager
					.getConnection("jdbc:mysql://$OPENSHIFT_MYSQL_DB_HOST:$OPENSHIFT_MYSQL_DB_PORT/jsptest",
							"adminSNWSInm", "_Iq1442CgWzk")
					.getMetaData().getDatabaseProductName()%></h2>
</body>
</html>