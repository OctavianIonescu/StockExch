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
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link
            href="https://fonts.googleapis.com/css2?family=Zen+Maru+Gothic:wght@300&display=swap"
            rel="stylesheet"
        />
        <meta charset="UTF-8" />
        <title>Login</title>
        <style>
            body {
                box-sizing: border-box;
                margin: 0;
                padding: 0;
                font-family: "Kumbh Sans", sans-serif;
                scroll-behavior: smooth;
                color: #ced4da;
            }

            .navbar {
                background: #131313;
                height: 80px;
                display: flex;
                justify-content: center;
                align-items: center;
                font-size: 1.2rem;
                position: sticky;
                top: 0;
                z-index: 999;
            }

            .navbar__container {
                display: flex;
                justify-content: space-between;
                height: 80px;
                z-index: 1;
                width: 100%;
                max-width: 1300px;
                margin: 0 auto;
                padding: 0 50px;
            }

            #navbar__logo {
                background: #4209ee; /* fallback for old browsers */
                background: -webkit-linear-gradient(
                    to right,
                    #009dff,
                    #1109ee
                ); /* Chrome 10-25, Safari 5.1-6 */
                background: linear-gradient(
                    to right,
                    #009dff,
                    #1109ee
                ); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
                background-size: 100%;
                -webkit-background-clip: text;
                -moz-background-clip: text;
                -webkit-text-fill-color: transparent;
                -moz-text-fill-color: transparent;
                display: flex;
                align-items: center;
                cursor: pointer;
                text-decoration: none;
                font-size: 2rem;
            }

            .navbar__menu {
                display: flex;
                align-items: center;
                list-style: none;
            }

            .navbar__item {
                height: 80px;
            }

            .navbar__links {
                color: #fff;
                display: flex;
                align-items: center;
                justify-content: center;
                width: 125px;
                text-decoration: none;
                height: 100%;
                transition: all 0.3s ease;
            }

            .navbar__btn {
                display: flex;
                justify-content: center;
                align-items: center;
                padding: 0 1rem;
                width: 100%;
            }

            .button {
                display: flex;
                justify-content: center;
                align-items: center;
                text-decoration: none;
                padding: 10px 20px;
                height: 100%;
                width: 100%;
                border: none;
                outline: none;
                border-radius: 4px;
                background: #ee0979; /* fallback for old browsers */
                background: -webkit-linear-gradient(
                    to right,
                    #009dff,
                    #1109ee
                ); /* Chrome 10-25, Safari 5.1-6 */
                background: linear-gradient(
                    to right,
                    #009dff,
                    #1109ee
                ); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
                color: #fff;
                transition: all 0.3 ease;
            }

            .navbar__links:hover {
                color: #189dfc;
                transition: all 0.3s ease;
            }
            @media screen and (max-width: 960px) {
                .navbar__container {
                    display: flex;
                    justify-content: space-between;
                    height: 80px;
                    z-index: 1;
                    width: 100%;
                    max-width: 1300px;
                    padding: 0;
                }

                .navbar__menu {
                    display: grid;
                    grid-template-columns: auto;
                    margin: 0;
                    width: 100%;
                    position: absolute;
                    top: -1000px;
                    opacity: 1;
                    transition: all 0.5s ease;
                    z-index: -1;
                }

                .navbar__menu.active {
                    background: #131313;
                    top: 100%;
                    opacity: 1;
                    transition: all 0.5s ease;
                    z-index: 99;
                    height: 60vh;
                    font-size: 1.6rem;
                }

                #navbar__logo {
                    padding-left: 25px;
                }

                .navbar__toggle .bar {
                    width: 25px;
                    height: 3px;
                    margin: 5px auto;
                    transition: all 0.3s ease-in-out;
                    background: #fff;
                }

                .navbar__item {
                    width: 100%;
                }

                .navbar__links {
                    text-align: center;
                    padding: 2rem;
                    width: 100%;
                    display: table;
                }

                .navbar__btn {
                    padding-bottom: 2rem;
                }

                .button {
                    display: flex;
                    justify-content: center;
                    align-items: center;
                    width: 80%;
                    height: 80px;
                    margin: 0;
                }

                #mobile-menu {
                    position: absolute;
                    top: 20%;
                    right: 5%;
                    transform: translate(5%, 20%);
                }

                .navbar__toggle .bar {
                    display: block;
                    cursor: pointer;
                }

                #mobile-menu.is-active .bar:nth-child(2) {
                    opacity: 0;
                }

                #mobile-menu.is-active .bar:nth-child(1) {
                    transform: translateY(8px) rotate(45deg);
                }

                #mobile-menu.is-active .bar:nth-child(3) {
                    transform: translateY(-8px) rotate(-45deg);
                }
            }
            /* Hero Section */
            .hero {
                background: #000000;
                background: linear-gradient(to right, #161616, #000000);
                padding: 200px 0;
            }

            .hero__container {
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
                max-width: 1200px;
                margin: 0 auto;
                height: 90%;
                text-align: center;
                padding: 30px;
            }

            .hero__heading {
                font-size: 100px;
                /* margin-bottom: 15px; */
                color: #fff;
            }

            .hero__heading span {
                background: #3500f4; /* fallback for old browsers */
                background: -webkit-linear-gradient(
                    to right,
                    #009dff,
                    #1109ee
                ); /* Chrome 10-25, Safari 5.1-6 */
                background: linear-gradient(
                    to right,
                    #009dff,
                    #1109ee
                ); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
                background-size: 100%;
                -webkit-background-clip: text;
                -moz-background-clip: text;
                -webkit-text-fill-color: transparent;
                -mo-text-fill-color: transparent;
            }

            .hero__description {
                margin-bottom: 20px;
                font-size: 50px;
                background: #3422ff; /* fallback for old browsers */
                background: -webkit-linear-gradient(
                    to right,
                    #14fff7,
                    #046174
                ); /* Chrome 10-25, Safari 5.1-6 */
                background: linear-gradient(
                    to right,
                    #14fff7,
                    #046174
                ); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
                background-size: 100%;
                -webkit-background-clip: text;
                -moz-background-clip: text;
                -webkit-text-fill-color: transparent;
                -moz-text-fill-color: transparent;
            }

            .hero__description1 {
                font-size: 25px;
                padding: 0px;
                margin-bottom: 0px;
                background: #ffffff;
                background-size: 100%;
                -webkit-background-clip: text;
                -moz-background-clip: text;
                -webkit-text-fill-color: transparent;
                -moz-text-fill-color: transparent;
            }

            .highlight {
                border-bottom: 4px solid rgb(#046174);
            }

            @media screen and (max-width: 768px) {
                .hero__heading {
                    font-size: 60px;
                }

                .hero__description {
                    font-size: 40px;
                }
            }

            /* Mobile Responsive */
            @media screen and (max-width: 1100px) {
                .main__container {
                    display: grid;
                    grid-template-columns: 1fr;
                    align-items: center;
                    justify-content: center;
                    width: 100%;
                    margin: 0 auto;
                    height: 90%;
                }

                .main__img--container {
                    display: flex;
                    justify-content: center;
                }

                .main__img--card {
                    height: 425px;
                    width: 425px;
                }

                .main__content {
                    text-align: center;
                    margin-bottom: 4rem;
                }

                .main__content h1 {
                    font-size: 2.5rem;
                    margin-top: 2rem;
                }

                .main__content h2 {
                    font-size: 3rem;
                }

                .main__content p {
                    margin-top: 1rem;
                    font-size: 1.5rem;
                }
                .main__btn {
                    padding: 12px 36px;
                    margin: 2.5rem 0;
                }
            }

            form {
                display: flex;
                flex-direction: column;
                align-items: center;
                width: 100%;
            }
            input[type="text"],
            input[type="password"] {
                padding: 8px;
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
            p1 {
                color: #ffffff;
                margin-bottom: 30px;
            }
            a {
                color: #007bff;
                margin-bottom: 30px;
            }
            /* Footer CSS */
            .footer__container {
                background-color: #131313;
                padding: 1rem 0;
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
            }

            #footer__logo {
                color: #fff;
                display: flex;
                align-items: center;
                cursor: pointer;
                text-decoration: none;
                font-size: 18px;
            }
        </style>
    </head>
    <body>
        <!-- Navbar Section -->
        <nav class="navbar">
            <div class="navbar__container">
                <a href="#home" id="navbar__logo">ON TRADING</a>
                <div class="navbar__toggle" id="mobile-menu">
                    <span class="bar"></span> <span class="bar"></span>
                    <span class="bar"></span>
                </div>
                <ul class="navbar__menu">
                    <li class="navbar__item">
                        <a href="/" class="navbar__links" id="exp-page">Home</a>
                    </li>

                    <li class="navbar__item">
                        <a href="#edu" class="navbar__links" id="edu-page"
                            >About</a
                        >
                    </li>
                    <li class="navbar__item">
                        <a
                            href="#projects"
                            class="navbar__links"
                            id="projects-page"
                            >Services</a
                        >
                    </li>
                    <li class="navbar__item">
                        <a href="/login" class="navbar__links" id="exp-page"
                            >Log In</a
                        >
                    </li>
                </ul>
            </div>
        </nav>
        <div class="hero" id="home">
             <div class="hero__container">
                <p class="hero__description">New User</p>
                    <form method="POST">
                        <p1 class="hero__description1"</p1></p1><br /><label>First Name:</label></p1>
                        <input type="text" name="firstName" />
                        <p1 class="hero__description1"</p1></p1><label>Last Name: </label></p1>
                        <input type="text" name="lastName" />
                        <p1 class="hero__description1"</p1></p1><label>Address: </label></p1>
                        <input type="text" name="address" />
                        <p1 class="hero__description1"</p1></p1><label>Email: </label></p1>
                        <input type="text" name="email" />
                        <p1 class="hero__description1"</p1></p1><label>Password:</label></p1>
                        <input type="password" name="pass" />
                        <input type="submit" name="register" value="Register" />
                    </form>
                    <p1>Have an account? <a href="/login">Click here.</a></p1>
                </div>
                <!-- <div class="footer__container">
                    <a href="/" id="footer__logo">&copy; 2023 ON TRADING. All Rights Reserved.</a>
                </div> -->
            </div>
        </div>
    </body>
</html>
