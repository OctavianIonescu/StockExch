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
        <title>Banking Application Landing Page</title>
        <style>
            /* add comments here to describe each section */
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
                    <p>insert facts about this platform</p>
                    <a href="/login" class="btn-primary">Get Started</a>
                </section>
                <section>
                    <h2>Secure and reliable</h2>
                    <p>
                        Our platform uses the latest security technology to keep
                        your data safe and secure. With 24/7 monitoring and
                        fraud protection, you can rest easy knowing that your
                        account is protected. Our dedicated support team is
                        available 24/7 to assist you with any questions or
                        concerns you may have. Whether you need help with a
                        order or want to report a suspicious activity, our team
                        is always ready to help you.
                    </p>
                    <a href="#" class="btn-secondary">Learn More</a>
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
