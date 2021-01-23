
<!DOCTYPE html>
<%@page import="java.sql.*"%>

<html>
    <head>
      
            
        <title>JSP Page</title>
        
    </head>
    <body>
        <style>
            
            body {
  background-image: url('dt.jpg');
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
                    
                    ResultSet rs;
                    rs = stmt.executeQuery("select * from allocate");
            
         %><center><h1>Allotment Info</h1></center>
     <table  style="color:black;"border=6 align=center width= 100% style="text-align: center">
<tr>
<td>classrooms</td>
<td>First Period</td>
<td>Second Period</td>
<td>Third Period</td>
<td>Fourth Period</td>
<th>Day</th>

   
            <%while(rs.next()){%>
            <tr>
                <td style="border: 1px bold black;
                    padding: 15px"><%out.print(rs.getString(1));%>
                <td style="border: 1px solid black;
                    padding: 15px"><%out.print(rs.getString(2));%>
                <td style="border: 1px solid black;
                    padding: 15px"><%out.print(rs.getString(3));%>
                <td style="border: 1px solid black;
                    padding: 15px"><%out.print(rs.getString(4));%>
                     <td style="border: 1px solid black;
                    padding: 15px"><%out.print(rs.getString(5));%>
                          <td style="border: 1px solid black;
                    padding: 15px"><%out.print(rs.getString(6));}%>
                              
                         
                    
            </tr>
        </table>
            <br>
            <%
            
            }
            catch(Exception e){ System.out.println(e);}
            %>
    </body>
</html>
