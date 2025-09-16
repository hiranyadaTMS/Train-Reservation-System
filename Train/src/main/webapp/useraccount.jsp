<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Account - GoTrain</title>

<style>
   
	.logo img{
	     	 height: 100px;
	 }
    body {
        font-family: 'Segoe UI', sans-serif;
        background-image:url('images/train.jpg');
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

    .card {
        background-color: rgba(255, 255, 255, 0.6);
        backdrop-effect:blur(5px);
        width: 600px;
        border-radius: 10px;
        box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
        padding: 30px;
    }

    h2 {
        text-align: center;
        color: #2f9e44;
        margin-bottom: 30px;
    }

    table {
        width: 100%;
        border-collapse: collapse;
    }

    td {
        padding: 10px 8px;
        font-size: 16px;
    }

    td:first-child {
        font-weight: bold;
        color: #555;
        width: 40%;
    }

    tr.double td {
        width: 50%;
    }

    .btn-container {
        text-align: center;
        margin-top: 25px;
    }

    .btn-container a input[type="button"] {
        padding: 10px 20px;
        margin: 0 10px;
        background-color: #2f9e44;
        color: white;
        border: none;
        border-radius: 6px;
        cursor: pointer;
        font-size: 15px;
        transition: background-color 0.3s ease;
    }

    .btn-container a input[type="button"]:hover {
        background-color: #228b37;
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

<!-- Header -->
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

<!-- Main Content -->
<div class="main-content">
    <div class="card">
        <h2>My Account Details</h2>

        <table>
        <c:forEach var="user" items ="${userDetails}">
            <c:set var="id" value="${user.id}"/>
            <c:set var="username" value="${user.userName}"/>
            <c:set var="password" value="${user.password}"/>
            <c:set var="fullName" value="${user.fullName}"/>
            <c:set var="email" value="${user.email}"/>
            <c:set var="phone" value="${user.phone}"/>

            <tr class="double">
                <td>Customer ID</td>
                <td>${user.id}</td>
            </tr>
            <tr class="double">
                <td>User Name</td>
                <td>${user.userName}</td>
            </tr>
            <tr>
                <td>Password</td>
                <td>${user.password}</td>
            </tr>
            <tr>
                <td>Full Name</td>
                <td>${user.fullName}</td>
            </tr>
            <tr>
                <td>Email</td>
                <td>${user.email}</td>
            </tr>
            <tr>
                <td>Phone</td>
                <td>${user.phone}</td>
            </tr>
        </c:forEach>
        </table>

        <!-- URLs for update and delete -->
        <c:url value="updateCustomer.jsp" var="cusUpdate">
            <c:param name="id" value="${id}"/>
            <c:param name="username" value="${username}"/>
            <c:param name="password" value="${password}"/>
            <c:param name="fullName" value="${fullName}"/>
            <c:param name="email" value="${email}"/>
            <c:param name="phone" value="${phone}"/>
        </c:url>

        <c:url value="deletecustomer.jsp" var="cusdelete">
            <c:param name="id" value="${id}"/>
            <c:param name="username" value="${username}"/>
            <c:param name="password" value="${password}"/>
            <c:param name="fullName" value="${fullName}"/>
            <c:param name="email" value="${email}"/>
            <c:param name="phone" value="${phone}"/>
        </c:url>

        <div class="btn-container">
            <a href="${cusUpdate}"><input type="button" value="Update My Data"></a>
            <a href="${cusdelete}"><input type="button" value="Delete My Account"></a>
        </div>
    </div>
</div>

<!-- Footer -->
<footer class="footer">
    <div class="contact-details">
        <h3>Contact Us</h3>
        <p>Email: info@example.com</p>
        <p>Phone: +123 456 789</p>
    </div>
    <div class="sponsors">
        <h3>Our Sponsors</h3>
        <img src="https://www.freepnglogos.com/uploads/visa-and-mastercard-logo-26.png" alt="Visa and MasterCard">
        <img src="https://www.freepnglogos.com/uploads/paypal-logo-png-1.png" alt="PayPal">
    </div>
</footer>

</body>
</html>
