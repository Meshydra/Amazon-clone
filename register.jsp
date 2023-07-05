<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
<style>
		*
{
    box-sizing: border-box;
    font-family: Arial, Helvetica, sans-serif;
    color: #333;
    margin: 0;

}

.main
{
    background-image: url('https://images.unsplash.com/photo-1586528116311-ad8dd3c8310d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80');
    background-repeat: no-repeat;
    
    font-size: 13px;
    height: 100vh;
}

input,button
{
    font-size: 14px;
    
}

.logo-image
{
    max-width: 100%;
}

:focus
{
    outline: none;
}

.wrapper
{
    min-height: 100vh;
    background-size: cover;
    background-repeat: no-repeat;
    display: flex;
    align-items:center;
    justify-content: center;
}

.inner
{
    padding: 20px;
    background-color: #fff;
    max-width: 850px;
    margin:auto;
    display: flex;
}

.inner .amazon-logo
{
    width:30%;
}

.registered{
	font-weight: bold;

}

.inner form
{
    width: 60%;
    padding-top: 36px;
    padding-left: 45px;
    padding-right: 5px;
}

.inner h3{
    text-transform: uppercase;
    font-size: 25px;
    text-align: center;
    margin-bottom: 28px;

}

.form-group
{
    display: flex;
}

.form-group input
{
    width: 50%;
}

.button-wrapper{
		
		margin-bottom: 20px;
}

.p-wrapper{
	text-align:center;
	font-size: 1rem;
}

.p-wrapper a{
		text-decoration: none;
		color: orange;
}

.from-wrapper
{
    position: relative;
}

.form-control
{
    outline: 1px solid #333;
    border: none;
    border-bottom: 1px soild #333;
    display: block;
    width: 100%;
    height: 30px;
    padding-right: 0;
    margin-bottom: 20px;

}

.Create-btn
{
    width: 100%;
    height: 50px;
    border: none;
    background-color: rgb(250, 142, 0);
    font-size: 20px;
    transition: opacity 2s;
    color: white;
}

.Create-btn:hover
{
    opacity: .5;
}

.Create-btn:active
{
   background-color: rgb(250, 162, 0);
}



		
</style>
</head>
<body>
<div class="main">
    <div class="wrapper">
        <div class="inner">
            <div class="amazon-logo">
            <img class="logo-image" src="https://wallpapers.com/images/high/iconic-dark-amazon-logo-swwznz480jfn69dv.webp" alt="">
            </div>

            <form action="register" method="post">
                <h3>Registration Form</h3>

                <div class="form-wrapper">
                    <input type="text" placeholder="Your Name" class="form-control" name="name">
                </div>

                <div class="from-wrapper">
                    <input type="email" placeholder="Email" class="form-control" name="email">
                </div>

                <div class="from-wrapper">
                    <input type="password" placeholder="New Password" class="form-control" name="password">
                </div>

                <div class="from-wrapper">
                    <input type="password" placeholder="Re-Enter Password" class="form-control" name="confirm_password">
                </div>
	
				<div class="button-wrapper">
                <button class="Create-btn" type="submit">Create your Amazon account</button>
            	</div>
            	<div class="p-wrapper">
            	<p class="registered">Already Registered ? <a href="Login.jsp"> Login </a></p>
          		</div>
            </form>
            
        </div>
    </div>
</div>
</body>
</html>