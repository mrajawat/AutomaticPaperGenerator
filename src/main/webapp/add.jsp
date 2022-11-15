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
/*   background-color: #2196F3; */
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
  background: gray;
  height:100vh;
  
}
.item2 form{
margin-top: 60px;
}

.item2 table{
margin-left: 25%;
}
.item2 table tr td{
	padding-left:30px;
	padding-bottom:5px;
	color:#2c3338;
	font-weight: bold;
	
}
.row-3{
background: red;
}
#textarea{
border-radius: 7px;
}
#difficulty{
background-color: #fff;
border:1px solid gray;
width:210px;
height:40px;
border-radius: 7px;
}
#module{
background-color: #fff;
border:1px solid gray;
width:210px;
height:40px;
border-radius: 7px;
}
#semester
{
background-color: #fff;
border:1px solid gray;
width:210px;
height:40px;
border-radius: 7px;
}
.btn{
background: #2c3338;
border:none;
}
.item2 form input[type="text"] {
  
  border-radius: 7px;
  margin-bottom: 1em;
  padding: 0 16px;
  width: 210px;
  height: 40px;
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
<center><h1>Add Question here</h1></center>
<form action="add" method="post">
<table>

<tr>
<td>Question</td>
<td><textarea id="textarea" name="question" rows="2" cols="18"></textarea></td>
</tr>
<tr>
<td>Difficulty of question</td>
<td><select  name="difficulty" id="difficulty">
  <option value="easy">Easy</option>
  <option value="medium">Medium</option>
  <option value="hard">Hard</option>
  <option value="torture">Torture</option>
</select></td>
</tr>
<tr>
<td>Module</td>
<td><select name="module" id="module">
  <option value="module1">module1</option>
  <option value="module2">module2</option>
  <option value="module3">module3</option>
  <option value="module4">module4</option>
</select></td>
</tr>
<tr>
<td>Semester</td>
<td><select name="semester" id="semester">
  <option value="1">1</option>
  <option value="2">2</option>
  <option value="3">3</option>
  <option value="4">4</option>
</select>
</td>
</tr>
<tr>
<td>Subject</td>
<td><input type="text" name="subject"></td>
</tr>
<tr>
<td>Branch</td>
<td><input type="text" name="branch"></td>
</tr>
<tr>
<td>
</td>
<td><input class="btn btn-primary" type="submit" value="submit"></td>
</tr>
</table>

</form>


</div>	
</div>
	



<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy" crossorigin="anonymous"></script>

</body>
</html>