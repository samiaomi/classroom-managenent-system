<!DOCTYPE html>
<html>
<head>
    
<link rel="stylesheet" href="language.css">
        <a href="newjsp.jsp" class="previous round">&#8249;</a>


<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


</head>
<body>
   
   

<style>
     body {
  background-image: url('r.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;
}
.btn {
    position: absolute;
  left: 600px;   
    top: 250px;
  background-color: #2196F3;
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
  outline: none;
}

.dropdown {
  position: absolute;
  left: 70px;   
    top: 00px;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  left: 600px;   
    top: 250px;
  background-color: #f1f1f1;
  min-width: 160px;
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown-content a:hover {background-color: #ddd}

.dropdown:hover .dropdown-content {
  display: block;
}

.btn:hover, .dropdown:hover .btn {
  background-color: #0b7dda;
}
h2 {  position: absolute;
  left: 450px;
  top: 50px;
color: gray}
</style>
</head>
<body>

<h2  style="color:black;">
 
 
  Click on the buttons to see all information
</h2>


<button class="btn">view</button>
<div class="dropdown">
  <button class="btn" style="border-left:1px solid #0d8bf2">
    <i class="fa fa-caret-down"></i>
  </button>
  <div class="dropdown-content">
    <a href="view.jsp">allotment information</a>
    <a href="classroom.jsp">classroom information</a>
    <a href="teacher.jsp">teachers information</a>
    <a href="department.jsp">Department infromtion</a>
 
  </div>
    
</body>
</html>
