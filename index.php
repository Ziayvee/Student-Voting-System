<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>School</title>
    <link rel="icon" type="image/png" href="Nemsu_logo.png" />
    <link href="style.css" media="screen" rel="stylesheet" type="text/css" />
    <!--sa poip up-->
    <link href="admin/src/facebox.css" media="screen" rel="stylesheet" type="text/css" />
    <script src="admin/lib/jquery.js" type="text/javascript"></script>
    <script src="admin/src/facebox.js" type="text/javascript"></script>
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $('a[rel*=facebox]').facebox({
                loadingImage : 'admin/src/loading.gif',
                closeImage   : 'admin/src/closelabel.png'
            })
        })
    </script>
    <style>
        body {
            background-color: #f7f7f7; /* Light background color */
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        #loginform {
            background: #fff; /* White background */
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        #loginform form {
            margin-top: 20px;
        }

        #loginform span {
            display: inline-block;
            width: 100px;
            text-align: right;
            margin-right: 10px;
            font-weight: bold;
        }

        input, select {
            width: 200px;
            padding: 8px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            background: #f9f9f9;
            box-shadow: 0 1px 2px rgba(0, 0, 0, 0.1);
        }

        #btn {
            background-color: #3498db; /* Blue button color */
            color: #fff; /* White text color */
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        #btn:hover {
            background-color: #2980b9; /* Darker blue on hover */
        }

        #loginform a {
            color: #3498db; /* Blue link color */
            text-decoration: none;
        }

        #loginform a:hover {
            text-decoration: underline;
        }

    </style>
</head>
<body>

<div id="loginform">
    <?php
    if( isset($_SESSION['ERRMSG_ARR']) && is_array($_SESSION['ERRMSG_ARR']) && count($_SESSION['ERRMSG_ARR']) >0 ) {
        foreach($_SESSION['ERRMSG_ARR'] as $msg) {
            echo '<div style="color: #000000; text-align: center;">', $msg, '</div><br>';
        }
        unset($_SESSION['ERRMSG_ARR']);
    }
    ?>
    <form action="login.php" method="post">
        <span>ID Number :</span><input type="text" name="username" /><br><br>
        <span>Password :</span><input type="password" name="password" /><br><br>
        <span>Type :</span>
        <select name="asas" style="">
            <option>Student</option>
            <option>Admin</option>
        </select>
        <br><br>
        <span>&nbsp;</span>
        <span style="font-size: 11px; font-weight: normal; width: 170px; text-align: left;">
            Not yet a member? Register <a rel="facebox" href="register.php">Here</a><br>
            Forgot Password? click <a href="#" onClick="MyWindow=window.open('pwordrecover.php','MyWindow','toolbar=no,location=no,directories=yes,status=yes,menubar=yes,scrollbars=yes,resizable=yes,width=300,height=200'); return false;">Here</a>
        </span>
        <br><br>
        <span>&nbsp;</span>
        <input id="btn" type="submit" value="Login" />
    </form>
</div>
</body>
</html>
