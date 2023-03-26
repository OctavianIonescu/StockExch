<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link
            rel="stylesheet"
            href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
            integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
            crossorigin="anonymous"
        />
        <meta charset="UTF-8" />
        <title>Login</title>
        <style>
            body {
                background-color: #222;
                color: #eee;
            }
            .container {
                margin-top: 50px;
                margin-right: auto;
                margin-bottom: 50px;
                margin-left: auto;
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
                padding: 50px;
                background-color: #313131;
                border-radius: 5px;
                box-shadow: 0px 0px 10px #595858;
                width: 100%;
                max-width: 500px;
            }
            h1 {
                text-align: center;
                margin-bottom: 30px;
				font-style: oblique;
				font-family: verdana;
                font-weight: bold;
            }
			
            h2 {
                margin-top: 0;
                margin-bottom: 0px;
                font-weight: bold;
                font-size: 32px;
                color: #eee;
            }
            form {
                display: flex;
                flex-direction: column;
                align-items: center;
                width: 100%;
            }
            input[type="text"],
            input[type="password"] {
                padding: 10px;
                margin: 10px;
                border-radius: 5px;
                border: 1px solid #ccc;
                width: 100%;
                max-width: 400px;
            }
            input[type="submit"] {
                padding: 10px 20px;
                background-color: #004186;
                color: #fff;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                margin-top: 20px;
                transition: background-color 0.3s ease;
                width: 100%;
                max-width: 400px;
            }
            input[type="submit"]:hover {
                background-color: #0069d9;
            }
            a {
                color: #007bff;
                margin-bottom: 30px;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>ON TRADING</h1>
            <nav
                style="
                    display: flex;
                    flex-direction: row;
                    justify-content: space-between;
                "
            >
                <a href="/">Back to Home</a>
            </nav>
            <h2>User Login</h2>
            <form method="POST">
                <label for="user"><br />Username</label>
                <input type="text" name="user" id="user" required />
                <label for="pass">Password</label>
                <input type="password" name="pass" id="pass" required />
                <input type="submit" name="login" value="Login" />
            </form>
            <p>Not registered? <a href="/reg">Click here.</a></p>
        </div>
    </body>
</html>