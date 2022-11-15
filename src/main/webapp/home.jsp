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

<style type="text/css">
body{
background: #2c3338;
color:#fff;
}

h1{
color: #fff;
}
.container{
padding-top: 90px;
}
.container form{

margin: auto;
  padding: 22px 22px 22px 22px;
  width: 100%;
  border-radius: 5px;
  background: #282e33;
  border-top: 3px solid #434a52;
  border-bottom: 3px solid #434a52;
  color: #fff;
}
.container form input[type="submit"] {
  background: #b5cd60;
  border: 0;
  width: 100%;
  height: 40px;
  border-radius: 3px;
  color: white;
  cursor: pointer;
  transition: background 0.3s ease-in-out;
  margin-top:10px;
}
.container form input[type="submit"]:hover {
  background: #16aa56;
}
.container form input[type="text"] {
  
  border-radius: 0px 3px 3px 0px;
  color: #a9a9a9;
  margin-bottom: 1em;
  padding: 0 16px;
  width: 260px;
  height: 50px;
}
.container form input[type="password"] {
  
  border-radius: 0px 3px 3px 0px;
  color: #a9a9a9;
  margin-bottom: 1em;
  padding: 0 16px;
  width: 260px;
  height: 50px;
}
table{
margin:auto;
}

table tr td{
padding-right:25px;
padding-bottom: 5px;
}

h2{
text-align:center;
color:#fff;
font-size: 1rem;
margin-top:"20px";
display: block;

background: green;
width:400px;
height:40px;
line-height: 30px;
margin: auto;
box-shadow: 2px 0 5px 5px green;
margin-top: 20px;

}
h2 , h3{
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
h3{
text-align:center;
color:#fff;
font-size: 1rem;
margin-top:"20px";
display: block;

background: red;
width:400px;
height:40px;
line-height: 30px;
margin: auto;
box-shadow: 2px 0 5px 5px red;
margin-top: 20px;
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

<div class="container">
<form action="loginservlet" method="post" name="loginform">
<table>
<tr>
<td>Email</td>
</tr>
<tr>
<td><input type="text" name="email"></td>
</tr>
<tr>
<td>Password</td>
</tr>
<tr>
<td><input type="password" name="password">${message}</td>
</tr>
<tr>
<td><input class="btn btn-primary" type="submit" value="Login"><br>Don't have account?<a href="signup.jsp">Register here</a>
<p style="color:red;">${param.message}</p>
</td>
</tr>
</table>

</form>
</div>
<script type="text/javascript">
	$(document).ready(function(){
		$("#loginForm").validate({
			rules:{
				email:{
					required:true,
					email:true
				},
				password:"required",
			},
			message:{
				email:{
					required:"please enter email",
					email:"please enter a valid email address"
				},
				password:"please enter password"
			}
		});
	});
	
	</script>


<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy" crossorigin="anonymous"></script>
</body>
</html>