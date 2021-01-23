<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Logout</title>
</head>
<body >
     <style>
         .button {
 top:500;
  background-color: lightpink;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 100px 4px;
  right: 100px;
  cursor: pointer;
}

            body {
  background-image: url('u.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;
}
</style>
<% session.invalidate(); %>
<center><h1 style="color:black;">You have been successfully logout</h1></center>
<div><a href="index.html" class="button">Home</a></div>
</body>
</html>