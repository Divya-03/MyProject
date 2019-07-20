<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Animated login form</title>
<style>
  body{ 
    margin:0px;
	padding:0px;
	font-family:sans-serif;
	background:#34495e;
  }
  .box{
    width:300px;
	top:200px;
	left:50%;
	position:relative;
	transform:translate(-50%,-50%);
	background:#191919;
	text-align:center;
	padding:40px;
    }
	.box h1{
	 color:white;
	 font-width:500;
	}
	.box input[type="text"],.box input[type="password"]{
	  border:0;
	  background:none;
	  display:block;
	  margin:20px auto;
	  text-align:center;
	  border:2px solid #3498db;
	  padding:14px 10px;
	  width:200px;
	  outline:none;
	  color:white;
	  border-radius:24px;
	  transition:0.25s;
	  }
	  .box input[type="text"]:hover,.box input[type="password"]:hover{
	    width:280px;
		border-color: #2ecc71;
	  }
	  .box input[type="submit"]{
	    border:0;
	  background:none;
	  display:block;
	  margin:15px auto;
	  text-align:center;
	  border:1px solid #ffdab9;
	  padding:14px 40px;
	  width:100px;
	  outline:none;
	  color:#dc143c;
	  font:bold;
	  
	  transition:0.25s;
	  cursor:pointer;
	  }
	  .box input[type="submit"]:hover{
	  background: #ffdab9;
	  }
 </style>
</head>
<body>

  <form class="box" action="login" method="post">
  <h1>LOGIN</h1>
  <input type="text" name="uname" placeholder="Username">
  <input type="password" name="pswrd" placeholder="Password">
  <input type="submit"  value="Login">
  
  </form>
  
  </body>
  </html>