<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GoTrain - Payment Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('images/train.jpg');
            background-size: cover;
            color: white;
        }

        .header {
            background-color: rgba(61, 57, 57, 0.5);
            color: white;
            padding: 20px 0;
            display: flex;
            justify-content: space-between;
            align-items: center;
            height: 35px;
        }

        .logo img {
            width: 100px;
            height: auto;
            margin-left: 20px;
        }

        .navigation ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            display: flex;
        }

        .navigation li {
            margin: 0 15px;
        }

        .navigation a {
            color: rgb(255, 255, 255);
            text-decoration: none;
            font-weight: bold;
            transition: 0.3s;
        }

        .navigation a:hover {
            color: #ff9900;
        }

        .footer {
            background-color: rgba(51, 51, 51, 0.5);
            height: 130px;
            color: white;
            padding: 20px 0;
            display: flex;
            justify-content: space-around;
            align-items: center;
        }

        .contact-details, .sponsors {
            text-align: center;
        }

        .sponsors img {
            width: 100px;
            height: auto;
            margin: 5px;
        }

        .inquiry {
            background-color: rgba(0, 0, 0, 0.7);
            padding: 20px;
            border-radius: 10px;
            width: 600px;
            margin: 50px auto;
            color: white;
            text-align: center;
        }

        fieldset {
            border: 2px solid #ff9900;
            padding: 10px;
            margin-bottom: 20px;
        }

        legend {
            color: #ff9900;
            font-size: 20px;
        }

        h4 {
            margin: 10px 0;
            font-size: 16px;
        }

        input[type="text"], input[type="submit"] {
            width: 90%;
            padding: 10px;
            margin-bottom: 20px;
            border-radius: 5px;
            border: none;
        }

        input[type="text"] {
            background-color: rgba(255, 255, 255, 0.8);
            color: black;
        }

        input[type="submit"] {
            background-color: #ff9900;
            color: white;
            font-size: 18px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #cc7a00;
        }

        .cards {
            display: block;
            margin: 20px auto;
            width: 50%;
        }
    </style>
    <!-- HEADER -->
    <header class="header">
        <div class="logo">
            <img src="images/logo1.png" alt="Logo">
        </div>
        <nav class="navigation">
            <ul>
                <li><a href="home.jsp">Home</a></li>
                <li><a href="#">About</a></li>
                <li><a href="#">Services</a></li>
                <li><a href="InqInsert.jsp">Inquiry</a></li>
                <li><a href="#">Contact</a></li>
            </ul>
        </nav>
    </header>
    
    
    <div class="inquiry">
    <!-- Main Content -->
    <div class="contt">
        <form action="view" method="post">
            <h1 class="capitalize">Payment Handling</h1><br>
            <h3>All the details are saved in the Payment Handling table.</h3>
            <h4>Payment Handling can Update/Delete these details.</h4>
            <input type="submit" name="viewbtn" value="View Payment Table">
        </form>
    </div>
</div>
<br>
<br>

<br>
<br>

    <!-- FOOTER -->
    <footer class="footer">
        <div class="contact-details">
            <h3>Contact Us</h3>
            <p>Email: info@example.com</p>
            <p>Phone: +123 456 789</p>
        </div>
        <div class="sponsors">
            <h3>Our Sponsors</h3>
            <img src="images/visa.png" alt="Sponsor 1">
            <img src="images/paypal.png" alt="Sponsor 2">
        </div>
    </footer>
</body>
</html>
