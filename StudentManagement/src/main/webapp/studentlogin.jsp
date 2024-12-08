<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Employee Login</title>
    <style>
        /* From Uiverse.io by JkHuger */
        .login {
            color: #000;
            text-transform: uppercase;
            letter-spacing: 2px;
            display: block;
            font-weight: bold;
            font-size: x-large;
            text-align: center;
            margin-bottom: 20px;
        }

        .form-container {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 350px;
            width: 350px;
            margin: 50px auto;
            flex-direction: column;
            background: #F8F9FD;
            background: linear-gradient(0deg, rgb(255, 255, 255) 0%, rgb(244, 247, 251) 100%);
            box-shadow: rgba(133, 189, 215, 0.878) 0px 30px 30px -20px;
            border-radius: 40px;
            padding: 25px 35px;
            border: 5px solid rgb(255, 255, 255);
        }

        .heading {
            text-align: center;
            font-weight: 900;
            font-size: 30px;
            color: rgb(16, 137, 211);
        }

        .form {
            margin-top: 20px;
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

        .form .input::placeholder {
            color: rgb(170, 170, 170);
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
            box-shadow: rgba(133, 189, 215, 0.878) 0px 20px 10px -15px;
            border: none;
            transition: all 0.2s ease-in-out;
        }

        .form .login-button:hover {
            transform: scale(1.03);
            box-shadow: rgba(133, 189, 215, 0.878) 0px 23px 10px -20px;
        }

        .form .login-button:active {
            transform: scale(0.95);
            box-shadow: rgba(133, 189, 215, 0.878) 0px 15px 10px -10px;
        }

        .button-container {
            text-align: center;
        }
    </style>
</head>
<body>
  <%@include file="mainnavbar.jsp" %>
    <div class="form-container">
        <span class="heading">Student Login</span>
        <h4 aline="center" style="color:blue">
        <c:out value="${message}"></c:out>
        </h4>
        <form method="post" action="${pageContext.request.contextPath}/checkemplogin" class="form">
            <input required="" class="input" type="email" id="eemail" name="eemail" placeholder="Enter Email ID">
            <input required="" class="input" type="password" id="epwd" name="epwd" placeholder="Enter Password">
            <div class="button-container">
                <input class="login-button" type="submit" value="Login">
                <input class="login-button" type="reset" value="Clear">
            </div>
        </form>
    </div>
</body>
</html>
