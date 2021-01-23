<html>
    <head>
        <title>login</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body bgcolor="lightblue">
        <style>
            
            body {
  background-image: url('log.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;
}
            .button {position: absolute;
  left: 590px;   
    top: 130px;
  padding: 15px 25px;
  font-size: 24px;
  text-align: center;
  cursor: pointer;
  outline: none;
  color: #fff;
  background-color: #4CAF50;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}

.button:hover {background-color: #3e8e41}

.button:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);

}
table {
  width:30%;
}
table, th, td {
  border: 0;
  border-collapse: collapse;
  background-color: gray;  
}
</style>
<center><h1 style="color:white;"> WELCOME  TO  CLASSROOM  ALLOTMENT  SYSTEM! </h1></center>
<br><br><br><br><br><br><br>
    <center><h3 style="color:white;"> Please login to continue: </h3></center>
        <form action="newjsp.jsp" method="post">
        <table align="center" cellspacing="0" cellpadding="0" style="text-align: center">
             
            <tr>            
            <br><br>
            <td align="center"><br><br>Username:  <input type="text" name="name"><br><br> </td>
            </tr> <tr>     
                <td align="center">Password:  <input type="password" name="password"><br><br> </td>
            </tr> <tr>
                <td align="right"> <input type="submit" value="login"><br> </td>
            </tr> 
            
        </table>
        </form> 
    </body>
</html>
