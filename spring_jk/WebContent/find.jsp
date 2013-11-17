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
        <!--[if lte IE 7]><style>.main{display:none;} .support-note .note-ie{display:block;}</style><![endif]-->
		<style>
			body {
/* 				background: #e1c192 url(images/wood_pattern.jpg); */
			}
		</style>
    </head>
    <body>
        <div class="container">
		
			<!-- Codrops top bar -->
            	
			
			<section class="main">
				<form class="form-2" action="" method="post" name="ff">
					<h1><span class="log-in" id="t_off1"><img id="" src="images/t_off.png" align="left" width="54px"/>
					<img src="images/t_signup.png" align="right" onclick="signup()"  style="cursor:pointer"/></span>
					<span class="log-in" id="t_off2"><img id="" src="images/t_on.png" align="left" width="54px"/>
					<img src="images/t_signup.png" align="right" onclick="signup()"  style="cursor:pointer"/></span>
					</h1>
					<p class="float">
						<label for="login"><i class="icon-user"></i><img src="images/t_name.png"/></label>
						<input type="text" name="findname" id="findname" placeholder="">
						
					</p>
					


					<p class="float">
						<label for="password"><i class="icon-lock"></i><img src="images/t_email.png"/></label>
						<input type="text" name="findemail" id="findemail" placeholder="" class="showpassword">
					</p>
					
					
							
					<p class="clearfix" align="center"> 

			<img src="images/t_findid.png"  style="cursor:pointer" onclick="findidgo()"/>
			<img src="images/t_login.png" style="cursor:pointer" onclick="ret()"/>

						
					</p>
				</form>​​
			</section>
			
        </div>
	
    </body>
</html>