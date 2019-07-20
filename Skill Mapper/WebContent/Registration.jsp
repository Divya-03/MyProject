<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>practicing page</title>
<style>
body{
    margin:0px;
  }
  .register{
    left:40%;
    position:relative;
  }
  .register h1{
   text-align:center; 
   position:realtive;
  }
  
}


</style>
</head>
<body>
<center>
<h1> <u>Register Here</u></h1>
</center>
<form class="register" action="Register" method="post">
<label>First Name:</label><br>
<input type="text" name="Fname" placeholder="First Name"><br><br>

<label>Last Name:</label><br>
<input type="text" name="Lname" placeholder="Last Name"><br><br>

<label>Email:</label><br>
<input type="eml" name="email" placeholder="Enter Your Mail id"><br><br>

<label>Password:</label><br>
<input type="text" name="pswrd" placeholder="Enter ur Password"><br><br>

<label>Re-enter Password:</label><br>
<input type="text" name="repaswrd" placeholder="Re-enter your password"><br><br>

<label>Date of Birth:</label><br>
<input type="date" name="dob" placeholder="dd/mm/yyyy"><br><br>

<label>Mobile Number:</label><br>
<select>
<option>+91</option>
<option>+92</option>
<option>+93</option>
<option>+94</option>
<option>+95</option></select>
<input type="text" name="mbil no." placeholder="Enter your Mobile Number"><br><br>
<label>Gender:</label><br>
<input type="radio" class="gndr" name="gender" value="Male">
<span class="gndr">Male</span>
<input type="radio" class="gndr" name="gender" value="Female">
<span class="gndr">Female</span>
<input type="radio" class="gndr" name="gender" value="Others">
<span class="gndr">Others</span><br><br>
<input type="radio" name="role" value="Employee">Employee
<span class="gndr">Others</span><br><br>
<input type="radio" name="role" value="employeer">Employeer
<span class="gndr">Others</span><br><br>

<input type="checkbox" class="ch">
<span class="ch">I Agree with all your terms & conditions</span><br><br>
<button type="submit" class="sub">Register Here</button>
</form>
</body>
</html>
