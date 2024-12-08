<!DOCTYPE html>
<html>
<head>
    <title>Registration</title>
    <style>
        /* From Uiverse.io by mi-series */
        body {
            font-family: Arial, sans-serif; /* Added font for better appearance */
            background-color: #f4f4f4; /* Light background color */
        }

        .container {
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            text-align: center;
            margin-top: 30px; /* Space from top */
        }

        .form_area {
            max-width: 350px;
            background: #F8F9FD;
            background: linear-gradient(0deg, rgb(255, 255, 255) 0%, rgb(244, 247, 251) 100%);
            border-radius: 40px;
            padding: 10px 35px;
            border: 5px solid rgb(255, 255, 255);
            box-shadow: rgba(133, 189, 215, 0.8784313725) 0px 30px 30px -20px;
            margin: 20px auto; /* Fixed width for the form area */
        }

        .title {
            color: rgb(16, 137, 211);;
            font-weight: 900;
            font-size: 1.5em;
            margin-bottom: 10px; /* Space below title */
        }

        .form_group {
            display: flex;
            flex-direction: column;
            align-items: baseline;
            margin: 20px 0; /* Space between fields */
        }

        label {
            margin-top: 5px; /* Space above labels */
            display: block; /* Labels on separate lines */
            font-weight: bold; /* Bold labels */
            color: #000000; /* Label color */
        }

        .form_style {
            outline: none;
            border: none;
            box-shadow: #cff0ff 0px 10px 10px -5px;
            width: 350px; /* Width of input fields */
            padding: 12px 10px;
            border-radius: 4px;
            font-size: 15px;
            border-inline: 2px solid transparent
            
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
            background: rgb(16, 137, 211);
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
    <%@include file="mainnavbar.jsp" %>
    <div class="container">
        <h3 class="title"><u>Employee Registration</u></h3>
        <div class="form_area">
            <form method="post" action="insertemp" enctype="multipart/form-data" class="form-container" >
                <div class="form_group">
                    <label for="ename">Enter Name</label>
                    <input type="text" id="ename" name="ename" required class="form_style"/>
                   
                </div>
                <div class="form_group">
                    <label for="egender">Select Gender</label>
                    <select id="egender" name="egender" required class="form_style">
                        <option value="">---Select Gender---</option>
                        <option value="MALE">Male</option>
                        <option value="FEMALE">Female</option>
                        <option value="OTHERS">Others</option>
                    </select>
                    
                </div>
                <div class="form_group">
                     <label for="edob">Enter Date of Birth</label>
                    <input type="date" id="edob" name="edob" required class="form_style"/>
                    
                </div>
                <div class="form_group">
                    <label for="edept">Select Department</label>
                    <select id="edept" name="edept" required class="form_style">
                        <option value="">---Select Department---</option>
                        <option value="CSE">CSE</option>
                        <option value="MARKETING">AI&DS</option>
                        <option value="SALES">ECE</option>
                    </select>
                   
                </div>
                <div class="form_group">
                     <label for="esalary">Enter year</label>
                    <input type="number" id="esalary" name="esalary" step="0.01" required class="form_style"/>
                   
                </div>
                <div class="form_group">
                    <label for="elocation">Enter Location</label>
                    <input type="text" id="elocation" name="elocation" required class="form_style"/>
                    
                </div>
                <div class="form_group">
                     <label for="eemail">Enter Email ID</label>
                    <input type="email" id="eemail" name="eemail" required class="form_style"/>
                   
                </div>
                <div class="form_group">
                    <label for="epwd">Enter</label>
                    <input type="password" id="epwd" name="epwd" required class="form_style"/>
                   
                </div>
                <div class="form_group">
                    <label for="econtact">Enter Contact</label>
                    <input type="number" id="econtact" name="econtact" required class="form_style"/>
                  
                    
                    
                </div>
                <div class="form_group">
                    <label for="eimage">Resume</label>
                    <input type="file" id="eimg" name="eimage" required class="form_style"/>
                    </div>
                
               
                <div class="button-container">
                    <input type="submit" value="Register" class="btn"/>
                    <input type="reset" value="Clear" class="btn"/>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
