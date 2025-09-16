<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Page</title>
<style>
    * {
        box-sizing: border-box;
    }
    body {
        font-family: 'Segoe UI', sans-serif;
        background: linear-gradient(to right, #4dabf7, #228be6);
        background-image: url('images/train.jpg');
        background-size:cover;
        margin: 0;
        padding: 0;
        display: flex;
        flex-direction: column;
        min-height: 100vh;
    }
	 .logo img{
      height: 100px;
    }
    .header {
        padding: 15px 30px;
        display: flex;
        justify-content: space-between;
        align-items: center;
        background-color: rgba(255, 255, 255, 0.6); /* semi-transparent white */
        backdrop-filter: blur(5px); /* optional: makes text clearer over the background */
    }

    .header img {
        height: 100px;
    }

   .navigation ul {
      list-style-type: none;
      display: flex;
      margin: 0;
      padding: 0;
    }

    .navigation li {
      margin: 0 15px;
    }

    .navigation a {
      text-decoration: none;
      color: #333;
      font-weight: bold;
      font-size: 18px;
    }

    .navigation a:hover {
      color: #e67e22;
    }

    .main-content {
        flex: 1;
        display: flex;
        justify-content: center;
        align-items: center;
        padding: 40px 20px;
    }

    .register-box {
        background-color:  rgba(255, 255, 255, 0.6);
        width: 100%;
        max-width: 420px;
        padding: 40px 30px;
        border-radius: 12px;
        box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
        text-align: center;
    }

    .register-box h2 {
        color: #1c7ed6;
        margin-bottom: 25px;
    }

    .register-box input[type="text"],
    .register-box input[type="email"],
    .register-box input[type="password"] {
        width: 100%;
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 8px;
        font-size: 15px;
    }

    .register-box button {
        width: 100%;
        padding: 12px;
        margin-top: 15px;
        background-color: #228be6;
        color: white;
        border: none;
        border-radius: 8px;
        font-size: 16px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    .register-box button:hover {
        background-color: #1c7ed6;
    }

    .footer {
        padding: 20px 40px;
        display: flex;
        justify-content: space-between;
        flex-wrap: wrap;
        gap: 20px;
        align-items: flex-start;
        background-color: rgba(255, 255, 255, 0.6); /* semi-transparent white */
 	    backdrop-filter: blur(5px);
    }

    .footer h3 {
        margin-bottom: 10px;
    }

    .footer p {
        margin: 4px 0;
    }

    .footer img {
        height: 30px;
        margin-right: 10px;
    }

    .contact-details, .sponsors {
        min-width: 200px;
    }

    @media (max-width: 600px) {
        .header, .footer {
            flex-direction: column;
            align-items: flex-start;
        }

        .navigation ul {
            flex-direction: column;
            gap: 10px;
        }
    }
</style>
</head>
<body>
    <header class="header">
        <div class="logo">
            <img src="images/logo1.png" alt="Logo">
        </div>
        <nav class="navigation">
            <ul>
             <li><a href="home.jsp">Home</a></li>
                <li><a href="Aboutus.jsp">About</a></li>
                <li><a href="#">Services</a></li>
                <li><a href="#">Inquiry</a></li>
                <li><a href="#">Contact</a></li>
            </ul>
        </nav>
    </header>

    <div class="main-content">
        <div class="register-box">
            <h2>Create Account</h2>
            <form action="CustomerInsert" method="post">
                <input type="text" name="name" placeholder="Full Name" required>
                <input type="text" name="phone" placeholder="Phone Number"pattern="^0(7[0-9]{8})$" required>
                <input type="email" name="email" placeholder="Email" required>
                <input type="text" name="username" placeholder="Username" required>
                <input type="password" name="password" placeholder="Password" required>
                <button type="submit" name="submit">Sign Up</button>
            </form>
             <p>Already have an account? <a href="login.jsp">Login here</a></p> 
        </div>
    </div>

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
