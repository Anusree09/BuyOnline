<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html lang="en-US" xmlns="http://www.w3.org/1999/xhtml" dir="ltr">
    <head>
        <title>Register</title>
        <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
        <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
        <script type= "text/javascript" src = "js/countries.js"></script>
        <script>
            function validate() {
                var phone = document.getElementById("phone");
                var RE = /^[\d\.\-]+$/;
                if(!RE.test(phone.value))
                {
                     alert("Invalid phone number");
                     return false;
                }
                
                var x = document.forms["registration"]["email"].value;
                var atpos = x.indexOf("@");
                var dotpos = x.lastIndexOf(".");
                if (atpos < 1 || dotpos" < atpos + 2 || dotpos + 2 >= x.length")
                {
                    alert("e-mail is not valid");
                    return false;
                }
                var password = document.registration.password.value;
                var confirm_password = document.registration.confirm_password.value;
                if (password !== confirm_password)
                {
                    alert("password is not matching.");
                    password.focus;
                    return false;
                }
            }
        </script>

        <style>
            .error{
                color:#f00;
            }
            .align{
                text-align:right;
                font-size:18px;
            }
            .box
            {
                width:200px;height:30px;
                border-radius:5px;
            }
        </style>
    </head>
    <body>
        
            <div id="main" class="shell">
                <div id="products">
                    <h3 style="margin-left:360px;font-size:20px;margin-bottom:15px;">New User Registration</h3>
                    <!--user registration  -->
                    <div style="width:900px;height:auto;background:#f5f5f5; border-radius:5px;">

                        <p style="font-size:40px;"></p><br /><br />
                        <h3 style="margin-left:50px;">If registered, please login at the login page.</h3><br /><br />
                        <div style="margin-left:100px;"><!--inner forms-->

                            <form name="registration" method="post" action="registerCustomer.jsp" onsubmit="return validate()"  >
                                <h2>Your Personal Details</h2>

                                <table cellspacing="10px">
                                    <tr>
                                        <td class="align"><label>* First Name:</label></td>
                                        <td><input class="box" type="text" name="fname" required /></td>
                                    </tr>
                                    <tr>
                                        <td class="align"><label>* Last Name:</label></td>
                                        <td><input class="box" type="text" name="lname" required /></td>
                                    </tr>
                                    <tr>
                                        <td class="align"><label>* Email:</label></td>
                                        <td><input class="box" type="text" name="email" required /></td>
                                    </tr>
                                    <tr>
                                        <td class="align"><label>* Telephone:</label></td>
                                        <td><input class="box" type="text" name="telephone"  id="phone"required /></td>
                                    </tr>

                                </table><br />

                                <h2>Your Address</h2>

                                <table cellspacing="10px">


                                    <tr>
                                        <td class="align"><label>* Address 1:</label></td>
                                        <td><input class="box" type="text" name="address1" required /></td>
                                    </tr>     
									<tr>
									<td class="align"><label>* City/State:</label></td>
                                        <td><select style="width:205px;height:30px;border-radius:5px;" name ="state" id ="state"  required></select></td>
                                    </tr>
                                   
                                </table><br />
                                <h2>Your Password</h2>
                                <table cellspacing="10px">
                                    <tr>
                                        <td class="align"><label>*Password:</label></td>
                                        <td><input class="box" type="password" name="password" required /></td>
                                    </tr>
                                    <tr>
                                        <td class="align"><label>*Password Confirm:</label></td>
                                        <td><input class="box" type="password" name="confirm_password" required /></td>
                                    </tr>
                                </table><br />                                
                                <input style="width:100px; height:40px;margin:10px 0 10px 200px;font-size:18px; border-radius:5px;"type="submit" Value="Register" onMouseOver="this.style.backgroundColor = '#035492'" onMouseOut="this.style.backgroundColor = '#cccccc'" />

                            </form>
                        </div><!--end of inner forms -->
                    </div><!--User registration Ends -->

                </div>
            </div>
    </body>
</html>