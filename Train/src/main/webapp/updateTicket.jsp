<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Booking Details</title>
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
    	.train{ 
    		margin-top: 2%;
   	 		margin-left: 32%;
   	 		margin-bottom:8%;
   	 		width: 600px;

    		background: linear-gradient(to right,rgba(255, 149, 37, 0.7), rgba(51, 114, 240, 0.7));
   			box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.1);
    		border-radius: 10px;

		}
		.train select{
			width:200px;
			height:25px;
			font-size: 15px;
			text-align:center;
			border-radius: 15px;
			
		}
		.train form{
    		padding:50px;
		}
		.train form label{
   			 font-size: 20px;
   			 color:whitesmoke;
    
		}
		.train input[type=text],[type=email] {
			text-align:left;
			font-size: 20px;
			border-radius: 5px;
  			width:350px;
  			height:25px;
			margin: 8px 0;
		}
		.train input[type=submit]{
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
		<%
			String id = request.getParameter("id");
			String name = request.getParameter("name");
			String nic = request.getParameter("nic");
			String email = request.getParameter("email");
			String depstation = request.getParameter("dpst");
			String arrstation = request.getParameter("arst");
			String stclass = request.getParameter("sclass");
			String nmseat = request.getParameter("nmseat");
		
		%>
		
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
    <br>

        <div class="train">
        <form action="updateTicket" method="post">
            <h2 style="margin-left: 150px;color:whitesmoke;">Update your ticket</h2>
            
            <label for="id">ID:</label>
            <input type="text" id="id" name="id" value="<%=id%>" readonly><br><br>
            <label for="id">Name:</label>
            <input type="text" id="name" name="cusName" value="<%=name%>" required><br><br>
            <label for="name">Enter NIC:</label>
            <input type="text" id="nic" name="nic" value="<%=nic%>" readonly required><br><br>  
            <label for="name">Enter email:</label>
            <input type="email" id="email" name="cusEmail" value="<%=email%>" required><br><br>
            <label for="dpstation">Departure station:</label>
            <select  id="dstation" name="depStation" required>
            	<option value="<%=depstation%>">Select departure station</option>
                <option value="station A">station A</option>
                <option value="station B">station B</option>
                <option value="station C">station C</option>
                <option value="station D">station D</option>
            </select><br><br>
            <label for="arstation">Arrival station:</label>
            <select id="astation" name="arrStation" required>
            	<option value="<%=arrstation%>">Select arrival station</option>
                <option value="station A">station A</option>
                <option value="station B">station B</option>
                <option value="station C">station C</option>
                <option value="station D">station D</option>
            </select>
            <br><br>
            <label for="stclass">Seat class:</label>
            <select id="sclass" name="stClass" required>
            	<option value="<%=stclass%>">Select seat class</option>
                <option value="First class">First class</option>
                <option value="Second class">Second class</option>
                <option value="Third class">Third class</option>
            </select>
            <br><br>
            <label for="noseat">Number of seats:</label>
            <input type="number" id="nseat" name="numSeats" value="<%=nmseat%>" required><br><br>
            <input type="submit" name="Submit" value="Update" style="margin-left: 210px;margin-top:10px">

          </form>
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

</body>
</html>