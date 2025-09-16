<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>GoTrain - Insert</title>
<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	background-image: url('images/train.jpg');
	background-size: cover;
}

    .header {
        padding: 15px 30px;
        display: flex;
        justify-content: space-between;
        align-items: center;
        background-color: rgba(255, 255, 255, 0.6); /* semi-transparent white */
        backdrop-filter: blur(5px); /* optional: makes text clearer over the background */
    }

.logo img{
      height: 100px;
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

.body-content {
	padding: 50px;
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

.sponsors img {
	width: 100px;
	height: auto;
	margin: 5px;
}

.table1 {
	display: flex;
	align-items: center;
	justify-content: center;
	width: 100%;
	height: 100%;
}

tr {
	background-color: #f2f2f2;
	font-weight: bold;
	padding: 8px;
	text-align: left;
	border-bottom: 2px solid #333;
	width: 100%;
	height: 100%;
}

.inquiry {
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	background: rgb(178, 190, 181, 0.5);
	color: #fff;
	width: 50%;
	margin-left: 350px;
	background-size: cover;
	border-radius: 60px;
	padding: 20px;
}

.inputs {
	display: flex;
	flex-direction: column;
	gap: 20px;
	width: 80%;
	margin: 0 auto;
}

.inputs p {
	font-size: 20px;
	font-weight: bold;
}

.inputs input, .inputs textarea {
	width: 100%;
	padding: 10px;
	border-radius: 10px;
	border: 1px solid #333;
}

.main {
	background-color: black;
}

.btnn {
	display: flex;
	justify-content: center;
	margin-top: 20px;
}

.btn {
	background-color: #0b2c41;
	border-radius: 10px;
	width: 150px;
	height: 40px;
	font-weight: bold;
	color: white;
	border: none;
	cursor: pointer;
	transition: background-color 0.3s;
}

.btn:hover {
	background-color: #154a6a;
}

.drop {
	width: 170px;
	height: 28px;
	border-radius: 12px;
	border: 1px solid black;
}

.box h1 {
	margin-left: 250px;
	color: #fff;
	font-size: 30px;
	font-weight: 800;
	letter-spacing: 0.1em;
	text-shadow: 0 0 10px #00b3ff, 0 0 20px #00b3ff, 0 0 40px #00b3ff, 0 0
		80px #00b3ff, 0 0 120px #00b3ff;
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
             <li><a href="#">Home</a></li>
                <li><a href="#">About</a></li>
                <li><a href="#">Services</a></li>
                <li><a href="#">Inquiry</a></li>
                <li><a href="#">Contact</a></li>
            </ul>
        </nav>
    </header>
			<br>
			<br>
			
			<br>
			<br>
			<br>
			
			<br>
	<div class="inquiry">
		<h1 style="color: white;">Administrator Login</h1>
		<form action="adminlog" method="POST">
			<div class="inputs">
				<p>Username</p>
				<input type="text" name="loginUsername" placeholder="Enter Administrator username">

				<p>Password</p>
				<input type="password" name="loginPassword" placeholder="Enter Administrator password">
			</div>

			<div class="btnn">
				<input class="btn" type="submit" name="submit" value="Login">
				<input class="btn" type="reset" name="reset" value="Reset">
			</div>
		</form>
	</div>
	
	
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	
	<br>
	<br>
	<br>
	
			
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
