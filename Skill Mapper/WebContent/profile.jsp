<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>profile page</title>
<style>
  body{
   margin:0px;
  }
   .container{
     width:100%;height:600px;
   }
   .header{
     width:100%; height:80px; border:none; border-bottom:solid 1px #777; background:#f3f3f3;
   }
   .logo{
     width:auto; height:2px; padding:3px; position:relative; float:left;
   }
   .navigtnbr{
     width:450px; height:60px; padding:3px; position:relative; float:right; top:30px; right:9px;
   }
   .navigtnbr a{
     margin-left:8px;text-decoration:none;color:crisom; font-family:cursive;
    }
   .navigatnbr a:hover{
     color:red;
	 }
    .profile_pic{
	   width:15%;height:525px; position:relative;
       border-right:solid 1px;
	}
    .profile_pic img{
	width:112px; height:131px; position:relative; border-none;
	}	
	.footer {
	 width:100%; height:45; border:solid 1px; position:relative;
	}
	.footer a{
	  text-align:center; position:relative;
	}
	.profile{
	 width:83%; height:20; position:relative; right:11px; top:-524px; border:none; float:right;
	}
	.profile h1{
	 text-align:center;
	}
	</style>
</head>
<body>
 <div class="container">
 <div class="header">
 <div class="logo">
 <h1>Skill Mapper</h1>
 </div>
 <div class="navigtnbr">
   <a href="#">HOME</a>
   <a href="#">ABOUT US</a>
   <a href="#">CONTACT US</a>    
   <a href="#">LOGIN</a>
   <a href="#">REGISTER</a>
 </div>
 </div>
 <div class="main_container">
 <div class="profile_pic">
 <img src="#" alt="dp">
 </div>
 <div class="profile">
 <h1> Employee Profile</h1>
    <table>
         <tr>
          <td class="fname"><label>First Name:</label></td>
          </tr>
          <tr>
          <td class="Lname"><label>Last Name:</label></td>
           </tr>
           <tr>
          <td class="EID"><label>Email:</label></td>
          </tr>
          <tr>   
          <td class="DOB"><label>Date of Birth:</label></td>
          </tr>
		  </table>
          </div>
          </div>
	
          <div class="footer">
          <a>copywrite &copy NIIT 2019</a>
		  
   </div>
   </div> 
 </body>
</html>