<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GoTrain - Delete Payment</title>
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
            
            
            
            
            
             <li><a href="#">Home</a></li>
                <li><a href="#">About</a></li>
                <li><a href="#">Services</a></li>
                <li><a href="#">Inquiry</a></li>
                <li><a href="#">Contact</a></li>
            </ul>
        </nav>
    </header>

    
    <!-- Get the details passed from parameter from the URL of the paymentaccount.jsp page -->
    <%
   		String paymentid = request.getParameter("paymentid");
        String propertyname = request.getParameter("propertyname");
        String name = request.getParameter("name");
        String cardno = request.getParameter("cardno");
        String cardexpdate = request.getParameter("cardexpdate");
        String cvc = request.getParameter("cvc");
    %>
            <div class="inquiry">
        
        <h1 align="center" class="capitalize">Delete the Record</h1> 
        
    <form action="deletepayment" method="post">
    	
    
        Card ID: <br/> 
        <input type="text" class="idper" name="paymentid" value="<%= paymentid %>" readonly><br>
    	Card Name: <br/>
        <input type="text" name="propertyname" value="<%= propertyname %>"readonly class="idper"><br>
        Customer's Name: <br/>
        <input type="text" name="name" value="<%= name %>" readonly class="idper"><br>
        Card Number:<br/>
        <input type="text" name="cardno" value="<%= cardno %>"readonly class="idper"><br>
        Card Expire Date: <br/>
        <input type="text" name="cardexpdate" value="<%= cardexpdate %>"readonly class="idper"><br>
        CVC: <br/>
        <input type="text" name="cvc" value="<%= cvc %>"readonly class="idper"><br>
        <br>
        <input type="submit" name="submit" value="Delete The Data">
    </form>

    </div>
<br><br>
    

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