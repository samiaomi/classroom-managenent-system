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
            String buil = request.getParameter("buil");

            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project?zeroDateTimeBehavior=convertToNull","root","");
                Statement stmt = con.createStatement();
                
                ResultSet rs;
               
              
                rs=stmt.executeQuery("SELECT teacher_name,course.course_code,course_name FROM teacher, course WHERE teacher.course_code=course.course_code and teacher_name='"+buil+"'"); 
                %><center><h1>Updated Info</h1></center>
                <table border=6 align=center width= 100% style="text-align: center">
                <tr>
                    <th>Building Name</th>
                    <th>Dept Name</th>
                    <th>Name of Chairman</th>
              
              
                </tr>
                <%while(rs.next())
                {
                %>
                <tr>
                    <td><h3><%out.print(rs.getString(1));%></h3></td>
                    <td><h3><%out.print(rs.getString(2));%></h3></td>
                     <td><h3><%out.print(rs.getString(3));}%></h3></td>
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




