<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
  <body>
        <%
            String classr = request.getParameter("classroom");
            String first=request.getParameter("First_Period");
            String Sec = request.getParameter("Second_Period");
            String third = request.getParameter("Third_Period");
            String fourth = request.getParameter("Fourth_Period");
            String day = request.getParameter("Day");
      

            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project?zeroDateTimeBehavior=convertToNull","root","");
                Statement stmt = con.createStatement();

                String sql;
                sql = "use project";
                stmt.executeUpdate(sql);  
                
                stmt.executeUpdate("Update allocate set First_Period= '" + first + "',SEcond_Period = '" + Sec +  "' , Third_Period = '" + third + "' , Fourth_Period = '" + fourth + "' , Day = '" + day +  "' where classRooms='" + classr + "'");
               
                ResultSet rs;
                rs=stmt.executeQuery("select * from allocate");
       
                %><center><h1>Updated Info</h1></center>
                <table border=8 align=center width= 100% style="text-align: center">
                <tr>
                    <td>classrooms</td>
                    <td>First Period</td>
                    <td>SEcond Period</td>
                    <td>Third Period</td>
                    <td>Fourth Period</td>
                    <td>Day</td>
                
              
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




