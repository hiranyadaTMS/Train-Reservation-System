<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>GoTrain - Railway Management System</title>
  <style>
    body {
    
	    font-family: Arial, sans-serif;
	    margin: 0;
	    padding: 0;
	    background-image: url('images/train.jpg');
	    background-size: cover;
	    background-repeat: no-repeat;
	    background-attachment: fixed;
}

    .header {
      background-color: #ffffffcc;
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 10px 20px;
      background-color: rgba(255, 255, 255, 0.6); 
      backdrop-filter: blur(5px); 
    }

    .logo img {
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

    h1 {
      font-size: 75px;
	color: #ffffff;
	text-align: top;
	text-align: center;
	text-shadow: -3px -1px 0 #ff5656, 1px -3px 0 #e9d30e, -3px 2px 0 #065be3,
		2px 3px 0 #051c6d;
	padding-bottom: 0px;
	padding-top: 0px;
	margin-bottom: 0px;
    }

    .slideshow-container {
      position: relative;
      max-width: 100%;
      height: 400px;
      margin: auto;
      overflow: hidden;
    }

    .slide {
      position: absolute;
      width: 100%;
      height: 100%;
      left: 100%;
      transition: left 0.5s ease-in-out;
    }

    .slide img {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }

    .prev, .next {
      position: absolute;
      top: 50%;
      transform: translateY(-50%);
      background-color: rgba(0, 0, 0, 0.5);
      color: white;
      padding: 10px;
      cursor: pointer;
      border: none;
      font-size: 24px;
    }

    .prev { left: 10px; }
    .next { right: 10px; }

    .desc {
   
    max-width: 1000px; /* Set the max width of the paragraph container */
    margin: 0 auto; /* Center align the content */
    padding: 30px; /* Add some padding around the content */
    background-color: rgba(0, 0, 0, 0.6); /* Semi-transparent black background */
    color: white; /* White text color for readability */
    border-radius: 15px; /* Rounded corners */
    backdrop-filter: blur(10px); /* Apply the blur effect */
    box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2); /* Optional: Add a soft shadow around the container */
    font-size: 18px; /* Set a reasonable font size */
    font-family: 'Arial', sans-serif; /* Set a clean, readable font */
    line-height: 1.6; /* Increase line height for better readability */
    text-align: justify; /* Justify text for a clean look */
	}
	
	.desc p {
	   padding:20px;
	   margin:50px; 
	}
	
	/* Optional: Add a subtle hover effect */
	.desc:hover {
	    background-color: rgba(0, 0, 0, 0.8); /* Darken the background when hovered */
	    box-shadow: 0 8px 30px rgba(0, 0, 0, 0.3); /* Increase shadow effect */
	    transform: scale(1.02); /* Slightly scale up the container */
	    transition: all 0.3s ease; /* Smooth transition */
	}


    .footer {
      background: #eee;
      padding: 20px;
      display: flex;
      justify-content: space-around;
      flex-wrap: wrap;
      font-size: 14px;
      color: #444;
      background-color: rgba(255, 255, 255, 0.8); /* semi-transparent white */
 	  backdrop-filter: blur(5px);

    .sponsors img {
      height: 40px;
      margin: 5px;
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
        <li><a href="adminLogin.jsp">Admin Login</a></li>
        <li><a href="CustomerInsert.jsp">Register</a></li>
        <li><a href="InqInsert.jsp">Inquiry</a></li>
        <li><a href="paymentinsert.jsp">Add Payment</a></li>
        <li><a href="booktrain.jsp">Book Train</a></li>
      </ul>
    </nav>
  </header>

  <h1>GoTrain- Railway Management<br> System<br><br></h1>

  <div class="slideshow-container">
    <div class="slide"><img src="images/slide1.jpg" alt="Slide 1"></div>
    <div class="slide"><img src="images/slide2.jpg" alt="Slide 2"></div>
    <div class="slide"><img src="images/slide3.jpg" alt="Slide 3"></div>
    <div class="slide"><img src="images/slide4.jpg" alt="Slide 4"></div>

    <button class="prev">&#10094;</button>
    <button class="next">&#10095;</button>
  </div>
	<br><br><br>
  <div class="desc">
  	<h2>Welcome to GoTrain</h2>
    
    <p><b>GoTrain,</b><br> Your ultimate destination for hassle-free train reservations! Our smart and user-friendly platform is designed to make planning your journey as smooth as the ride itself. With just a few simple steps, you can search, choose, and book your train tickets anytime, anywhere. Whether it's a daily commute or a long-awaited getaway, GoTrain helps you get there comfortably and confidently. Travel made easy, secure, and stress-free that is the GoTrain promise!<br><br></p>
  </div>
	<br><br><br>
  <footer class="footer">
    <div class="contact-details">
      <h3><a href="contactus.jsp">Contact Us</a></h3>
      <h3><a href="Aboutus.jsp">About Us</a></h3>
      <p>Email: info@example.com</p>
      <p>Phone: +123 456 789</p>
    </div>
    <div class="sponsors">
      <h3>Our Sponsors</h3>
      <img
				src="https://www.freepnglogos.com/uploads/visa-and-mastercard-logo-26.png"
				alt="Sponsor 1"> <img
				src="https://www.freepnglogos.com/uploads/paypal-logo-png-1.png"
				alt="Sponsor 2">
    </div>
  </footer>

  <script>
  
  let slideIndex = 0;
    const slides = document.querySelectorAll('.slide');
    const totalSlides = slides.length;

    const prevButton = document.querySelector('.prev');
    const nextButton = document.querySelector('.next');
    
    function updateSlide() {
      slides.forEach((slide, i) => {
        slide.style.left = i === slideIndex ? '0' : '100%';
      });
    }
    function autoTransition() {
      slideIndex = (slideIndex + 1) % totalSlides;
      updateSlide();
    }

    let autoInterval = setInterval(autoTransition, 3000);

    prevButton.addEventListener('click', () => {
      clearInterval(autoInterval);
      slideIndex = (slideIndex - 1 + totalSlides) % totalSlides;
      updateSlide();
    });

    nextButton.addEventListener('click', () => {
      clearInterval(autoInterval);
      slideIndex = (slideIndex + 1) % totalSlides;
      updateSlide();
    });
    
    updateSlide(); // Initial call
  </script>
</body>
</html>
