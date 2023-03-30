<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ page import="java.util.List"%> <%@ page
import="com.stockex.stockexch.Entities.User" %>
<!DOCTYPE html>
<html>
    <head>
        <link
            rel="stylesheet"
            href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
            integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
            crossorigin="anonymous"
        />
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link
            href="https://fonts.googleapis.com/css2?family=Zen+Maru+Gothic:wght@300&display=swap"
            rel="stylesheet"
        />
        <meta charset="UTF-8" />
        <title>Edit Profile</title>
        <style>
            body {
                margin: 0;
                padding: 0;
                background-color: #222;
                color: #eee;
                font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
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
                margin: 0;
                font-style: normal;
                font-family: "Zen Maru Gothic", sans-serif;
                font-weight: bold;
            }

            h2 {
                margin-top: 0;
                margin-bottom: 0px;
                font-weight: bold;
                font-size: 32px;
                color: #eee;
                text-align: center;
            }

            /* form {
            	background-color: #fff;
            	border-radius: 5px;
            	box-shadow: 0 2px 4px rgba(0,0,0,0.2);
            	padding: 30px;
            	margin-top: 30px;
            } */
            form {
                display: flex;
                flex-direction: column;
                align-items: center;
                width: 100%;
            }

            form input[type="text"],
            form input[type="password"] {
                width: 100%;
                padding: 10px 15px;
                margin: 10px 0;
                border-radius: 3px;
                border: none;
                box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            }
            form input[type="submit"] {
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
            form input[type="submit"]:hover {
                background-color: #0069d9;
            }
        </style>
    </head>
    <body style="width: 95%; margin-left: auto; margin-right: auto">
        <div class="container">
            <h1>ON TRADING</h1>
            <nav
                style="
                    display: flex;
                    flex-direction: row;
                    justify-content: space-between;
                "
            >
                <a href="/">Back to home</a>
            </nav>
            <div
                style="
                    flex-direction: column;
                    justify-content: center;
                    align-items: center;
                "
            >
                <h2><br />Update Profile</h2>
                <form method="POST">
                    <div>
                        <% User user = (User)
                        request.getSession().getAttribute("user"); %>
                        <br />
                        First Name:
                        <input
                            type="text"
                            name="firstName"
                            placeholder="<%= user.getFirst_name() %>"
                            onfocus="this.placeholder=''"
                            onblur="this.placeholder='<%= user.getFirst_name() %>'"
                        /><br />
                        Last Name:
                        <input
                            type="text"
                            name="lastName"
                            placeholder="<%= user.getLast_name() %>"
                            onfocus="this.placeholder=''"
                            onblur="this.placeholder='<%= user.getLast_name() %>'"
                        /><br />
                        Address:
                        <input
                            type="text"
                            name="address"
                            placeholder="<%= user.getUser_address() %>"
                            onfocus="this.placeholder=''"
                            onblur="this.placeholder='<%= user.getUser_address() %>'"
                        /><br />
                        Email:
                        <input
                            type="text"
                            name="email"
                            placeholder="<%= user.getEmail() %>"
                            onfocus="this.placeholder=''"
                            onblur="this.placeholder='<%= user.getEmail() %>'"
                        /><br />
                        Enter Password:
                        <input
                            type="password"
                            name="pass"
                            placeholder="********"
                            onfocus="this.placeholder=''"
                            onblur="this.placeholder='********'"
                        /><br />
                        <input
                            type="submit"
                            name="saveChanges"
                            value="Save Changes"
                        />
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
