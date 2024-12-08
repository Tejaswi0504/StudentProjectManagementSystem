<!DOCTYPE html>
<html>
<head>
    <title>Spring Boot</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<style>
       
        .navbar {
            display: flex;
            justify-content: center;
            background: linear-gradient(45deg, #00aaff, #0099cc); 
            padding: 15px;
            box-shadow: rgba(133, 189, 215, 0.5) 0px 5px 15px;
            border-radius: 10px;
            margin: 20px 0;
        }

        .navbar a {
            text-decoration: none;
            color: white; /* Change to white for better contrast */
            padding: 10px 20px;
            margin: 0 10px;
            border-radius: 5px;
            transition: background-color 0.3s, color 0.3s;
            font-weight: bold;
            font-size: 16px;
        }

       

        /* Center the title */
        h2 {
            text-align: center;
        }
    </style>
<body>
    <h2 align="center">Spring Boot MVC SDP Project</h2>
    <div class="navbar">
       <a href="emphome">Home</a>
        <a href="empprofile">Profile</a>
        <a href="updateemp">Update Profile</a>
        <a href="empcontactus">Contact Us</a>
        <a href="viewempsbydept">View Employees By Department</a>

        
        <a href="emplogout">Logout</a>
    </div>
</body>
</html>