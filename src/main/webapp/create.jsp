<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title><!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<!-- Font Awesome CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <style type="text/css">
     body{
    background: #2c3338;
     color: #606468;
    }
    .grid-container {
  display: grid;
  grid-template-columns: 300px 0 auto;
  grid-template-rows: 230px 230px;
  gap: 1px;
 /*  background-color: #2196F3; */
  padding: 0;
  margin:0;
}
.grid-item {
/*   background-color: rgba(255, 255, 255, 0.8); */
  padding: 20px;
  font-size: 1rem;
}
.item1 {
  grid-column: 1;
  grid-row: 1 / span 2;
	padding-right: 0px;
	height:100vh;
}
.item1 tr td{
list-style: none;
padding:10px;
display: block;
border:1px solid grey;
border-radius: 50px 0 0 50px;
border-right:0;
width:280px;
cursor: pointer;
}
.item1 tr td:hover{
background: gray;
transition: background 0.3s ease-in-out;

}
.item1 tr td  a{
text-decoration: none;
color:#fff;

}
.item tr td a:hover{
color:black;
}

.item2 {
  grid-column: 3 / span 2;
  grid-row: 1 / span 2;
  height:100vh;
   background: gray;
}
.row-3{
background: red;
}


/*Second container-paper  */
.paper{
width:700px;
color:black;
margin-left:20%;
margin-top:30px;
padding:30px;
}
.paper table{
margin-left: 100px;
}
.paper table tr{
padding:10px;
}
.paper table tr td{
padding-right: 30px;
}
#branch{
width:200px;
text-align: center;

}
#semester{
width:200px;
text-align: center;
}
#subject{
width:200px;
text-align: center;
}
#difficulty{
width:200px;
text-align: center;
}
#module{
width:200px;
text-align: center;
}
#qpm{
width:200px;
text-align: center;
}
#txt{
width:200px;
background: #dfe6e9;
border-radius: 7px;
text-align: center;
}
#txt:hover{
background:#b2bec3;
border:solid #b2bec3;
}
#time{
width:200px;
text-align: center;
}
.btn{
margin-top:10px;
border:1px solid black;
width:200px;
}
.btn:hover{
background: #2d3436;
color: #fff;
border:none;
}


    </style>
</head>
<body>

<div class="grid-container">
<div class="grid-item item1">
<div class="jumbotron">
  <h1 class="display-4">Dashboard</h1>
  <i class="fa-regular fa-user-large"></i>
  <p class="lead"></p>
  <hr class="my-4">
</div>
	<table>
<tr><td><a href="dashboard.jsp">Home</a></td></tr>
<tr><td><a href="add.jsp">Add Questions</a></td></tr>
<tr><td><a href="create.jsp">get Question Paper</a></td></tr>
<tr><td><a href="show.jsp">Show Questions</a></td></tr>
<tr>
<td><a href="logoutservlet">Logout</a></td>
</tr>

</table>
</div>
<div class="grid-item item2">
<center><h1>Create Paper</h1></center>
<hr>
	<div class="container paper">
	<form action="createpap" method="post">
		<table>
		<tr>
		<td>Paper for Branch</td>
		<td><select name="branch" id="branch">
  <option value="BCA">BCA</option>
  <option value="MCA">MCA</option>
  <option value="CSE">CSE</option>
  <option value="MTech">MTech</option>
</select></td>
		</tr>
		<tr>
		<td>Semester</td>
		<td><select name="semester" id="semester">
  <option value="1">1</option>
  <option value="2">2</option>
  <option value="3">3</option>
  <option value="4">4</option>
</select></td>
		</tr>
		<tr>
		<td>Subject</td>
		<td><select name="subject" id="subject">
  <option value="java">java</option>
  <option value="c">c</option>
  <option value="c++">c++</option>
  <option value="python">python</option>
</select></td>
		</tr>
		<tr>
		<td>Difficulty of paper</td>
		<td><select name="difficulty" id="difficulty">
  <option value="easy">easy</option>
  <option value="medium">medium</option>
  <option value="hard">hard</option>
  <option value="torture">torture</option>
</select></td>
		</tr>
		<tr>
		<td>Number of Modules</td>
		<td><select name="module" id="module">
  <option value="1">1</option>
  <option value="2">2</option>
  <option value="3">3</option>
  <option value="4">4</option>
</select></td>
		</tr>
		<tr>
		<td>Questions per Module</td>
		<td><select name="qpm" id="qpm">
  <option value="3">3</option>
  <option value="4">4</option>
  <option value="5">5</option>
  <option value="6">6</option>
</select></td>
		</tr>
		<tr>
		<td>Name of Question Paper</td>
		<td><input id="txt" type="text" name="qpname"></td>
		</tr>
		<tr>
		<td>Question paper code</td>
		<td><input id="txt" type="text" name="code"></td>
		</tr>
		<tr>
		<td>Marks per module</td>
		<td><input id="txt" type="text" name="markspm"></td>
		</tr>
		<tr>
		<td>Max Marks
		</td>
		<td><input id="txt" type="text" name="mmarks">
		</td>
		</tr>
		<tr>
		<td>Choice per Module</td>
		<td><input id="txt" type="text" name="choice"></td>
		</tr>
		<tr>
		<td>Time for Exam</td>
		<td><select name="time" id="time">
  <option value="1hr">1hr</option>
  <option value="1:30hr">1:30hr</option>
  <option value="2hr">2hr</option>
  <option value="2:30hr">2:30hr</option>
</select></td>
		</tr>
		<tr>
		<td></td>
		<td><input class="btn" type="submit" value="create"></td>
		</tr>
		</table>
		</form>
	</div>
</div>	
</div>
	



<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy" crossorigin="anonymous"></script>

</body>
</html>