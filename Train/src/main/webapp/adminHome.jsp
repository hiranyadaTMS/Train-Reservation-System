<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GoTrain - Admin Dashboard</title>
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
            background-blend-mode: lighten;
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

        .dashboard {
            padding: 40px;
        }

        .dashboard h1 {
            font-size: 40px;
            text-align: center;
            color: white;
        }

        .cards {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
            margin-top: 30px;
        }

        .card {
            background-color: rgba(0, 0, 0, 0.7);
            padding: 20px;
            border-radius: 10px;
            text-align: center;
            color: white;
        }

        .card h2 {
            font-size: 25px;
            margin-bottom: 15px;
        }

        .card p {
            font-size: 18px;
        }

        .card a {
            text-decoration: none;
            color: #0b2c41;
            font-weight: bold;
            transition: color 0.3s;
        }

        .card a:hover {
            color: #154a6a;
        }

        .box h1 {
            margin-left: 250px;
            color: #fff;
            font-size: 30px;
            font-weight: 800;
            letter-spacing: 0.1em;
            text-shadow: 0 0 10px #00b3ff, 0 0 20px #00b3ff, 0 0 40px #00b3ff, 0 0 80px #00b3ff, 0 0 120px #00b3ff;
        }
    </style>
</head>

<body>
    <!-- HEADER -->
    <header class="header">
        <div class="logo">
            <img src="images/logo1.png" alt="Logo">
        </div>
        <div class="box"></div>
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

    <!-- DASHBOARD MAIN CONTENT -->
    <div class="dashboard">
        <h1>Admin Dashboard</h1>
        <div class="cards">
            <div class="card">
                <h2>Manage Users</h2>
                <p>View, edit, and delete user accounts.</p>
                <a href="useraccount.jsp">Go to Users</a>
            </div>
            <div class="card">
                <h2>Inquiries</h2>
                <p>Review inquiries submitted by users.</p>
                <a href="InqInsert.jsp">View Inquiries</a>
            </div>
            <div class="card">
                <h2>Add Payment</h2>
                <p>Update and manage payment information.</p>
                <a href="paymentinsert.jsp">Go to Settings</a>
            </div>
            <div class="card">
                <h2>Book Train</h2>
                <p>Book and edit bookings.</p>
                <a href="booktrain.jsp">Generate Reports</a>
            </div>
            <div class="card">
                <h2>Manage Services</h2>
                <p>Edit or add new services to the platform.</p>
                <a href="#">Go to Services</a>
            </div>
            <div class="card">
                <h2>Logout</h2>
                <p>Log out from the admin panel.</p>
                <a href="logout.jsp">Log Out</a>
            </div>
        </div>
    </div>

    <!-- FOOTER -->
<footer class="footer">
        <div class="contact-details">
            <h3>Contact Us</h3>
            <p>Email: info@example.com</p>
            <p>Phone: +123 456 789</p>
        </div>
        <div class="sponsors">
            <h3>Our Sponsors</h3>
            <img src="https://www.freepnglogos.com/uploads/visa-and-mastercard-logo-26.png" alt="Visa & MasterCard">
            <img src="https://www.freepnglogos.com/uploads/paypal-logo-png-1.png" alt="PayPal">
        </div>
    </footer>
</body>

</html>
