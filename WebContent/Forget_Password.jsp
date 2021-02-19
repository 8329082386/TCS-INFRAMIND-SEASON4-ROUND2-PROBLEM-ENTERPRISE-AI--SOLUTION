<!DOCTYPE html>
<html lang="en">
<head>
	<title>E-Commerce|Forget Password</title>
	  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
.bg {
  /* The image used */
  background-image: url("images/ecombg.jpg");

  /* Full height */
  height: 100%; 

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}

</style>
</head>
<body background=images/ecombg.jpg>
<div class="panel-body">
<div class="container">
<br/><br/><br/><br/>
	<div class="row">
	<div class="col-sm-2"></div>
	
		<div class="col-sm-8">
		<div class="col-sm-3"></div>
		<div class="col-sm-2"></div>
		
			<img style="background-color:#ffffff;" align="center" width="80px" height="80px" class="img-responsive" src="images/logo.png"/>
		    <br/>
<form action="Forgot" method="post">
			<h1 style="font-family:Times New Roman;color:#ffffff;"><center>Recover Your Password</center></h1>
		    <div class="form-group"> 
                <input class="form-control" type="email" placeholder="Enter Email" name="email" required>
            </div> 

            <div class="form-group"> 
<input class="form-control" type="password" placeholder="Enter New Password" name="pass" pattern="^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$">
            </div> 

            <div class="form-group"> 
<input class="form-control" type="password" placeholder="Confirm Password" pattern="^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$">
            </div> 
          
                <center><input type="submit" value="Submit"> </center>
            
                        </form>
            
		</div>
		<div class="col-sm-2"></div>  
	</div>
</div>
</div>

</body>
</html>