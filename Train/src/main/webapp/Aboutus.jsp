<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>About Us - GoTrain</title>
    <style>
     body{
	    background-image:url('images/train.jpg');
	    background-size:cover;
	    color:#FFFFFF;
	}
	.logo img{
	    width: 100px;
		height: auto;
		margin-left: 20px;
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
      color: #FFFFFF;
    }
	.content{
	    position:relative;
	    width: 600px;
	    height: 300px;
	    top: 0%;;
	    left: 0%;
	    margin-top: -300px;
	    margin-left:80px;
	    display: flex;
	    justify-content: center;
	    align-items: center;
	    flex-direction: column;
	    background: rgba(0,0,0,0.6);
	    opacity: 0;
	    transition: 0.6s;
	
	}
	.content:hover{
	    opacity: 1;
	}
	.content a{
	    font-size: 30px;
	    color: #FFFFFF;
	    text-decoration: none;
	}
	.content1{
	    position:relative;
	    width: 600px;
	    height: 300px;
	    top: 0%;;
	    left: 0%;
	    margin-top: -300px;
	    margin-left:80px;
	    display: flex;
	    justify-content: center;
	    align-items: center;
	    flex-direction: column;
	    background: rgba(0,0,0,0.6);
	    opacity: 0;
	    transition: 0.6s;
	}
	.content1:hover{
	    opacity: 1;
	}
	.content1 a{
	    font-size: 30px;
	    color: white;
	    text-decoration: none;
	}
	
	.content2{
	    position:relative;
	    width: 600px;
	    height: 300px;
	    top: 0%;;
	    left: 0%;
	    margin-top: -300px;
	    margin-left:80px;
	    display: flex;
	    justify-content: center;
	    align-items: center;
	    flex-direction: column;
	    background: rgba(0,0,0,0.6);
	    opacity: 0;
	    transition: 0.6s;
	
	}
	.content2:hover{
	    opacity: 1;
	}
	.content2 a{
	    font-size: 30px;
	    color: white;
	    text-decoration: none;
	}
	
	.content3{
	    position:relative;
	    width: 600px;
	    height: 300px;
	    top: 0%;;
	    left: 0%;
	    margin-top: -300px;
	    margin-left:80px;
	    display: flex;
	    justify-content: center;
	    align-items: center;
	    flex-direction: column;
	    background: rgba(0,0,0,0.6);
	    opacity: 0;
	    transition: 0.6s;
	
	}
	.content3:hover{
	    opacity: 1;
	}
	.content3 a{
	    font-size: 30px;
	    color: white;
	    text-decoration: none;
	}
	
	.content4{
	    position:relative;
	    width: 600px;
	    height: 300px;
	    top: 0%;;
	    left: 0%;
	    margin-top: -300px;
	    margin-left:80px;
	    display: flex;
	    justify-content: center;
	    align-items: center;
	    flex-direction: column;
	    background: rgba(0,0,0,0.6);
	    opacity: 0;
	    transition: 0.6s;
	
	}
	.content4:hover{
	    opacity: 1;
	}
	.content4 a{
	    font-size: 30px;
	    color: white;
	    text-decoration: none;
	}
	    	
	.box h1{
	    text-align: left;
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

     table {
	    border: 2px solid whitesmoke;
	    border-collapse: collapse;
	    background-color: rgba(52, 82, 191, 0.6);  
	    backdrop-filter: blur(5px);  
	    padding: 10px;
	    border-radius: 10px;
	    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); 
         
       }
       th, td{
       	padding: 10px;
	    color: white; 
	    text-align: center;
	    font-size: 16px;
       }
    .footer {
        padding: 20px 40px;
        display: flex;
        justify-content: space-between;
        flex-wrap: wrap;
        gap: 20px;
        align-items: flex-start;
        background-color: rgba(255, 255, 255, 0.6);
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
<div class="container">
    <h1>About Us - GoTrain</h1>
    <p>Welcome to <strong>GoTrain</strong> – Your Trusted Train Reservation Partner!</p>
    
    <p>At GoTrain, our mission is to make train travel <strong>easy, reliable, and accessible</strong> for everyone.
       Whether you're planning a daily commute, a weekend getaway, or a cross-country adventure, our platform provides a
       fast, secure, and user-friendly way to search, book, and manage your train journeys.</p>
    
    <h2>Who We Are</h2>
    <p>GoTrain is a team of transportation experts, engineers, and support professionals committed to modernizing rail
       travel through innovation and technology.</p>
    
    <h2>What We Offer</h2>
    <ul>
        <li>Real-time train schedules and seat availability</li>
        <li>Instant booking with multiple payment options</li>
        <li>Itinerary management with alerts and updates</li>
        <li>24/7 customer support</li>
    </ul>

    <h2>Our Commitment</h2>
    <ul>
        <li><strong>Security:</strong> Your data is encrypted and protected</li>
        <li><strong>Transparency:</strong> No hidden fees or surprises</li>
        <li><strong>Sustainability:</strong> Supporting eco-friendly rail transport</li>
    </ul>

    <h2>Our Vision</h2>
    <p>To connect people and places through seamless, efficient, and enjoyable train travel.</p>
</div>
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