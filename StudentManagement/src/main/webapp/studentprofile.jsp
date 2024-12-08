<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.jfsd.sdp.studentmanagement.model.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Employee emp = (Employee) session.getAttribute("employee");
if(emp==null)
{
	   response.sendRedirect("empsessionexpiry");
	   return;
}
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Employee Home</title>
    <style>
        /* General Styling */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            color: #333;
        }

        h2, h3 {
            text-align: center;
            color: #333;
            margin-top: 10px;
        }

        /* Navbar Styling */
        .navbar {
            text-align: center;
            background-color: #003153; /* Navy blue background */
            padding: 15px 0;
            margin-bottom: 10px;
            border: 2px solid silver;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .navbar a {
            color: silver;
            text-decoration: none;
            padding: 14px 20px;
            font-size: 18px;
            display: inline-block;
            transition: background-color 0.3s ease;
            border-radius: 5px;
        }

        .navbar a:hover {
            background-color: #575757;
        }

        /* Form Container Styling */
        .form-container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 75vh;
            padding: 20px;
            background-color: #f0f0f0;
        }

        .form-card {
            background-color: white;
            width: 60%;
            max-width: 600px;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2); /* Enhanced box shadow */
            border: 1px solid #ddd;
            transition: transform 0.2s ease;
        }

        .form-card:hover {
            transform: scale(1.02); /* Subtle zoom effect */
        }

        .form-card h3 {
            margin-bottom: 20px;
        }

        /* Table Styling */
        table {
            width: 100%;
        }

        table td {
            padding: 10px;
        }

        /* Button Styling */
        input, select {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 8px;
            box-sizing: border-box;
            font-size: 16px;
        }

        input:focus, select:focus {
            border-color: #4CAF50;
            box-shadow: 0 0 8px rgba(76, 175, 80, 0.3);
            outline: none;
        }

        input[type="submit"], input[type="reset"] {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px;
            margin: 10px 0;
            cursor: pointer;
            border-radius: 8px;
            font-weight: bold;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        input[type="reset"] {
            background-color: #f44336;
        }

        input[type="reset"]:hover {
            background-color: #d32f2f;
        }

        .button-container {
            text-align: center;
        }

        /* Responsive Design */
        @media (max-width: 600px) {
            .form-card {
                width: 90%;
                padding: 20px;
            }

            table td {
                display: block;
                width: 100%;
            }
        }
    </style>
</head>
<body>
    <%@include file="empnavbar.jsp" %>

    <div class="form-container">
        <div class="form-card">
            <h3>My Profile</h3>
            <div style="text-align: center;">
                <b>ID:</b> <%= emp.getId() %><br><br>
                <b>NAME:</b> <%= emp.getName() %><br><br>
                <b>GENDER:</b> <%= emp.getGender() %><br><br>
                <b>DATE OF BIRTH:</b> <%= emp.getDateofbirth() %><br><br>
                <b>DEPARTMENT:</b> <%= emp.getDepartment() %><br><br>
                <b>SALARY:</b> <%= emp.getSalary() %><br><br>
                <b>LOCATION:</b> <%= emp.getLocation() %><br><br>
                <b>EMAIL:</b> <%= emp.getEmail() %><br><br>
                <b>CONTACT:</b> <%= emp.getContact() %><br><br>
                <b>STATUS:</b> <%= emp.getStatus() %><br><br>
            </div>
        </div>
    </div>
</body>
</html>
