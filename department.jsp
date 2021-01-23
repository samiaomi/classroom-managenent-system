
<!DOCTYPE html>
<%@page import="java.sql.*"%>

<html>
    <head>
      
            
        <title>JSP Page</title>
        
    </head>
    <body>
        <style>
            
            body {
  background-image: url('we.jpeg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;
}
</style>
        <%
            try{
              
            Class.forName("com.mysql.jdbc.Driver");
                    Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/project?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "");
                    Statement stmt = (Statement) con.createStatement();
                    String sql;
                    sql = "use project";
                    stmt.executeUpdate(sql);
                    ResultSet rs;
                    rs = stmt.executeQuery("select * from department");
            
         %>
   <center><h1 style="color:black;">Department Info</h1></center>
     <table  style="color:black;"border=8 align=center width= 100% style="text-align: center">
<tr>
<td>Dept name</td>
<td>Teacher's name</td>
<td>Building name</td>
<td>Name of Chairman</td>
<td>Contact Number</td>



  
            <%while(rs.next()){%>
            <tr>
                <td style="border: 1px solid black;
                    padding: 15px"><%out.print(rs.getString(1));%>
                <td style="border: 1px solid black;
                    padding: 15px"><%out.print(rs.getString(2));%>
                <td style="border: 1px solid black;
                    padding: 15px"><%out.print(rs.getString(3));%>
                <td style="border: 1px solid black;
                    padding: 15px"><%out.print(rs.getString(4));%>
                     <td style="border: 1px solid black;
                    padding: 15px"><%out.print(rs.getString(5));}%>
                         
                    
            </tr>
        </table>
            <br>
            <%
            
            }
            catch(Exception e){ System.out.println(e);}
            %>
    </body>
</html>
