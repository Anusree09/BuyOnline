<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html lang="en-US" xmlns="http://www.w3.org/1999/xhtml" dir="ltr">
<head>
	<title>Login</title>
	<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
	
	<script type= "text/javascript" src = "js/countries.js"></script>
	<style>
	
	.align{
	text-align:right;
	font-size:18px;
	}
	
	{
		width:200px;height:30px;
		border-radius:5px;
	}
	</style>
        
</head>
<body>
                <div id="main" class="shell">
                    <div class="cl">&nbsp;</div>
		     <div id="products">
                         	<!--user registration starts -->
				<div style="width:900px;height:auto; border-radius:5px;">
				
					<p style="font-size:40px;"></p><br /><br />
					<strong style="font-size:18px;margin-left:250px;background:#f5f5f5;padding:5px;border-radius:5px 5px 0 0;">Account Login:</strong>
					<div style="margin-left:60px;"><!--inner forms-->
					
					
					
							<div style="width:100%;">	
							<div style="width:450px;margin-right:auto;height:240px;margin-left:auto;padding:5px;background:#f5f5f5;border-radius:5px;">
							<form name="login" method="post" action="adminpage.jsp" >
					
								<strong style="font-size:22px;margin-left:10px;padding:5px;">Administrator</strong><br />
								<span style="margin-left:15px;font-size:16px;">login as an administrator</span><br /><br /><hr /><br />
								<p style="font-size:14px; text-align:justify;">
										
										<table cellspacing="8px">
											<tr><td class="align">Username:</td><td><input class="box" type="text" name="username" placeholder="your username" required/></td> </tr>
											<tr><td class="align">Password:</td><td><input class="box" type="password" name="password" placeholder="Your password" required/></td></tr>
											<tr>
												<td><input style="width:100px;height:40px;font-size:18px;margin-left:100px;" type="submit" value="Login" /></td>
											</tr>
                                               <tr>                                        
												<td>${adminInfo}</td>
											</tr>
										</table>
							</form>
							</div>
					</div>
</body>
</html>
