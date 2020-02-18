<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html lang="en-US" xmlns="http://www.w3.org/1999/xhtml" dir="ltr">
    <head>
        <title>Login</title>
        <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
        <script type= "text/javascript" src = "js/countries.js"></script>
        <style>
            .error{
                color:#f00;
            }
            .align{
                text-align:right;
                font-size:18px;
            }
            a:hover{text-decoration:none;color:#ccc;}
            .box
            {
                width:200px;height:30px;
                border-radius:5px;
            }
        </style>

    </head>
    <body>
            <div id="main" class="shell">
                <div class="cl">&nbsp;</div>
                <!-- Begin Content -->
                <div id="products">
                    <!--user registration -->
                    <div style="width:900px;height:auto; border-radius:5px;">

                         <p style="font-size:40px;"></p><br /><br />
                        <strong style="font-size:18px;margin-left:440px;background:#f5f5f5;padding:5px;border-radius:5px 5px 0 0;">Account Login:</strong>
                        <div style="margin-left:60px;"><!--inner forms-->
                            <div style="width:100%;">
                                <c:choose>
                                    <c:when test="${ not empty guest}">
                                    </c:when>
                                    <c:otherwise>
                                       
                                        <div style="width:350px;float:left;height:230px;border-radius:5px;padding:10px;background:#f5f5f5;">
                                            <img src="css/images/new_user.png" width="50px;" height="50px;" align="left"/><strong style="font-size:22px;margin-left:10px;padding:5px;">New Customer</strong><br />
                                            <span style="margin-left:15px;font-size:16px;">Register Account</span><br /><br /><hr /><br />
                                       
                                    </c:otherwise>
                                </c:choose>
                                <!--Login -->
                                <div style="width:450px;float:left;height:240px;margin-left:10px;padding:5px;background:#f5f5f5;border-radius:5px;">
                                    <form name="login" method="POST" action="Home.jsp" >

                                            <table cellspacing="8px">
                                                <tr><td class="align">E-mail Address:</td><td><input class="box" type="text" name="email" placeholder="Your email here" required/></td> </tr>
                                                <tr><td class="align">Password:</td><td><input class="box" type="password" name="password" placeholder="Your password here" required/></td></tr>
                                                <tr>
												<td><input style="width:100px;height:40px;font-size:18px;margin-left:100px;" type="submit" value="Login" /></td>
											</tr>
                                            </table>

                                        </p><br /><hr />
                                    </form>
                                </div>
                            
                    </div>
                </div>

            </div>
    </body>
</html>