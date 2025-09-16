<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact Us</title>
<style>
body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('images/train.jpg');
            background-size: cover;
            color: black;
        }

    .logo img {
        height: 100px;
    }

    .header {
        padding: 15px 30px;
        display: flex;
        justify-content: space-between;
        align-items: center;
        background-color: rgba(255, 255, 255, 0.6);
        backdrop-filter: blur(5px);
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

    .footer {
        padding: 20px 40px;
        display: flex;
        justify-content: space-between;
        flex-wrap: wrap;
        gap: 20px;
        align-items: flex-start;
        background-color: rgba(255, 255, 255, 0.6);
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

    /* Additional form styling */
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
    }

    form {
        max-width: 600px;
        margin: 30px auto;
        padding: 20px;
        background-color: #f2f2f2;
        border-radius: 8px;
    }

    input[type="text"], input[type="email"], textarea {
        width: 100%;
        padding: 10px;
        margin-top: 6px;
        margin-bottom: 16px;
        border: 1px solid #ccc;
        border-radius: 4px;
    }

    input[type="submit"] {
        background-color: #e67e22;
        color: white;
        padding: 12px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }

    input[type="submit"]:hover {
        background-color: #d35400;
    }

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

    <!-- Contact Form -->
    <h2 style="text-align:center; margin-top: 20px;">Contact Us</h2>
    <form action="contact-handler.jsp" method="post">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>

        <label for="message">Message:</label>
        <textarea id="message" name="message" rows="5" required></textarea>

        <input type="submit" value="Send Message">
    </form>

    <!-- Footer -->
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