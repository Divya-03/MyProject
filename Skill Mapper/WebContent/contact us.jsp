<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact form</title>
<style>
 body{
 margin:0;
 padding:0;
 background-size:cover; 
 font-family:Century Gothic;
 background-image: url('images/bulb.jpg');
 }
 .title{
  margin-top:100px;
  
 }
 .title h1{
  text-align:center;
  line-height:10px;
  color:white;
 }
 .title h2{
  text-align:center;
  color:white;
 }
 .box{
  text-align:center;
  background:transparent;
 }
 form{
  margin-top:50px;
  background:transparent;
 }
 .form-design{
  width:600px;
  border:none;
  outline:none;
  border-bottom:1px solid gray;
  font-size:18px;
  margin-bottom:16px;
  background:transparent;
  color:white;
 }
 input{
  height:45px;
  }
  input[type="submit"]{
   background-color:black;
  
  }
  
 }
 
</style>

</head>
<body>
 
<div class="title">
  <h1><u>CONTACT US</u></h1>
  <h2>We are ready to lead you into the future</h2>
  </div>
  <div class="box">
    <form>
      <input type="text" name="name" class="form-design" placeholder="Enter your name"><br>
      <input type="email" name="email" class="form-design" placeholder="Enter your mail-id"><br>
      <textarea name="message" class="form-design" placeholder="Enter Message" rows="4" required></textarea><br>
      <input type="submit" name="name" class="form-design" value="Send Message">
    
      </form>
  
   </div>

</body>
</html>