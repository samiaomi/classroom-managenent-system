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
            String classr = request.getParameter("id");
            String first=request.getParameter("name");
            String Sec = request.getParameter("deg");
            String third = request.getParameter("dep");
            String fourth = request.getParameter("code");
            String day = request.getParameter("con");
            String code = request.getParameter("email");

            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project?zeroDateTimeBehavior=convertToNull","root","");
                Statement stmt = con.createStatement();

                String sql;
                sql = "use project";
                stmt.executeUpdate(sql);  
                
                stmt.executeUpdate("Update teacher set teacher_name= '" + first + "',teachers_designation = '" + Sec +  "' ,dept_name = '" + third + "' , course_code= '" + fourth + "' , email = '" + day + "',email='" + code + "' where teacher_id='" + classr + "'");
               
                ResultSet rs;
                rs=stmt.executeQuery("select * from teacher");
       
                %><center><h1>Updated Info</h1></center>
                <table border=6 align=center width= 100% style="text-align: center">
                <tr>
                    <td>classrooms</td>
                    <td>First Period</td>
                    <td>SEcond Period</td>
                    <td>Third Period</td>
                    <td>Fourth Period</td>
                    <td>Day</td>
                    <td>Course Code</td>
              
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
                    <td><h3><%out.print(rs.getString(6));%></h3></td>
                    <td><h3><%out.print(rs.getString(7));}%></h3></td>
                   
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




