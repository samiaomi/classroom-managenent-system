<%@page import="java.sql.*"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Total database</title>
    </head>
    <body>
        <%
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/project?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "");
         
            Statement st= con.createStatement();
            ResultSet rs=st.executeQuery("select * from allocate");
                %>
                <center><h1>Retrieve data from database in jsp</h1></center>
                <table border=6 align=center width= 100% style="text-align: center">
                <tr>
                <td>classrooms</td>
                <td>First Period</td>
                <td>SEcond Period</td>
                <td>Third Period</td>
                <td>Fourth Period</td>
                <td>Day</td>
               
                <td>update</td>
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
                    <td><h3><%out.print(rs.getString(7));%></h3></td>
                  
                </tr>
                </table>
               
                <%
                } 
        }
        catch(SQLException e){
        out.print(e);%><br><%
             }
    %>
    </body>
</html>
