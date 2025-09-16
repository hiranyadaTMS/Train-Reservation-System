<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="script/myscript.js"></script>
    <title>GoTrain- All Cards</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('images/train.jpg');
            background-size: cover;
            color: white;
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
                table {
            width: 90%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: rgba(192, 192, 192, 0.9);
            border-radius: 8px;
            overflow: hidden;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #007BFF;
            color: white;
        }

        tr:hover {
            background-color: #f1f1f1;
        }
         input[type="button"] {
            background-color: #007BFF;
            color: white;
            border: none;
            padding: 10px 15px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        input[type="button"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>

<body>
    <!-- HEADER -->
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

   
        <table border="1">
            <tr>
           		<th>Card ID</th>
                <th>Card Name</th>
                <th>Customer Name</th>
                <th>Card Number</th>
                <th>Card Expire Date</th>
                <th>CVC</th>
                <th>Update</th>
                <th>Delete</th>
            </tr>	

            <c:forEach var="payment" items="${paydetails}">
            
                <c:set var="paymentId" value="${payment.paymentid}"/>
				<c:set var="propertyname" value="${payment.propertyname}"/>
				<c:set var="name" value="${payment.name}"/>
				<c:set var="cardno" value="${payment.cardno}"/>
				<c:set var="cardexpdate" value="${payment.cardexpdate}"/>
				<c:set var="cvc" value="${payment.cvc}"/>
				
	
                <tr>
                
               		<td>${payment.paymentid}</td>
                    <td>${payment.propertyname}</td>
                    <td>${payment.name}</td>
                    <td>${payment.cardno}</td>
                    <td>${payment.cardexpdate}</td>
                    <td>${payment.cvc}</td>
                    <td>
                        <c:url value="updatepayment.jsp" var="payupdate">
                       	    <c:param name="paymentid" value="${payment.paymentid}"/>
                            <c:param name="propertyname" value="${payment.propertyname}"/>
                            <c:param name="name" value="${payment.name}"/>
                            <c:param name="cardno" value="${payment.cardno}"/>
                            <c:param name="cardexpdate" value="${payment.cardexpdate}"/>
                            <c:param name="cvc" value="${payment.cvc}"/>
                        </c:url>
                        <a href="${payupdate}">
                            <input type="button" name="update" value="Update Details">
                        </a>
                    </td>
                    <td>
                        <c:url value="deletepayment.jsp" var="paydelete">
                         	<c:param name="paymentid" value="${payment.paymentid}"/>
                            <c:param name="propertyname" value="${payment.propertyname}"/>
                            <c:param name="name" value="${payment.name}"/>
                            <c:param name="cardno" value="${payment.cardno}"/>
                            <c:param name="cardexpdate" value="${payment.cardexpdate}"/>
                            <c:param name="cvc" value="${payment.cvc}"/>
                        </c:url>
                        <a href="${paydelete}">
                            <input type="button" name="delete" value="Delete Details">
                        </a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    


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