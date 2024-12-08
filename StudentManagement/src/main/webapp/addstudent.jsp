<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
    <title>Add Customer</title>
    <link type="text/css" rel="stylesheet" href="css/style.css">
     <style>
          /* From Uiverse.io by mi-series */
        body {
            font-family: Arial, sans-serif; /* Added font for better appearance */
            background-color: #f4f4f4; /* Light background color */
        }

        .form-container {
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            text-align: center;
            margin-top: 50px; /* Space from top */
        }

        .form_area {
            background-color: #EDDCD9;
            border: 2px solid #264143;
            border-radius: 20px;
            box-shadow: 3px 4px 0px 1px #E99F4C;
            padding: 20px;
            width: 400px; /* Fixed width for the form area */
        }

        .title {
            color: #264143;
            font-weight: 900;
            font-size: 1.5em;
            margin-bottom: 20px; /* Space below title */
        }

        .form_group {
            display: flex;
            flex-direction: column;
            align-items: baseline;
            margin: 10px 0; /* Space between fields */
        }

        label {
            margin-top: 5px; /* Space above labels */
            display: block; /* Labels on separate lines */
            font-weight: bold; /* Bold labels */
            color: #264143; /* Label color */
        }

        .form_style {
            outline: none;
            border: 2px solid #264143;
            box-shadow: 3px 4px 0px 1px #E99F4C;
            width: 350px; /* Width of input fields */
            padding: 12px 10px;
            border-radius: 4px;
            font-size: 15px;
        }

        .form_style:focus {
            transform: translateY(4px);
            box-shadow: 1px 2px 0px 0px #E99F4C;
        }

        .btn {
            padding: 15px;
            margin: 15px 0; /* Margin for buttons */
            width: 150px; /* Width of buttons */
            font-size: 15px;
            background: #DE5499;
            border-radius: 10px;
            font-weight: 800;
            box-shadow: 3px 3px 0px 0px #E99F4C;
            border: none; /* Removed border for buttons */
            color: white; /* Text color for buttons */
            cursor: pointer; /* Cursor pointer for buttons */
        }

        .btn:hover {
            opacity: .9;
        }
    </style>
</head>

<body>
    <%@include file="adminnavbar.jsp" %>

    <h3 style="text-align: center;"><u>Add Customer</u></h3>
    <div class="form-container">

        <form:form modelAttribute="customer" method="post" action="insertcustomer">
            <table>
                <tr>
                    <td><label>Name</label></td>
                    <td>
                        <form:input path="name" required="required" class="form_style"></form:input>
                    </td>
                </tr>
                <tr>
                    <td><label>Gender</label></td>
                    <td>
                        <form:radiobutton path="gender" value="Male" required="required"/>Male
                        <form:radiobutton path="gender" value="Female" required="required"/>Female
                    </td>
                </tr>
                <tr>
                    <td><label>Email ID</label></td>
                    <td><form:input path="email" required="required" class="form_style"/></td>
                </tr>
                <tr>
                    <td><label>Password</label></td>
                    <td><form:password path="password" required="required" class="form_style"/></td>
                </tr>
                <tr>
                    <td><label>Address</label></td>
                    <td>
                        <form:textarea path="address" required="required" class="form_style"/>
                    </td>
                </tr>
                <tr>
                    <td><label>Contact No</label></td>
                    <td><form:input path="contactno" required="required" class="form_style"/></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Add" class="btn"/>
                        <input type="reset" value="Clear" class="btn"/>
                    </td>
                </tr>
            </table>
        </form:form>

    </div>
</body>
</html>
	 