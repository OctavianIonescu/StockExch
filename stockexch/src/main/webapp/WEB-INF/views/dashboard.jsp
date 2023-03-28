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
                background-color: #f2f2f2;
                font-family: Arial, sans-serif;
            }

            .container {
                margin: auto;
                padding: 20px;
                max-width: 800px;
                background-color: #fff;
                border-radius: 5px;
                box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            }

            h1 {
                margin-top: 0;
                text-align: center;
                color: #333;
            }

            table {
                border-collapse: collapse;
                margin: 20px 0;
                width: 100%;
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
                display: inline-block;
                padding: 5px 10px;
                background-color: #007bff;
                color: #fff;
                text-decoration: none;
                border-radius: 5px;
                transition: all 0.3s ease-in-out;
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
                border: 1px solid #ccc;
                padding: 10px;
                border-radius: 5px;
            }

            .add-order label {
                display: block;
                margin-bottom: 10px;
                color: #555;
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
                background-color: #007bff;
                color: #fff;
                border: none;
                border-radius: 5px;
                padding: 10px 20px;
                font-size: 16px;
                cursor: pointer;
                transition: all 0.3s ease-in-out;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>Dashboard</h1>
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
                        <td>$170.50</td>
                        <td>2022-03-24 10:30:00</td>
                        <td>PENDING</td>
                        <td class="action"><a href="#">Cancel</a></td>
                    </tr>
                    <tr class="sell">
                        <td>2</td>
                        <td>VOD</td>
                        <td>SELL</td>
                        <td>2</td>
                        <td>$2150.25</td>
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
    </body>
</html>
