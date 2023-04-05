<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Dashboard</title>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
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
            .container {
                background: #000000;
                background: linear-gradient(to right, #1d1c1c, #000000);
                margin: auto;
                padding: 100px;
                max-width: 900px;
                background-color: #fff;
                border-radius: 5px;
                box-shadow: 0px 0px 10px rgba(28, 28, 28, 0.1);
            }
            /* Hero Section */
            .hero {
                background: #000000;
                background: linear-gradient(to right, #161616, #000000);
                padding: 0;
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


            form {
                display: flex;
                flex-direction: column;
                align-items: center;
                width: 100%;
            }

    

            table {
                border-collapse: collapse;
                margin: 20px 0;
                width: 120%;
            }

            th,
            td {
                padding: 10px;
                text-align: left;
                border-bottom: 1px solid #ccc;
                color: #555;
            }

            th {
                background-color: #f2f2f2;
                font-weight: normal;
            }

            .buy {
                background-color: #e6ffee;
            }

            .sell {
                background-color: #ffe6e6;
            }

            .action {
                text-align: center;
            }

            .action a {
                padding: 5px 10px;

                text-decoration: none;

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

            .action a:hover {
                background-color: #0056b3;
                transition: all 0.3s ease-in-out;
            }

            .add-order {
                margin-top: 20px;
                display: flex;
                align-items: center;
                justify-content: space-between;
                border: 1.5px solid #1128f3;
                padding: 10px;
                border-radius: 5px;
            }

            .add-order label {
                display: block;
                margin-bottom: 10px;
                color: #ffffff;
            }

            .add-order input[type="text"],
            .add-order input[type="number"] {
                display: block;
                margin-bottom: 10px;
                padding: 5px;
                border: 1px solid #ccc;
                border-radius: 5px;
                width: 200px;
                font-size: 16px;
                color: #555;
            }

            .add-order select {
                display: block;
                margin-bottom: 10px;
                padding: 5px;
                border: 1px solid #ccc;
                border-radius: 5px;
                width: 200px;
                font-size: 16px;
                color: #555;
            }

            .add-order input[type="submit"] {
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

            .add-order input[type="submit"]:hover {
                background-color: #0069d9;
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
                <p class="hero__description">Dashboard</p>
                <table>
                    <thead>
                        <tr>
                            <th>Order ID</th>
                            <th>Stock</th>
                            <th>Type</th>
                            <th>Quantity</th>
                            <th>Price</th>
                            <th>Time</th>
                            <th>Status</th>
                            <th class="action">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- Display BUY and SELL orders here -->
                        <tr class="buy">
                            <td>1</td>
                            <td>BT</td>
                            <td>BUY</td>
                            <td>1</td>
                            <td>£170.50</td>
                            <td>2022-03-24 10:30:00</td>
                            <td>PENDING</td>
                            <td class="action"><a href="#">Cancel</a></td>
                        </tr>
                        <tr class="sell">
                            <td>2</td>
                            <td>VOD</td>
                            <td>SELL</td>
                            <td>2</td>
                            <td>£2150.25</td>
                            <td>2022-03-24 11:15:00</td>
                            <td>FILLED</td>
                            <td class="action"><a href="#">View</a></td>
                        </tr>
                    </tbody>
                </table>

                <div class="add-order">
                    <h2>Add Order</h2>
                    <form action="" method="post">
                        <label for="stock">Stock:</label>
                        <input type="text" id="stock" name="stock" required />
                        <label for="type">Type:</label>
                        <select id="type" name="type" required>
                            <option value="">Select Type</option>
                            <option value="BUY">BUY</option>
                            <option value="SELL">SELL</option>
                        </select>
                        <label for="quantity">Quantity:</label>
                        <input
                            type="number"
                            id="quantity"
                            name="quantity"
                            required
                        />
                        <label for="price">Price:</label>
                        <input
                            type="number"
                            id="price"
                            name="price"
                            step="0.01"
                            required
                        />
                        <input type="submit" value="Add Order" />
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
