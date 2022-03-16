
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up</title>
    
  <style>
    body{
    margin:30px auto;
    background-image:url('https://gallery.yopriceville.com/var/albums/Backgrounds/Coffee_Beans_Background-727176932.jpg?m=1459816379');
    background-repeat:no-repeat;
    background-size:cover;
  }
  .container{
    text-align:center;
    width:500px;
    border-radius:20px;
    margin:auto;
    padding:20px;
    /border: 20px solid black;/
    background: rgba(0, 0, 0, 0.5);
  }
  #submit{
    border:2px solid white;
    background-color: #2a0845;
    color: #f0f0f0;
    font-weight: bold;
    width:75%;
    padding:10px;
    border-radius: 5px;
    margin-top: 20px;
  }
  #submit:hover{
    background-color: darkmagenta;
  }
  
  .form1{
    border: 2px solid white;
    padding: 30px 40px;
      
  }
  .form-group1{
    display: block;
   /* border:2px solid black;*/
    margin:10px;
    padding:2px;
  }
  .form-group1 label{
    /border:2px solid black;/
    font-weight:bold;
    color:white;
    font-size:17px;
  }
  .form-group1 input{
    border: 2px solid #f0f0f0;
    margin:5px;
    border-radius: 4px;
    font-size: .8rem;
    width:91%;
    padding: 10px;
  }
  .form1 input::placeholder{
    color: #2a0845;
  }



input:valid {
  border: 3px solid rgb(144, 253, 134);

}

input:invalid:required{
  background-image:linear-gradient(to right, rgb(248, 248, 248), rgb(250, 192, 192));
  border:2px solid rgb(253, 131, 151);
}



span{
  /border:2px solid black;/
  display: block;
  padding:2px;
  color:red;
  text-align: left;
  font-weight: bolder;
}</style>
</head>

<body>
    <div class="container">
        <div id="signup" class="tabcontent">
      <div id='form'>
                <u style="color:white;text-align:center">
                    <h2>SIGNUP</h2>
                    <hr>
                </u>
                <!--form class="form1" id='login_form' action="#"-->
                <form class="form1" id='signup_form' action="Signup" method="post" >
                    <div class="form-group1">
                        <label for="userName">Username : </label>
                        <input type="text" placeholder="Enter username" id="userName" name="userName" required>
                        <span class='error' id="error0"></span>
                    </div>
                    
                    <div class="form-group1">
                        <label for="email"> Email: </label>
                        <input type="email" placeholder="Enter email" id="email" name="email" required>
                        <span class="error" id='error1'></span>
                    </div>
                  <div class="form-group1">
                        <label for="phoneNumber">PhoneNumber: </label>
                        <input type="tel" placeholder="Enter PhoneNumber" id="phoneNumber" name="phoneNumber"required>
                        <span class='error' id="error2"></span>
                    </div>
                   <div class="form-group1">
                        <label for="password">Password: </label>
                        <input type="password" placeholder="Enter Password" id="password" name="password"required>
                        <span class='error' id="error2"></span>
                    </div>
                   <div class="form-group1">
                        <label for="confirmPassword">confirmPassword: </label>
                        <input type="password" placeholder="Enter confirmPassword" id="confirmPassword" name="confirmPassword"required>
                        <span class='error' id="error2"></span>
                    </div>
                    <!--input type='button' value='Login' id='submit_button'-->
                    <button type="submit" id='submit'>Submit</button>
                    <p>Already have Account?<a href="Login.jsp">Login</a></p>
                </form>
            </div>
            <div class='whysign'>
<% 
String msg=request.getParameter("msg");
if("valid".equals(msg))
{
%>
<h1>Successfully registered!</h1>
<%} %>
<%
if("invalid".equals(msg))
{
%>
<h1>Some thing Went Wrong! Try Again !</h1>
<%} %>
    </div>
        </div>
</div>
    <script src='valid.js'></script>
</body>

</html>
