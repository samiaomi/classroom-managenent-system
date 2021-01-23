
<!DOCTYPE html>
<%@page import="java.sql.*"%>

<html>
    <head>
      
            
        <title>JSP Page</title>
        
    </head>
    <body>
          <style>
            
            body {
  background-image: url('bea.jpeg');
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
                    rs = stmt.executeQuery("select * from teacher");
            
         %>
<center><h1>Teacher Info</h1></center>
     <table  style="color:black;"border=6 align=center width= 100% style="text-align: center">
<tr>
<th>Teacher id</th>
<th>Teacher name</th>
<th>Designation</th>
<th>Dept name</th>
<th>Course code</th>
<th>Contact no</th>
<th>Email</th>


   
            <%while(rs.next()){%>
            <tr>
                <th style="border: 1px  solid black;
                    padding: 20px"><%out.print(rs.getString(1));%>
                <th style="border: 1px solid black;
                    padding: 20px"><%out.print(rs.getString(2));%>
                <td style="border: 1px solid black;
                    padding: 20px"><%out.print(rs.getString(3));%>
                <td style="border: 1px solid black;
                    padding: 20px"><%out.print(rs.getString(4));%>
                     <td style="border: 1px solid black;
                    padding: 15px"><%out.print(rs.getString(5));%>
                          <td style="border: 1px solid black;
                              padding: 20px"><%out.print(rs.getString(6));%>
                          <td style="border: 1px solid black;
                    padding: 20px"><%out.print(rs.getString(7));}%>
                         
                    
            </tr>
        </table>
            <br>
            <%
            
            }
            catch(Exception e){ System.out.println(e);}
            %>
    </body>
</html>
