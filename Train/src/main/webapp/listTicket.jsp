<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Booking Details</title>
 <link rel="stylesheet" href="indextrain.css">
    <style>
    	body {
    		background-image : url('./images/train.jpg');
    		margin :0;
    		padding :0;
    		background-size :cover;
    		overflow:auto;
    		background-attachment: fixed;	
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
    

  
    	.box h1{
                color: #fff;
                font-size: 30px;
                font-weight: 800;
                letter-spacing: 0.1em;
                text-shadow: 0 0 10px #00b3ff,
                            0 0 20px #00b3ff,
                            0 0 40px #00b3ff,
                            0 0 80px #00b3ff,
                            0 0 120px #00b3ff;

            }
    	.success{
			margin-top: 2%;
   			margin-left: 32%;
   			margin-bottom:8%;
   			padding:20px;
    		width: 600px;
    		background: linear-gradient(to right,rgba(255, 149, 37, 0.7), rgba(51, 114, 240, 0.7) );
    		box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.1);
    		border-radius: 10px;
		}
		.success td{
			font-size: 20px;
			color: whitesmoke;
			padding: 10px;
		}
		.success table{
			width: 600px;
			padding:30px;	
		}
		.success table tr td{
			border: 2px solid whitesmoke;
			border-collapse: collapse;
			background-color:rgba(52, 82, 191, 0.667);
		}
		.success input[type=button]{
                position: relative;
                display:inline-block;
                padding: 7px 12px;
                color: white;
                background:linear-gradient(to right,
                                    rgba(90, 148, 181, 0.882),
                                    rgba(90, 148, 181, 0.882),
                                    rgba(90, 148, 181, 0.882)
                                
    							);
                border-color: white;
                border-radius: 15px;
                font-weight: 600;
                font-size: 20px;               
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
				<li><a href="adminLogin.jsp">Admin Login</a></li>
				<li><a href="CusProfile.jsp">Register</a></li>
				<li><a href="InqInsert.jsp">Inquiry</a></li>
				<li><a href="paymentinsert.jsp">Add Payment</a></li>
				<li><a href="booktrain.jsp">Book Train</a></li>
			</ul>
		</nav>
	</header>
    
	<div class="success">
	<h1 style="margin-left:200px;margin-top:50px;color:rgba(9, 14, 36, 0.933);color:whitesmoke;">Ticket Details</h1>
	<table>
	
	<c:forEach var="Tick" items="${tickDetails}">
	
	<c:set var="id" value="${Tick.id}"/>
	<c:set var="name" value="${Tick.name}"/>
	<c:set var="nic" value="${Tick.nic}"/>
	<c:set var="email" value="${Tick.email}"/>
	<c:set var="dpst" value="${Tick.dpstation}"/>
	<c:set var="arst" value="${Tick.arstation}"/>
	<c:set var="sclass" value="${Tick.seatclass}"/>
	<c:set var="nmseat" value="${Tick.numseats}"/>
	
		<tr>
			<td>Passenger id</td>
			<td>${Tick.id}</td>
		</tr>
		<tr>
			<td>Passenger name</td>
			<td>${Tick.name}</td>
		</tr>
		
		<tr>
			<td>Passenger NIC</td>
			<td>${Tick.nic}</td>
		</tr>
		
		<tr>
			<td>Email</td>
			<td>${Tick.email}</td>
		</tr>
		
		<tr>
			<td>Departure station</td>
			<td>${Tick.dpstation}</td>
		</tr>
		
		<tr>
			<td>Arrival station</td>
			<td>${Tick.arstation}</td>
		</tr>
		
		<tr>
			<td>Seat class</td>
			<td>${Tick.seatclass}</td>
		</tr>
		
		<tr>
			<td>Number of seats</td>
			<td>${Tick.numseats}</td>
		</tr>
			
	</c:forEach>
	</table>
	
	<c:url value="updateTicket.jsp" var="tUpdate">
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="nic" value="${nic}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="dpst" value="${dpst}"/>
		<c:param name="arst" value="${arst}"/>
		<c:param name="sclass" value="${sclass}"/>
		<c:param name="nmseat" value="${nmseat}"/>
	</c:url>
	
	<a href="${tUpdate}">
	<input type="button" name="Update" value="Update ticket" style="margin-left:120px;margin-bottom:10px;">
	</a>
	
	<c:url value="deleteTicket.jsp" var="tickdele">
		<c:param name="name" value="${name}"/>
		<c:param name="nic" value="${nic}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="dpst" value="${dpst}"/>
		<c:param name="arst" value="${arst}"/>
		<c:param name="sclass" value="${sclass}"/>
		<c:param name="nmseat" value="${nmseat}"/>
	</c:url>
	
    <a href="${tickdele}">
    	<input type="button" name="delete" value="Delete ticket" style="margin-left:50px;">
    </a>
    <br><br>
    <input type="button" name="PAY" value="PAY" style="margin-left:265px;">
	
	</div>
	
   <footer class="footer">
        <div class="contact-details">
            <h3>Contact Us</h3>
            <p>Email: info@example.com</p>
            <p>Phone: +123 456 789</p>
        </div>
    	<div class="sponsors">
            <h3>Our Sponsors</h3>
            <img src="https://www.freepnglogos.com/uploads/visa-and-mastercard-logo-26.png" alt="Sponsor 1" width=70px; height=20px>
            <img src="https://www.freepnglogos.com/uploads/paypal-logo-png-1.png" alt="Sponsor 2" width=70px; height=20px>
            <!-- Add more sponsor logos as needed -->
        </div>
    </footer>

</body>
</html>