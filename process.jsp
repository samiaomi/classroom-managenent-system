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
        String con=request.getParameter("con");
        String email=request.getParameter("email");
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project?zeroDateTimeBehavior=convertToNull", "root", "");
            Statement st=conn.createStatement();

            st.executeUpdate("INSERT INTO teacher (teacher_id, teacher_name, teachers_designation, dept_name, course_code, contact_no, Email) VALUES ('"+id+"', '"+name+"', '"+deg+"', '"+dep+"', '"+code+"', '"+con+"', '"+email+"');");

            ResultSet rs;
            rs=st.executeQuery("select * from teacher ");
       %>
            <center><h1>Updated Info</h1></center>
                <table border=6 align=center width= 100% style="text-align: center">
                <tr>
                    <th><h3>Teacher ID</h3></th>
                    <th><h3>Teacher Name</h3></th>
                    <th><h3>Designation</h3</th>
                    <th><h3>Dept Name</h3></th>
                    <th><h3>Contact No</h3></th>
                    <th><h3>Course Code</h3></th>
                    <th><h3>Email</h3></th>
              
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
    catch(Exception e)
    {
    System.out.print(e);
    e.printStackTrace();
    }
%>
</body>
</html>