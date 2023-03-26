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
        <style>
            body {
                background-color: #222;
                color: #eee;
            }
            .container {
                margin-top: 30px;
                margin-right: auto;
                margin-bottom: 30px;
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
				font-family: Verdana;
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
                width: 150%;
                max-width: 500px;
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
                width: 150%;
                max-width: 500px;
            }
            input[type="submit"]:hover {
                background-color: #0069d9;
            }
            a {
                color: #007bff;
                margin-bottom: 30px;
            }
        </style>
        <meta charset="UTF-8" />
        <title>Register</title>
    </head>
    <body>
        <div class="container">
            <h1>ON TRADING</h1>
            <a href="/">Back to Home</a>
            <h2>Create Account</h2>
            <nav
                style="
                    display: flex;
                    flex-direction: row;
                    justify-content: space-between;
                "
            ></nav>
            <div
                style="
                    flex-direction: column;
                    justify-content: center;
                    align-items: center;
                "
            >
                <form method="POST">
                    <br /><label>Firstname:</label>
                    <input type="text" name="firstName" />
                    <label>Lastname: </label>
                    <input type="text" name="lastName" />
                    <label>Address: </label>
                    <input type="text" name="address" />
                    <label>Email: </label>
                    <input type="text" name="email" />
                    <label>Password:</label>
                    <input type="password" name="pass" />
                    <input type="submit" name="register" value="Register" />
                </form>
                Have an account? <a href="/login">Click here.</a>
            </div>
        </div>
    </body>
</html>