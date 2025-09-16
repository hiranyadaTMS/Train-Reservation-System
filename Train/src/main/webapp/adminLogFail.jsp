<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>GoTrain - Login Unsuccessful</title>
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
	text-align: center;
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

.main-content {
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	height: 60vh;
}


.main-content h1 {
	font-size: 50px;
	color: red;
}

.main-content p {
	font-size: 30px;
	color: white;
}

.btnn {
	display: flex;
	gap: 20px;
	justify-content: center;
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

.btn.green {
	background-color: green;
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
</style>
</head>

<body>
	<header class="header">
		<div class="logo">
			<img src="images/logo1.png" alt="Logo">
		</div>
		<div class="box">
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
			
	<!-- MAIN CONTENT -->
	<div class="main-content">
		<h1>Something went wrong!</h1>
		<p>Please check whether the details you entered are correct.</p>

		<div class="btnn">
			<a href="home.jsp"><button class="btn">Go Back Home</button></a>
			<a href="adminLogin.jsp"><button class="btn green">Try Again</button></a>
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
			<img src="images/visa.png" alt="Sponsor 1"> <img src="images/paypal.png" alt="Sponsor 2">
		</div>
	</footer>
</body>

</html>
