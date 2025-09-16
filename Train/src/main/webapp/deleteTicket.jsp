<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Booking</title>
 <link rel="stylesheet" href="indextrain.css">
<style>
 
		body {
    		background-image : url('images/train.jpg');
    		background-size:cover;
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
    			margin-right:120px;
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
    	.delete{
    		margin-top: 2%;
   	 		margin-left: 32%;
   	 		margin-bottom:8%;
   	 		width: 600px;
    		background: linear-gradient(to right,rgba(255, 149, 37, 0.7), rgba(51, 114, 240, 0.7));
   			box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.1);
    		border-radius: 10px;
    	}
    	.delete form{
    		padding:50px;
		}
		.delete form label{
   			 font-size: 20px;
   			 color:whitesmoke;
    
		}
		.delete input[type=text],[type=email] {
			text-align:left;
			font-size: 20px;
			border-radius: 5px;
  			width:350px;
  			height:25px;
			margin: 8px 0;
 			
		}
		.delete input[type=submit]{
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
             <li><a href="#">Home</a></li>
                <li><a href="#">About</a></li>
                <li><a href="#">Services</a></li>
                <li><a href="#">Inquiry</a></li>
                <li><a href="#">Contact</a></li>
            </ul>
        </nav>
    </header>
    
		<div class="delete">
			<form action="deleteTicket" method="post">
		    <h2 style="margin-left: 170px;margin-top:10px;color:white">Delete ticket</h2>
		    
		    <input type="text" name="id" value="<%=id%>" readonly>
            <input type="text" name="cusName" value="<%=name%>" readonly>
            <input type="text" name="nic" value="<%=nic%>" readonly>
            <input type="text" name="cusEmail" value="<%=email%>" readonly>
            <input type="text" name="depStation" value="<%=depstation%>" readonly>
            <input type="text" name="arrStation" value="<%=arrstation%>" readonly>
            <input type="text" name="stClass" value="<%=stclass%>" readonly>
            <input type="text" name="numSeats" value="<%=nmseat%>" readonly>
		    
            
			<input type="submit" onclick="showSuccessAlert()" name="Submit" value="delete" style="margin-left: 200px;margin-top:10px">
		</form>
		</div>
	<script>
        function showSuccessAlert() {
            alert("Successfully deleted!!");
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