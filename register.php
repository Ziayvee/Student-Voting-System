<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Password Form</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f7f7f7;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        form {
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        span {
            color: #000;
        }

        input {
            width: 200px;
            padding: 8px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            background: #f9f9f9;
            box-shadow: 0 1px 2px rgba(0, 0, 0, 0.1);
        }

        input[type="submit"] {
            background-color: #3498db;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #2980b9;
        }

        .error-message {
            color: #e74c3c;
            font-size: 14px;
            margin-top: 5px;
        }
    </style>
    <script type="text/javascript">
        function validateForm() {
            var password = document.forms["frmOne"]["password"].value;
            var rpassword = document.forms["frmOne"]["rpassword"].value;
            var errorElement = document.getElementById("error-message");

            if (password !== rpassword) {
                errorElement.innerHTML = "Password mismatch";
                return false;
            } else {
                errorElement.innerHTML = "";
                return true;
            }
        }
    </script>
</head>
<body>

<form name="frmOne" action="save.php" method="POST" onsubmit="return validateForm()">
    <span>ID Number</span><br>
    <input type="text" name="username" value="" required/><br>

    <span>Password</span><br>
    <input type="password" name="password" value="" required/><br>

    <span>Re-enter Password</span><br>
    <input type="password" name="rpassword" value="" required/><br>

    <input type="submit" value="Save" />
    <div id="error-message" class="error-message"></div>
</form>

</body>
</html>
