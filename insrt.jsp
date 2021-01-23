<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Proceess</title>
    </head>
  <body bgcolor=DARKGRAY>

    <%
        String id=request.getParameter("id");
        String name=request.getParameter("name");
        String deg=request.getParameter("deg");
        String dep=request.getParameter("dep");
        String code=request.getParameter("code");
   
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project?zeroDateTimeBehavior=convertToNull", "root", "");
            Statement st=conn.createStatement();

            st.executeUpdate("INSERT INTO department (dept_name, teacher_name,building_name, name_of_chairman, contact) VALUES ('"+id+"', '"+name+"', '"+deg+"', '"+dep+"', '"+code+"');");

            ResultSet rs;
            rs=st.executeQuery("select * from department ");
       %>
            <center><h1>Updated Info</h1></center>
                <table border=6 align=center width= 100% style="text-align: center">
                <tr>
                    <th><h3>Dept_name</h3></th>
                    <th><h3>Teacher Name</h3></th>
                    <th><h3>Building name</h3</th>
                    <th><h3>Name of chairman</h3></th>
                    <th><h3>Contact </h3></th>
                    
                </tr>
                <%while(rs.next())
                {
                %>
                <tr>
                    <td><h3><%out.print(rs.getString(1));%></h3></td>
                    <td><h3><%out.print(rs.getString(2));%></h3></td>
                    <td><h3><%out.print(rs.getString(3));%></h3></td>
                    <td><h3><%out.print(rs.getString(4));%></h3></td>
                    <td><h3><%out.print(rs.getString(5));}%></h3></td>
                    
                   
                </tr>
                </table>
    <%
    }
    catch(Exception e)
    {
    System.out.print(e);
    e.printStackTrace();
    }
%>
</body>
</html>