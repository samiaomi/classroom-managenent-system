
<!DOCTYPE html>
<%@page import="java.sql.*"%>

<html>
    <head>
      
            
        <title>JSP Page</title>
        
    </head>
    <body>
         <style>
            
            body {
  background-image: url('edu.jpg');
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
                    rs = stmt.executeQuery("select * from classroom");
            
         %>
    %><center><h1 style="color:white;">Classroom Info</h1></center>
     <table  style="color:white;"border=8 align=center width= 100% style="text-align: center">
<tr>
<th>classrooms</th>
<th>Capabiliy</th>
<th>Computer</th>
<th>Air Conditioning</th>
<th>Sound System</th>
<th>Projector</th>


   
            <%while(rs.next()){%>
            <tr>
                <td style="border: 2px solid white;
                    padding: 20px"><%out.print(rs.getString(1));%>
                <td style="border: 2px solid white;
                    padding: 20px"><%out.print(rs.getString(2));%>
                <td style="border: 2px solid white;
                    padding: 20px"><%out.print(rs.getString(3));%>
                <td style="border: 2px solid white;
                    padding: 20px"><%out.print(rs.getString(4));%>
                     <td style="border: 2px solid white;
                    padding: 20px"><%out.print(rs.getString(5));%>
                          <td style="border: 2px solid white;
                    padding: 20px"><%out.print(rs.getString(6));}%>
                         
                    
            </tr>
        </table>
            <br>
            <%
            
            }
            catch(Exception e){ System.out.println(e);}
            %>
    </body>
</html>
