<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
		<meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <title></title>
        
        <link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="css/style.css" />
        <script src="js/modernizr.custom.63321.js"></script>
        <script src="js/myscript.js"></script>
       
		<style>
			body {

			}
		</style>
		<script type="text/javascript">
			function login(){
				
				document.ff.submit();
				
			}
		</script>
    </head>
    <body>
        <div class="container">
		
			
            	
			
			<section class="main">
			
				<form class="form-2" action="login.inc" method="post" name="ff">
				
				
					<h1><span class="log-in" id="t_off1"><img id="" src="images2/t_off.png" align="left" width="54px"/>
					<img src="images2/t_signup.png" align="right" onclick="signup()"  style="cursor:pointer"/></span>
					<span class="log-in" id="t_off2"><img id="" src="images2/t_on.png" align="left" width="54px"/>
					<img src="images2/t_signup.png" align="right" onclick="signup()"  style="cursor:pointer"/></span>
					</h1>
					<p class="float">
						<label for="login"><i class="icon-user"></i><img src="images2/t_id.png"/></label>
						<input type="text" name="id" id="id" placeholder="" value="sky">
						
					</p>


					<p class="float">
						<label for="password"><i class="icon-lock"></i><img src="images2/t_password.png"/></label>
						<input type="password" name="pwd" id="pwd" placeholder="" class="showpassword" value="1234">
					</p>
					
					
							
					<p class="clearfix" align="center"> 

			<img src="images2/t_login.png" style="cursor:pointer" onclick="login()"/>
			<img src="images2/t_find.png" style="cursor:pointer" onclick="findid()"/>

						
					</p>
				</form>​​
			</section>
			
        </div>
	
    </body>
</html>