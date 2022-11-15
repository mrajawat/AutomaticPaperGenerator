<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
  /* background-color: #2196F3; */
  padding: 0;
  margin:0;
}
.grid-item {
  /* background-color: rgba(255, 255, 255, 0.8); */
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
.item1 tr td a:hover{
color:black;
}
.item2 {
  grid-column: 3 / span 2;
  grid-row: 1 / span 2;
  height:100vh;
  background: gray;
}
.item2 form{
margin-top: 60px;
color:black;


}

.item2 table tr td{
padding-right: 30px;
padding-bottom: 5px;

}
.btn{
background: #2c3338;
border:none;
}
.bottomdiv{
color:black;


}
.bottomdiv #btn1{
text-decoration: none;
text-align:center;
color:#fff;
display:block;

background: #218c74;
border-radius: 5px;
float: left;
width:60px;

}
.bottomdiv #btn2{
text-decoration: none;
text-align:center;
color:#fff;
display:block;

background: #ff4d4d;
border-radius: 5px;
float: right;
width:60px;
}
select{
width:150px;
}
.shw{
width:150px;
}
.row-3{
background: red;
}
h3{
color:green;
}
h3{
    -moz-animation: cssAnimation 0s ease-in 3s forwards;
    /* Firefox */
    -webkit-animation: cssAnimation 0s ease-in 3s forwards;
    /* Safari and Chrome */
    -o-animation: cssAnimation 0s ease-in 3s forwards;
    /* Opera */
    animation: cssAnimation 0s ease-in 3s forwards;
    -webkit-animation-fill-mode: forwards;
    animation-fill-mode: forwards;
}
@keyframes cssAnimation {
    to {
        width:0;
        height:0;
        overflow:hidden;
    }
}
@-webkit-keyframes cssAnimation {
    to {
        width:0;
        height:0;
        visibility:hidden;
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
<div class="topdiv" align="center">
<center><h1>Select type of questions</h1></center>
<form action="show" method="post" >
<table>
<tr>
<td><h6>Paper for batch</h6></td>
<td>
<select name="batch" id="batch">
<option value="BCA">BCA</option>
  <option value="MCA">MCA</option>
  <option value="CSE">CSE</option>
 </select>
 </td>
</tr>
<tr>
<td>
<h6>Semester</h6>
</td>
<td>
	<input class="shw" type="number" name="semester">
</td>
</tr>
<tr>
<td><h6>Subject</h6></td>
<td>
<select name="subject" id="subject">
<option value="java">java</option>
  <option value="c">c</option>
  <option value="php">php</option>
 </select>
 </td>
</tr>
<tr>
<td></td>
<td><input type="submit" class="btn btn-primary" value="submit"></td>
</tr>
</table>

</form>
</div>
<hr>
<div class="bottomdiv" align="center">
        <table border="1" cellpadding="5">
            <tr>
                <th>QuestionId</th>
                <th>Question</th>
                <th>Difficulty</th>
                <th>Module</th>
                <th>Semester</th>
                <th>Subject</th>
                <th>Branch</th>
            </tr>
            <c:forEach var="que" items="${list}">
                <tr>
                    <td><c:out value="${que.questionid}" /></td>
                    <td><c:out value="${que.question}" /></td>
                    <td><c:out value="${que.difficulty}" /></td>
                    <td><c:out value="${que.module}" /></td>
                    <td><c:out value="${que.semester}" /></td>
                    <td><c:out value="${que.subject}" /></td>
                    <td><c:out value="${que.branch}" /></td>
                    <td>
          <a id="btn1" href="editquestion.jsp?questionid=<c:out value='${que.questionid}' />">Edit</a>
                        &nbsp;&nbsp;&nbsp;&nbsp;
   <a id="btn2" href="delete?questionid=<c:out value='${que.questionid}' />">Delete</a>                   
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>   



</div>	
</div>
	



<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy" crossorigin="anonymous"></script>

</body>
</html>