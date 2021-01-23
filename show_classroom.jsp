<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
  <body bgcolor=DARKGRAY>
        <%
            String buil = request.getParameter("id");

            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project?zeroDateTimeBehavior=convertToNull","root","");
                Statement stmt = con.createStatement();
                
                ResultSet rs;
               
              
                rs=stmt.executeQuery("SELECT * from classroom WHERE classRooms='"+buil+"'"); 
                %><center><h1>Updated Info</h1></center>
                <table border=6 align=center width= 100% style="text-align: center">
                <tr>
                    <th>Classroom</th>
                    <th>Capability</th>
                    <th>Air</th>
                     <th>Name of Chairman</th>
               <th>Name of Chairman</th>
               <th>Name of Chairman</th>
              
              
                </tr>
                <%while(rs.next())
                {
                %>
                <tr>
                   
                        <td><h3><%out.print(rs.getString(1));%></h3></td>
                        <td><h3><%out.print(rs.getString(2));%></h3></td>
                        <td><h3><%out.print(rs.getString(3));%></h3></td>
                        <td><h3><%out.print(rs.getString(4));%></h3></td>
                        <td><h3><%out.print(rs.getString(5));%></h3></td>
                        <td><h3><%out.print(rs.getString(6));}%></h3></td>
                    
                </tr>
                
                </table>
            <%
                 }
             catch (SQLException e) {
                out.print(e.getMessage());%><br><%
            }
        %>


    </body>
</html>




