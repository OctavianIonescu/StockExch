<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
            integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"
            alt="Bootstrap CDN" />
        <title>Trading Application Landing Page</title>
        <style>
            body {
                box-sizing: border-box;
                margin: 0;
                padding: 0;
                font-family: "Kumbh Sans", sans-serif;
                scroll-behavior: smooth;
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
                background: #4209ee;
                /* fallback for old browsers */
                background: -webkit-linear-gradient(to right,
                        #009dff,
                        #1109ee);
                /* Chrome 10-25, Safari 5.1-6 */
                background: linear-gradient(to right,
                        #009dff,
                        #1109ee);
                /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
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
                background: #ee0979;
                /* fallback for old browsers */
                background: -webkit-linear-gradient(to right,
                        #009dff,
                        #1109ee);
                /* Chrome 10-25, Safari 5.1-6 */
                background: linear-gradient(to right,
                        #009dff,
                        #1109ee);
                /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
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
                background: #3500f4;
                /* fallback for old browsers */
                background: -webkit-linear-gradient(to right,
                        #009dff,
                        #1109ee);
                /* Chrome 10-25, Safari 5.1-6 */
                background: linear-gradient(to right,
                        #009dff,
                        #1109ee);
                /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
                background-size: 100%;
                -webkit-background-clip: text;
                -moz-background-clip: text;
                -webkit-text-fill-color: transparent;
                -mo-text-fill-color: transparent;
            }

            .hero__description {
                margin-bottom: 20px;
                font-size: 50px;
                background: #3422ff;
                /* fallback for old browsers */
                background: -webkit-linear-gradient(to right,
                        #14fff7,
                        #046174);
                /* Chrome 10-25, Safari 5.1-6 */
                background: linear-gradient(to right,
                        #14fff7,
                        #046174);
                /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
                background-size: 100%;
                -webkit-background-clip: text;
                -moz-background-clip: text;
                -webkit-text-fill-color: transparent;
                -moz-text-fill-color: transparent;
            }

            .hero__description1 {
                font-size: 25px;
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

            /* About Section */
            .main {
                background-color: #131313;
                padding: 10rem 0;
            }

            .main__container {
                display: grid;
                grid-template-columns: 1fr 1fr;
                align-items: center;
                justify-content: center;
                margin: 0 auto;
                height: 90%;
                z-index: 1;
                width: 100%;
                max-width: 1300px;
                padding: 0 50px;
            }

            .main__content {
                color: #fff;
                width: 100%;
            }

            .main__content h1 {
                font-size: 2.5rem;
                background-color: #251174;
                background-image: linear-gradient(to top, #2d08ff 0%, #1aa3ed 100%);
                background-size: 100%;
                -webkit-background-clip: text;
                -moz-background-clip: text;
                -webkit-text-fill-color: transparent;
                -moz-text-fill-color: transparent;
                text-transform: uppercase;
                margin-bottom: 32px;
            }

            .main__content h2 {
                font-size: 2rem;
                background: #1405f1;
                /* fallback for old browsers */
                background: -webkit-linear-gradient(to right,
                        #14fff7,
                        #046174);
                /* Chrome 10-25, Safari 5.1-6 */
                background: linear-gradient(to right,
                        #14fff7,
                        #046174);
                /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
                background-size: 100%;
                -webkit-background-clip: text;
                -moz-background-clip: text;
                -webkit-text-fill-color: transparent;
                -moz-text-fill-color: transparent;
            }

            .main__content p {
                margin-bottom: 2rem;
                font-size: 1.3rem;
                font-weight: 700;
            }

            .main__btn {
                font-size: 1.3rem;
                background: #833ab4;
                background: -webkit-linear-gradient(to right, #fcb045, #fd1d1d, #833ab4);
                background: linear-gradient(to right, #fcb045, #fd1d1d, #833ab4);
                padding: 15px 40px;
                border: none;
                border-radius: 4px;
                margin-top: 2rem;
                cursor: pointer;
                position: relative;
                transition: all 0.35s;
                outline: none;
            }

            .main__btn a {
                position: relative;
                z-index: 2;
                color: #fff;
                text-decoration: none;
            }

            .main__btn:after {
                position: absolute;
                content: "";
                top: 0;
                left: 0;
                width: 0;
                height: 100%;
                background: #ff1ead;
                transition: all 0.35s;
                border-radius: 4px;
            }

            .main__btn:hover {
                color: #fff;
            }

            .main__btn:hover:after {
                width: 100%;
            }

            .main__img--container {
                text-align: center;
            }

            .main__img--card {
                margin: 10px;
                height: 500px;
                width: 500px;
                border-radius: 4px;
                align-items: center;
                display: flex;
                flex-direction: column;
                justify-content: center;
                color: #fff;
                background-image: linear-gradient(to right, #00dbde 0%, #22716c 100%);
            }

            .fa-heart,
            .fa-cloud {
                font-size: 14rem;
            }

            #card-2 {
                background: #ff512f;
                background: -webkit-linear-gradient(to right, #00dbde 0%, #22716c 100%);
                background: linear-gradient(to right, #00dbde 0%, #22716c 100%);
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

            /* Services Section */
            .main {
                background: #131313;
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
                height: 100%;
                padding: 10rem 0;
            }

            .main h1 {
                background-color: #ff8177;
                background-image: linear-gradient(to right, #1b4a86 0%, #032eee 100%);
                background-size: 100%;
                -webkit-background-clip: text;
                -moz-background-clip: text;
                -webkit-text-fill-color: transparent;
                -moz-text-fill-color: transparent;
                margin-bottom: 5rem;
                font-size: 2.5rem;
            }

            .services__wrapper {
                display: grid;
                grid-template-columns: 1fr 1fr 1fr 1fr;
                grid-template-rows: 1fr;
            }

            .services__card {
                margin: 10px;
                height: 425px;
                width: 300px;
                border-radius: 4px;
                display: flex;
                flex-direction: column;
                justify-content: center;
                color: #fff;
                background-image: linear-gradient(to right, #00dbde 0%, #0004ff 100%);
                transition: 0.3s ease-in;
            }

            .services__card:nth-child(2) {
                background: #1fa2ff;
                /* fallback for old browsers */
                background: -webkit-linear-gradient(to right,
                        #a6ffcb,
                        #12d8fa,
                        #1fa2ff);
                /* Chrome 10-25, Safari 5.1-6 */
                background: linear-gradient(to right,
                        #a6ffcb,
                        #12d8fa,
                        #1fa2ff);
                /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
            }

            .services__card:nth-child(3) {
                background-image: linear-gradient(-225deg,
                        #231557 0%,
                        #0b0e9a 29%,
                        #2c818d 67%,
                        #51aecf 100%);
            }

            .services__card h2 {
                text-align: center;
            }

            .services__card p {
                text-align: center;
                margin-top: 24px;
                font-size: 20px;
            }

            .services__btn {
                display: flex;
                justify-content: center;
                margin-top: 16px;
            }

            .services__card button {
                color: #fff;
                padding: 14px 24px;
                border: none;
                outline: none;
                border-radius: 4px;
                background: #131313;
                font-size: 1rem;
            }

            .services__card button:hover {
                cursor: pointer;
            }

            .services__card:hover {
                transform: scale(1.075);
                transition: 0.3s ease-in;
                cursor: pointer;
            }

            @media screen and (max-width: 1300px) {
                .services__wrapper {
                    grid-template-columns: 1fr 1fr;
                }
            }

            @media screen and (max-width: 768px) {
                .services__wrapper {
                    grid-template-columns: 1fr;
                }
            }

            /* Footer CSS */
            .footer__container {
                background-color: #131313;
                padding: 5rem 0;
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
        </body>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />


        <!-- Navbar Section -->
        <nav class="navbar">
            <div class="navbar__container">
                <a href="/" id="navbar__logo">ON TRADING</a>
                <div class="navbar__toggle" id="mobile-menu">
                    <span class="bar"></span> <span class="bar"></span>
                    <span class="bar"></span>
                </div>
                <li class="navbar__item">
                    <a href="#edu" class="navbar__links" id="edu-page">About</a>
                </li>
                <li class="navbar__item">
                    <a href="#projects" class="navbar__links" id="projects-page">Services</a>
                </li>
                <% if(request.getSession().getAttribute("user")==null) {
                    //System.out.println(request.getSession().getAttribute("user")); %>
                    <li class="navbar__item">
                        <a href="/login" class="navbar__links" id="exp-page">Log In</a>
                    </li>
                    <% } else if(request.getSession().getAttribute("user") !=null) {
                        System.out.println(request.getSession().getAttribute("user")); %>
                        <li class="navbar__item">
                            <a href="/dashboard" class="navbar__links" id="projects-page">Dash</a>
                        </li>
                        <li class="navbar__item">
                            <a href="/pd" class="navbar__links" id="exp-page">Your Account</a>
                        </li>
                        <li class="navbar__item">
                            <a href="/logout" class="navbar__links" id="exp-page">Logout</a>
                        </li>
                        <% } %>

                            </ul>
            </div>
        </nav>

        <!-- Hero Section -->
        <div class="hero" id="home">
            <div class="hero__container">
                <h1 class="hero__heading">Welcome to <span>ON TRADING</span></h1>
                <p class="hero__description">
                    Trade with confidence on the world’s fastest and most secure trading platform
                </p>
                <p1 class="hero__description1">
                    The premier electronic trading platform for online stock traders.
                </p1>
                <!-- <button class="main__btn"><a href="#">Blog</a></button> -->
            </div>
        </div>

        <!-- About Section -->
        <div class="main" id="edu">
            <div class="main__container">
                <div class="main__img--container">
                    <div class="main__img--card">
                        <img src="./nish1.jpg" style="width: 350px; height: 400px" />
                    </div>
                </div>
                <div class="main__content">
                    <h1>Background</h1>
                    <h2>Convenience</h2>
                    <p>Our platform provides
                        clients with the ability to place orders to buy and sell
                        stocks, view the status of their orders, and access
                        their trade and order history, all from the convenience
                        of their own devices.</p>
                    <h2>Real-Time</h2>
                    <p>Our platform offers a wide range of trading options,
                        including equities, options, and futures, as well as
                        access to real-time market data and news. With ON
                        TRADING, clients have everything they need to stay
                        informed and stay ahead of the market.</p>
                </div>
            </div>
        </div>

        <!-- Services Section -->
        <div class="main" id="projects">
            <h1>SERVICES</h1>
            <div class="services__wrapper">
                <div class="services__card">
                    <h2>Liquidity</h2>
                    <p>Insert</p>
                    <div class="services__btn">
                        <button>Open</button>
                    </div>
                </div>
                <div class="services__card">
                    <h2>Service 2</h2>
                    <p>Insert</p>
                    <div class="services__btn">
                        <button>Open</button>
                    </div>
                </div>
                <div class="services__card">
                    <h2>Service 3</h2>
                    <p>Insert</p>
                    <div class="services__btn">
                        <button>Open</button>
                    </div>
                </div>
                <div class="services__card">
                    <h2>Service 4</h2>
                    <p>Insert</p>
                    <div class="services__btn">
                        <button>Open</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- Features Section -->
        <div class="main" id="experience">
            <div class="main__container">
                <div class="main__content">
                    <h1>Secure & Reliable</h1>
                    <h2>...</h2>
                    <p>
                        At ON TRADING, we are committed to providing our clients
                        with a seamless trading experience that is both secure
                        and user-friendly. With our intuitive interface and
                        powerful trading tools, clients can easily manage their
                        portfolios and make informed trading decisions. <br />
                        We pride ourselves on our commitment to customer
                        service. Our team of experienced professionals is
                        dedicated to providing our clients with personalized
                        support and guidance every step of the way.<br />
                    </p>
                    <!-- <button class="main__btn"><a href="#">Button</a></button> -->
                </div>
                <div class="main__img--container">
                    <div class="main__img--card" id="card-2">
                        <img src="./investing.png" alt="" style="width: 320px; height: 420px" />
                    </div>
                </div>
            </div>
        </div>

        <!-- Footer Section -->
        <div class="footer__container">
            <a href="/" id="footer__logo">&copy; 2023 ON TRADING. All Rights Reserved.</a>
        </div>
        </body>

    </html>