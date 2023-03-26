<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link
            rel="stylesheet"
            href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
            integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
            crossorigin="anonymous"
            alt="Bootstrap CDN"
        />
        <title>Trading Application Landing Page</title>
        <style>
            body {
                padding: 50px;
                background-color: #222;
                color: #eee;
            }
            header {
                display: flex;
                align-items: center;
                justify-content: space-between;
                margin-bottom: 150px;
            }
            h1 {
                margin: 0;
				font-style: oblique;
				font-family: verdana;
                font-weight: bold;
            }
            nav ul {
                display: flex;
                list-style: none;
                margin: 0;
                padding: 0;
            }
            nav li {
                margin-right: 20px;
            }
            nav a {
                text-decoration: none;
                color: #004186;
                font-weight: bold;
                font-size: 18px;
            }
            main section {
                margin-bottom: 50px;
            }
            h2 {
                margin-top: 0;
                margin-bottom: 10px;
                font-weight: bold;
                font-size: 32px;
                color: #eee;
            }
            p {
                margin: 0;
                line-height: 1.5;
                font-size: 18px;
                margin-bottom: 10px;
                color: #eee;
            }
            .btn-primary {
                background-color: #004186;
                color: white;
                padding: 6px 12px;
                border: none;
                border-radius: 4px;
                font-size: 15px;
                cursor: pointer;
                transition: background-color 0.2s ease-in-out;
            }
            .btn-primary:hover {
                background-color: #003165;
            }
            .btn-secondary {
                background-color: #6c757d;
                color: white;
                padding: 6px 12px;
                border: none;
                border-radius: 4px;
                font-size: 15px;
                cursor: pointer;
                transition: background-color 0.2s ease-in-out;
            }
            .btn-secondary:hover {
                background-color: #5a6268;
            }
            footer {
                position: absolute;
                bottom: 0;
                width: 100%;
                text-align: center;
                padding-top: 20px;
                padding-bottom: 10px;
                background-color: #333333;
                border-top: 1px solid #222;
            }
        </style>

        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    </head>
    <body>
        <div>
            <header>
                <h1>ON TRADING</h1>
                <nav>
                    <ul>
                        <li><a href="#">Home</a></li>
                        <li><a href="#">Accounts</a></li>
                        <li><a href="#">Transactions</a></li>
                        <li><a href="#">Contact</a></li>
                    </ul>
                </nav>
            </header>
            <main>
                <section>
                    <h2>About</h2>
                    <p>
                        Welcome to ON TRADING, the premier electronic trading
                        platform for online stock traders. Our platform provides
                        clients with the ability to place orders to buy and sell
                        stocks, view the status of their orders, and access
                        their trade and order history, all from the convenience
                        of their own devices. <br />
                        Our platform offers a wide range of trading options,
                        including equities, options, and futures, as well as
                        access to real-time market data and news. With ON
                        TRADING, clients have everything they need to stay
                        informed and stay ahead of the market.
                    </p>
                    <a href="/login" class="btn-primary">Get Started</a>
                </section>
                <section>
                    <h2>Secure and reliable</h2>
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
                    <a href="#" class="btn-secondary">Learn More</a>
				<!-- </p>Thank you for choosing ON TRADING, the ultimate electronic trading platform for online stock traders.</p> -->
                </section>
            </main>
            <footer>
                <p>&copy; 2023 ON TRADING. All Rights Reserved.</p>
            </footer>

            <script
                src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
                integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/XvoPhY6zzExbNM"
                crossorigin="anonymous"
            ></script>
            <script
                src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
                integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
                crossorigin="anonymous"
            ></script>
            <script
                src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
                integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
                crossorigin="anonymous"
            ></script>
        </div>
    </body>
</html>