<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Update</title>

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
       .header img {
        height: 100px;
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
.sponsors img {
	width: 100px;
	height: auto;
	margin: 10px;
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
	background: linear-gradient(to right, rgba(255, 149, 37, 0.7),
		rgba(51, 114, 240, 0.7));
	color: #f2f2f2;
	width: 50%;
	margin-left: 350px;
	background-size: cover;
	border-radius: 5px;
}

.inquiry2 {
	display: flex;
	align-items: center;
	justify-content: center;
	width: 100%;
}

.inputs {
	display: flex;
	flex-direction: row;
	gap: 100px;
	justify-content: space-between;
	align-items: center;
}

.inputs p {
	font-size: 20px;
	font-weight: bold;
}

.inputs input {
	height: 20px;
	border-radius: 10px;
}

.main {
	background-color: black;
}

.inputs textarea {
	border-radius: 10px;
}

textarea {
	width: 165px;
}

.btnn {
	padding: 20px 20px;
	margin-left: 120px;
}

.btn {
	background-color: #0b2c41;
	border-radius: 10px;
	width: 150px;
	height: 40px;
	font-weight: bold;
	color: white;
}

.btn:hover {
	background-color: #2980b9;
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

	<div class="body-content">

		<!-- value passing -->

		<%
        
            	String type = request.getParameter("type");
            	String name = request.getParameter("name");
            	String phone = request.getParameter("phone");
            	String email = request.getParameter("email");
            	String nic = request.getParameter("nic");
            	String title = request.getParameter("title");
            	String inquiry = request.getParameter("inquiry");
                 
            %>


		<div class="inquiry">
			<h1>Inquiry Form</h1>
			<div class="inquiry2">
				<form action="updateInquiry" method="post" class="div2">
					<div class="inputs">
						<p>Select Inquiry type:</p>
						<select id="dropdown" class="drop" name="type" value="<%= type%>">
							<option value="">Select Inquiry type</option>
							<option value="Normal Inquiry">Normal Inquiry</option>
							<option value="Urgent Inquiry">Urgent Inquiry</option>
							<option value="Complain">Complain</option>
						</select>
					</div>
					<div class="inputs">
						<p>Full Name</p>
						<input type="text" name="name" value="<%= name%>" required>
					</div>
					<div class="inputs">
						<p>Phone</p>
						<input type="text" name="phone" value="<%= phone%>" required>
					</div>
					<div class="inputs">
						<p>Email</p>
						<input type="email" name="email" value="<%= email%>" required>
					</div>
					<div class="inputs">
						<p>NIC</p>
						<input type="text" name="nic" value="<%= nic%>" readonly>
					</div>
					<div class="inputs">
						<p>Title</p>
						<input type="text" name="title" value="<%= title%>" required>
					</div>
					<div class="inputs">
						<p>Inquiry</p>
						<input type="text" name="inquiry" value="<%= inquiry%>" required>
					</div>
					<div class="btnn">
						<Button class="btn" onclick="showSuccessAlert()">Update
							Inquiry</Button>
					</div>
				</form>
			</div>
		</div>

	</div>

	<script>  
        function showSuccessAlert() {
            alert("updated Successfully ");
        }
  	  </script>

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