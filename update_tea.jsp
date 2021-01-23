<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin_Insert</title>
    </head>
    <body text="MAROON" bgcolor=LIGHTGRAY>
        <div style="margin-top: 20%">
        <form action="show_tea.jsp">
            <font size="5ch">Teacher ID:</font>
            <input type="text" name="classroom" >
            <font size="5ch">Name:</font>
            <input type="text" name="First_Period" >
            <font size="5ch">Designation:</font>
            <input type="text" name="Second_Period" >
            <font size="5ch">Dept name:</font>
            <input type="text" name="Third_Period" ><br><br>
            <font size="5ch">Course code:</font>
            <input type="text" name="Fourth_Period" >
            <font size="5ch">Contact no</font>
            <input type="text" name="Day" >
            <font size="5ch">Email Id:</font>
            <input type="email" name="email">
             <br><br>

            <input type="submit" value="Update">
            
        </form>  
        </div>
    </body>
</html>