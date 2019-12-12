<?php
include('includes/config.php');
error_reporting(0);
if(isset($_POST['submit']))
{
	$fullName=$_POST['fullName'];
	$gender=$_POST['gender'];
	$catagory=$_POST['catagory'];
	$department=$_POST['department'];
	$Enrollno=$_POST['Enrollno'];
	$email=$_POST['email'];
	$password=($_POST['password']);
	$Mobileno=$_POST['Mobileno'];
	$status=1;
	$query=mysqli_query($con,"insert into users(fullName,gender,catagory,department,Enrollno,userEmail,password,Mobileno) values('$fullName','$gender','$catagory','$department','$Enrollno','$email','$password','$Mobileno')");
	$msg="Registration successfull. Now You can login !";
}
?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

    <title>CMS | Student Registration</title>
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/style-responsive.css" rel="stylesheet">
    	<script>
function userAvailability() {
$("#loaderIcon").show();
jQuery.ajax({
url: "check_availability.php",
data:'email='+$("#email").val(),
type: "POST",
success:function(data){
$("#user-availability-status1").html(data);
$("#loaderIcon").hide();
},
error:function (){}
});
}
</script>
  </head>

  <body>
	  <div id="login-page">
	  	<div class="container">
	<h3 align="center" style="color:#fff">Complaint Managent System </h3>
	<hr />
		      <form class="form-login" method="post">
		        <h2 class="form-login-heading">Student Registration</h2>
		        <p style="padding-left: 1%; color: green">
		        	<?php if($msg){
echo htmlentities($msg);
		        		}?>


		        </p>
		        <div class="login-wrap">
		         <input type="text" class="form-control" placeholder="Full Name" name="fullName" required="required" autofocus>
		            <br>
					<input type="text" class="form-control" placeholder="Gender" name="gender"  autofocus>
		            <br>
					<input type="text" class="form-control" placeholder="Catagory" name="catagory"  autofocus>
		            <br>
					<input type="text" class="form-control" placeholder="Department" name="department" required="required" autofocus>
		            <br>
					<input type="enroll" class="form-control" placeholder="Enrollment number(btNNcseNNN)" name="Enrollno" 
					required onblur="validate(this.value)">
		            <br>
		            <input type="email" class="form-control" placeholder="Email ID" id="email" onBlur="userAvailability()" name="email" required="required">
		             <span id="user-availability-status1" style="font-size:12px;"></span>
		            <br>
		            <input type="password" class="form-control" placeholder="Password" required="required" name="password"><br >
		             <input type="text" class="form-control" maxlength="10" name="Mobileno" placeholder="Mobile number" required="required" autofocus>
		            <br>
		            
		            <button class="btn btn-theme btn-block"  type="submit" name="submit" id="submit"><i class="fa fa-user"></i> Register</button>
		            <hr>
		            
		            <div class="registration">
		                Already Registered<br/>
		                <a class="" href="index.php">
		                   Sign in
		                </a>
		            </div>
		
		        </div>
		
		      
		
		      </form>	  	
	  	
	  	</div>
	  </div>

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>

    <!--BACKSTRETCH-->
    <!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
    <script type="text/javascript" src="assets/js/jquery.backstretch.min.js"></script>
    <script>
        $.backstretch("assets/img/login-bg.jpg", {speed: 500});
    </script>
<script type = "enroll">
   <!--
      function validate(enroll) {
         var enrollN0 = enroll;
         pos1 = enrollN0.indexOf("b");
		 pos2 = enrollN0.indexOf("t");
         pos3 = enrollN0.indexOf("e");
         
         if (pos1!= 1 ||pos2!=2|| pos3!=7 {
            alert("Please enter correct enrollment number")
            document.myForm.EMail.focus() ;
            return false;
         }
         return( true );
      }
   //-->
</script>

  </body>
</html>
