<!DOCTYPE html>
<html>
<head>
    <title>Admin Login</title>
    <style>
        /* From Uiverse.io by Smit-Prajapati */
        .container {
            max-width: 350px;
            background: #F8F9FD;
            background: linear-gradient(0deg, rgb(255, 255, 255) 0%, rgb(244, 247, 251) 100%);
            border-radius: 40px;
            padding: 25px 35px;
            border: 5px solid rgb(255, 255, 255);
            box-shadow: rgba(133, 189, 215, 0.8784313725) 0px 30px 30px -20px;
            margin: 50px auto;
        }

        .heading {
            text-align: center;
            font-weight: 900;
            font-size: 30px;
            color: rgb(16, 137, 211);
        }

        .form {
            margin-top: 30px;
        }

        .form .input {
            width: 85%;
            background: white;
            border: none;
            padding: 15px 20px;
            border-radius: 20px;
            margin-top: 15px;
            box-shadow: #cff0ff 0px 10px 10px -5px;
            border-inline: 2px solid transparent;
        }

        .form .input::-moz-placeholder {
            color: rgb(100, 100, 100);
        }

        .form .input::placeholder {
            color: rgb(100, 100, 100);
        }

        .form .input:focus {
            outline: none;
            border-inline: 2px solid #12B1D1;
        }

        .form .login-button {
            display: block;
            width: 100%;
            font-weight: bold;
            background: linear-gradient(45deg, rgb(16, 137, 211) 0%, rgb(18, 177, 209) 100%);
            color: white;
            padding-block: 15px;
            margin: 20px auto;
            border-radius: 20px;
            box-shadow: rgba(133, 189, 215, 0.8784313725) 0px 20px 10px -15px;
            border: none;
            transition: all 0.2s ease-in-out;
        }

        .form .login-button:hover {
            transform: scale(1.03);
            box-shadow: rgba(133, 189, 215, 0.8784313725) 0px 23px 10px -20px;
        }

        .form .login-button:active {
            transform: scale(0.95);
            box-shadow: rgba(133, 189, 215, 0.8784313725) 0px 15px 10px -10px;
        }
    </style>
</head>
<body>
  <%@include file="mainnavbar.jsp" %>
    <div class="container">
        <div class="heading">Admin Login</div>
        <div class="form-container">
            <form method="post" action="checkadminlogin" class="form">
                <input required="" class="input" type="text" id="auname" name="auname" placeholder="Enter Username">
                <input required="" class="input" type="password" id="apwd" name="apwd" placeholder="Enter Password">
                <input class="login-button" type="submit" value="Login">
                <input class="login-button" type="reset" value="Clear">
            </form>
        </div>
    </div>
</body>
</html>
