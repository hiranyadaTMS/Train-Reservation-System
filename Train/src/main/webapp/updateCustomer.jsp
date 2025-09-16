<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update My Data</title>

<style>
    * {
        box-sizing: border-box;
    }

    body {
        font-family: 'Segoe UI', sans-serif;
        background: linear-gradient(to right, #63e6be, #38d9a9);
        background-image: url('images/train.jpg');
        background-size:cover;
        margin: 0;
        padding: 0;
        display: flex;
        flex-direction: column;
        min-height: 100vh;
    }

    .header {
        background-color: rgba(255, 255, 255, 0.8);
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

    .main-content {
        flex-grow: 1;
        display: flex;
        justify-content: center;
        align-items: center;
        padding: 40px 0;
    }

    .update-box {
        background-color:  rgba(255, 255, 255, 0.6);
        padding: 40px;
        border-radius: 12px;
        box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
        width: 350px;
        text-align: center;
    }

    .update-box h2 {
        color: #2f9e44;
        margin-bottom: 20px;
    }

    .update-box input[type="text"],
    .update-box input[type="submit"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 12px;
        border-radius: 6px;
        border: 1px solid #ccc;
        box-sizing: border-box;
        font-size: 14px;
    }

    .update-box input[readonly] {
        background-color: #f1f1f1;
    }

    .update-box input[type="submit"] {
        background-color: #2f9e44;
        color: white;
        border: none;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    .update-box input[type="submit"]:hover {
        background-color: #2b8a3e;
    }

    .footer {
        background-color: rgba(255, 255, 255, 0.8);
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
</style>
</head>
<body>

<header class="header">
    <div class="logo">
        <img src="images/logo1.png" alt="Logo">
    </div>
    <nav class="navigation">
        <ul>
            <li><a href="#">About</a></li>
            <li><a href="#">Services</a></li>
            <li><a href="#">Contact</a></li>
        </ul>
    </nav>
</header>

<%
    String id = request.getParameter("id");
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String fullName = request.getParameter("fullName");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
%>

<div class="main-content">
    <div class="update-box">
        <h2>Update My Account</h2>
        <form action="update" method="post">
            <input type="text" name="id" value="<%=id%>" readonly>
            <input type="text" name="username" value="<%=username%>">
            <input type="text" name="password" value="<%=password%>">
            <input type="text" name="fullname" value="<%=fullName%>">
            <input type="text" name="email" value="<%=email%>">
            <input type="text" name="phone" value="<%=phone%>">
            <input type="submit" name="submit" value="Update My Data">
        </form>
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
        <img src="https://www.freepnglogos.com/uploads/visa-and-mastercard-logo-26.png" alt="Sponsor 1">
        <img src="https://www.freepnglogos.com/uploads/paypal-logo-png-1.png" alt="Sponsor 2">
    </div>
</footer>

</body>
</html>
