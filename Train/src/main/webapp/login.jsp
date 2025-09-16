<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
    <style>
        * {
           	 box-sizing: border-box;
        	}
		.logo img{
	     	 height: 100px;
	   		 }
		
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            background: linear-gradient(to right, #4c6ef5, #15aabf);
            background-image: url('images/train.jpg');
       	    background-size:cover;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }

        .header {
            background-color: rgba(255, 255, 255, 0.6);
            backdrop-filter: blur(5px);
            padding: 15px 30px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .header img {
            height: 50px;
        }

        .navigation ul {
            list-style: none;
            display: flex;
            gap: 20px;
            margin: 0;
            padding: 0;
        }

        .navigation a {
            text-decoration: none;
            color: #000;
            font-weight: bold;
        }

        .main {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 40px 20px;
        }

        form {
            background-color:  rgba(255, 255, 255, 0.6);
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
            max-width: 400px;
            width: 100%;
            text-align: center;
        }
        form h2{
        	color: #1c7ed6;
       		margin-bottom: 25px;
        }

        label {
            display: block;
            text-align: left;
            margin-bottom: 5px;
            font-weight: bold;
            color: #333;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 14px;
        }

        input[type="submit"] {
            width: 100%;
            padding: 12px;
            background-color: #4c6ef5;
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #364fc7;
        }

        .footer {
            background-color: rgba(255, 255, 255, 0.6);
            backdrop-filter: blur(5px);
            padding: 20px;
            display: flex;
            justify-content: space-around;
            align-items: flex-start;
            flex-wrap: wrap;
        }
        .footer h3 {
            margin-bottom: 10px;
        }

        .footer img {
            height: 30px;
            margin: 5px;
        }

        .contact-details, .sponsors {
            margin: 10px;
        }
         .logo img{
      height: 100px;
    </style>
</head>
<body>
    <!-- Header -->
    <header class="header">
        <div class="logo">
            <img src="images/logo1.png" alt="Logo">
        </div>
        <nav class="navigation">
            <ul>
                <li><a href="#">Home</a></li>
                <li><a href="#">About</a></li>
                <li><a href="#">Services</a></li>
                <li><a href="#">Inquiry</a></li>
                <li><a href="#">Contact</a></li>
            </ul>
        </nav>
    </header>

    <!-- Main Content -->
    <main class="main">
    <div class="register-box">
        <form action="log" method="POST">
        
            <h2>Train Reservation Login</h2>

            <label for="username">User name:</label>
            <input type="text" name="username" required>

            <label for="password">Password:</label>
            <input type="password" name="password" required>

            <input type="submit" name="submit" value="Login">
        </form>
        </div>
    </main>

    <!-- Footer -->
    <footer class="footer">
        <div class="contact-details">
            <h3>Contact Us</h3>
            <p>Email: info@example.com</p>
            <p>Phone: +123 456 789</p>
        </div>
        <div class="sponsors">
            <h3>Our Sponsors</h3>
            <img src="https://www.freepnglogos.com/uploads/visa-and-mastercard-logo-26.png" alt="Sponsor 1">
            <img src="https://www.freepnglogos.com/uploads/paypal-logo-png-1.png" alt="Sponsor 2">
        </div>
    </footer>
</body>
</html>
