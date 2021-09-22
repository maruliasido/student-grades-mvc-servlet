<!doctype html>
<html lang="en">

    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <style>
            body{
                font-family: arial;
                text-align: center;
            }
            .form-control {
               
                display: block;
                width: 100%;
                height: 20px;
                padding: 0.375rem 0.75rem;
                font-size: 1rem;
                line-height: 1.5;
                color: #495057;
                background-color: #fff;
                background-clip: padding-box;
                border: 1px solid #ced4da;
                border-radius: 0.25rem;
                transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
            }

            form{
                display: inline-block;
                margin-bottom: 1rem;
            }

        </style>

        <title>Admin Panel</title>
    </head>

    <body>

        <h1>Selamat Datang! Silakan Login</h1>
        <div class="form-group" >
            <form method="POST" action="login">
                Username <input type="text" name="username" class="form-control"></br>
                Password <input type="password" name="password" class="form-control"></br>
                <input type="submit" />
            </form>
        </div>
        <a href="signup">Sign Up</a>

        <script src="js/jquery-3.6.0"></script>
        <script src="js/bootstrap.bundle.min.js"></script>

    </body>

</html>