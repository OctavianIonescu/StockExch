<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link
            rel="stylesheet"
            href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
            integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
            crossorigin="anonymous"
            alt="Bootstrap CDN"
        />
        <title>Trading Application Landing Page</title>
        </head>
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
            background: #ee0979; /* fallback for old browsers */
            background: -webkit-linear-gradient(
                to right,
                #ff6a00,
                #ee0979
            ); /* Chrome 10-25, Safari 5.1-6 */
            background: linear-gradient(
                to right,
                #ff6a00,
                #ee0979
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
                #ff6a00,
                #ee0979
            ); /* Chrome 10-25, Safari 5.1-6 */
            background: linear-gradient(
                to right,
                #ff6a00,
                #ee0979
            ); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
            color: #fff;
            transition: all 0.3 ease;
        }
        
        .navbar__links:hover {
            color: #9518fc;
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
            background: #ee0979; /* fallback for old browsers */
            background: -webkit-linear-gradient(
                to right,
                #ff6a00,
                #ee0979
            ); /* Chrome 10-25, Safari 5.1-6 */
            background: linear-gradient(
                to right,
                #ff6a00,
                #ee0979
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
            background: #da22ff; /* fallback for old browsers */
            background: -webkit-linear-gradient(
                to right,
                #9114ff,
                #da22ff
            ); /* Chrome 10-25, Safari 5.1-6 */
            background: linear-gradient(
                to right,
                #8f0eff,
                #da22ff
            ); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
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
            border-bottom: 4px solid rgb(132, 0, 255);
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
            background-color: #fe3b6f;
            background-image: linear-gradient(to top, #ff087b 0%, #ed1a52 100%);
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
            background: #ff8177; /* fallback for old browsers */
            background: -webkit-linear-gradient(
                to right,
                #9114ff,
                #da22ff
            ); /* Chrome 10-25, Safari 5.1-6 */
            background: linear-gradient(
                to right,
                #8f0eff,
                #da22ff
            ); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
            background-size: 100%;
            -webkit-background-clip: text;
            -moz-background-clip: text;
            -webkit-text-fill-color: transparent;
            -moz-text-fill-color: transparent;
        }
        
        .main__content p {
            margin-bottom: 2rem;
            font-size: 1rem;
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
            background-image: linear-gradient(to right, #00dbde 0%, #fc00ff 100%);
        }
        
        .fa-heart,
        .fa-cloud {
            font-size: 14rem;
        }
        
        #card-2 {
            background: #ff512f;
            background: -webkit-linear-gradient(to right, #dd2476, #ff512f);
            background: linear-gradient(to right, #dd2476, #ff512f);
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
            background-image: linear-gradient(to right, #ff0844 0%, #f7673c 100%);
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
            background-image: linear-gradient(to right, #00dbde 0%, #fc00ff 100%);
            transition: 0.3s ease-in;
        }
        
        .services__card:nth-child(2) {
            background: #1fa2ff; /* fallback for old browsers */
            background: -webkit-linear-gradient(
                to right,
                #a6ffcb,
                #12d8fa,
                #1fa2ff
            ); /* Chrome 10-25, Safari 5.1-6 */
            background: linear-gradient(
                to right,
                #a6ffcb,
                #12d8fa,
                #1fa2ff
            ); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
        }
        
        .services__card:nth-child(3) {
            background-image: linear-gradient(
                -225deg,
                #231557 0%,
                #44107a 29%,
                #ff1361 67%,
                #fff800 100%
            );
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
            font-size: 2rem;
        }
        
        .footer__links {
            width: 100%;
            max-width: 1000px;
            display: flex;
            justify-content: center;
        }
        
        .footer__link--wrapper {
            display: flex;
        }
        
        .footer__link--items {
            display: flex;
            flex-direction: column;
            align-items: flex-start;
            margin: 16px;
            text-align: left;
            width: 160px;
            box-sizing: border-box;
        }
        
        .footer__link--items h2 {
            margin-bottom: 16px;
            color: #fff;
        }
        
        .footer__link--items a {
            color: #fff;
            text-decoration: none;
            margin-bottom: 0.5rem;
            transition: 0.3 ease-out;
        }
        
        .footer__link--items a:hover {
            color: #e9e9e9;
            transition: 0.3 ease-out;
        }
        
        .social__icon--link {
            color: #fff;
            font-size: 24px;
        }
        
        .social__media {
            max-width: 1000px;
            width: 100%;
        }
        
        .social__media--wrap {
            display: flex;
            justify-content: space-between;
            align-items: center;
            width: 90%;
            max-width: 1000px;
            margin: 40px auto 0 auto;
        }
        
        .social__icons {
            display: flex;
            justify-content: space-between;
            align-items: center;
            width: 240px;
        }
        
        .website__rights {
            color: #fff;
        }
        
        @media screen and (max-width: 820px) {
            .footer__links {
                padding-top: 2rem;
            }
        
            #footer__logo {
                margin-bottom: 2rem;
            }
        
            .website__rights {
                margin-bottom: 2rem;
            }
        
            .footer__link--wrapper {
                flex-direction: column;
            }
        
            .social__media--wrap {
                flex-direction: column;
            }
        }
        
        @media screen and (max-width: 480px) {
            .footer__link--items {
                margin: 0;
                padding: 10px;
                width: 100%;
            }
        }
        </style>
    </body>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <!-- Navbar Section -->
        <nav class="navbar">
            <div class="navbar__container">
                <a href="#home" id="navbar__logo">NISHAT HUMAIRA</a>
                <div class="navbar__toggle" id="mobile-menu">
                    <span class="bar"></span> <span class="bar"></span>
                    <span class="bar"></span>
                </div>
                <ul class="navbar__menu">
                    <li class="navbar__item">
                        <a href="#home" class="navbar__links" id="home-page"
                            >About</a
                        >
                    </li>
                    <li class="navbar__item">
                        <a href="#edu" class="navbar__links" id="edu-page"
                            >Education</a
                        >
                    </li>
                    <li class="navbar__item">
                        <a
                            href="#projects"
                            class="navbar__links"
                            id="projects-page"
                            >Projects</a
                        >
                    </li>
                    <li class="navbar__item">
                        <a
                            href="#experience"
                            class="navbar__links"
                            id="exp-page"
                            >Experience</a
                        >
                    </li>
                    <li class="navbar__btn">
                        <a href="#blog" class="button" id="blog-page">Blog</a>
                    </li>
                </ul>
            </div>
        </nav>

        <!-- Hero Section -->
        <div class="hero" id="home">
            <div class="hero__container">
                <h1 class="hero__heading">Hi I'm <span>Nishat</span></h1>
                <p class="hero__description">
                    Graduate Software Engineer and Content Creator based in
                    London
                </p>
                <p1 class="hero__description1">
                    Dedicated to empowering the next generation of female
                    technologists through the use of social media to influence
                    and impact those around me. <br />
                    I frequently talk about my personal experiences and my love
                    of fashion.
                </p1>
                <!-- <button class="main__btn"><a href="#">Blog</a></button> -->
            </div>
        </div>

        <!-- Education Section -->
        <div class="main" id="edu">
            <div class="main__container">
                <div class="main__img--container">
                    <div class="main__img--card">
                        <img
                            src="./nish1.jpg"
                            style="width: 350px; height: 400px"
                        />
                    </div>
                </div>
                <div class="main__content">
                    <h1>Educational Background</h1>
                    <h2>BSc Computer Science</h2>
                    <p>University of Greenwich | 2018-2021</p>
                    <h2>MSc Advanced Software Engineering</h2>
                    <p>King's College London | 2021-2022</p>
                    <button class="main__btn">
                        <a href="#">Button</a>
                    </button>
                </div>
            </div>
        </div>

        <!-- Services Section -->
        <div class="main" id="projects">
            <h1>PROJECTS</h1>
            <div class="services__wrapper">
                <div class="services__card">
                    <h2>Disso 1</h2>
                    <p>Arduino Home Security System</p>
                    <div class="services__btn">
                        <button>Open</button>
                    </div>
                </div>
                <div class="services__card">
                    <h2>Disso 2</h2>
                    <p>Argupedia</p>
                    <div class="services__btn">
                        <button>Open</button>
                    </div>
                </div>
                <div class="services__card">
                    <h2>Arithmetic Quiz</h2>
                    <p>Python</p>
                    <div class="services__btn">
                        <button>Open</button>
                    </div>
                </div>
                <div class="services__card">
                    <h2>General Projects</h2>
                    <p>JavaScript & Go Lang</p>
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
                    <h1>Experience</h1>
                    <h2>Coding Trainer @ 01 Founders</h2>
                    <p>Aug 2021-Present</p>
                    <p>
                        Coaching and mentoring a cohort of over 100 fellows
                        through their 2 year journey into tech & becoming
                        full-stack developers. Providing guidance, support, and
                        encouragement through progress review meetings to ensure
                        success and focus on professional development.
                    </p>

                    <h2>Tech Tutor @ FunTech</h2>
                    <p>Jul 2020-Aug 2020</p>
                    <p>
                        Taught games design courses to children aged 7-16 over
                        the summer holiday. Covered a range of material from
                        beginner topics such as iteration, conditional
                        statements, event-handling in Scratch to advanced
                        material like Boolean logic, variables, dynamic
                        interaction and user interface design.
                    </p>
                    <!-- <button class="main__btn"><a href="#">Button</a></button> -->
                </div>
                <div class="main__img--container">
                    <div class="main__img--card" id="card-2">
                        <img
                            src="./nish2.jpg"
                            alt=""
                            style="width: 320px; height: 420px"
                        />
                    </div>
                </div>
            </div>
        </div>

        <!-- Footer Section -->
        <div class="footer__container">
            <div class="footer__links">
                <div class="footer__link--wrapper"></div>
            </div>
            <section class="social__media">
                <div class="social__media--wrap">
                    <div class="footer__logo">
                        <a href="/" id="footer__logo">NISHAT HUMAIRA</a>
                    </div>
                    <div class="social__icons">
                        <a href="/" class="social__icon--link"
                            ><i class="fab fa-instagram"></i
                        ></a>
                        <a href="/" class="social__icon--link"
                            ><i class="fab fa-linkedin"></i
                        ></a>
                        <a href="/" class="social__icon--link"
                            ><i class="fab fa-twitter"></i
                        ></a>
                    </div>
                </div>
            </section>
        </div>

        <script src="app.js"></script>
    </body>
</html>
