<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <style>
    body {
      background-color: #f5f5f5;
    }

    .navbar {
      background: #333;
      color: #fff;
    }

    .section-title {
      font-size: 24px;
      color: #333;
      margin-bottom: 10px;
    }

    .service-section {
      background-color: #fff;
      padding: 20px;
      margin: 20px 0;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
    }

    .service-section h2 {
      color: #333;
    }

    .service-section p {
      color: #777;
    }

    .service-image {
      width: 100%;
      max-height: 200px;
      object-fit: cover;
      border-radius: 5px;
    }
    
    .main-footer {
      background: #000;
      color: #fff;
      text-align: center;
      padding: 20px;
    }

    .footer-social-media {
      margin-bottom: 20px;
    }

    .footer-social-media a {
      font-size: 24px;
      color: #fff;
      margin: 0 10px;
      text-decoration: none;
    }

    .footer-social-media a:hover {
      color: #f7c08a;
    }

    .footer-links {
      margin-bottom: 10px;
    }

    .footer-links a {
      color: #fff;
      text-decoration: none;
      margin: 0 10px;
    }

    .footer-copyright {
      font-size: 14px;
    }
  </style>
</head>
<body>
  <nav class="navbar navbar-expand-lg navbar-dark">
    <div class="container">
      <a class="navbar-brand" href="#">Want to Book a Hotel..?</a>
      <a class="navbar-brand" href="empnavbar">Home</a>
      <!-- Add your navigation links here -->
    </div>
  </nav>

  <!-- Service Section: Book a Hotel -->
  <section class="service-section">
  <div class="container">
    <h2 class="section-title">Hotel TAJ</h2>
    <div class="row">
      <div class="col-md-6">
        <p>
          Taj Hotels is a chain of luxury hotels and a subsidiary of the Indian Hotels Company Limited, headquartered in Mumbai, India. Incorporated by Jamsetji Tata in 1902, the company is a part of the Tata Group.
        </p>
        <!-- Add a button to redirect to another JSP file -->
        <a href="hoteltaj.jsp" class="btn btn-primary">Book Now</a>
      </div>
      <div class="col-md-6">
        <img src="https://images.moneycontrol.com/static-mcnews/2018/04/TajLakePalaceUdaipur.jpg?impolicy=website&width=770&height=431" alt="Hotel" class="service-image">
//		 <img src="images/${HotelTag}">
      </div>
    </div>
  </div>
</section>

  <!-- Service Section: Transportation -->
  <section class="service-section">
    <div class="container">
      <h2 class="section-title">Hotel NOVOTEL</h2>
      <div class="row">
        <div class="col-md-6">
          <p>
            Novotel is a French midscale hotel brand owned by Accor. Created in 1967 in France, the company grew into what became the Accor group in 1983, and Novotel remained a pillar brand of Accor's multi-brand strategy. 
          </p>
          <a href="hotelnov" class="btn btn-primary">Book Now</a>
        </div>
        <div class="col-md-6">
          <img src="https://hicc.com/wp-content/uploads/2020/02/Novotel-Hyderabad-Convention-Centre.jpg" alt="Transportation" class="service-image">
        </div>
      </div>
    </div>
  </section>

  <!-- Service Section: Education -->
  <section class="service-section">
    <div class="container">
      <h2 class="section-title">HOTEL ITC KOHENUR</h2>
      <div class="row">
        <div class="col-md-6">
          <p>
            ITC Hotels is an Indian hotel chain, which is a part of the ITC Limited group of companies. With over 100 hotels, it is India's fifth largest hotel chain.
          </p>
          <a href="hotelitc" class="btn btn-primary">Book Now</a>
        </div>
        <div class="col-md-6">
          <img src="https://www.itcportal.com/images/hotel-video.jpg" alt="Education" class="service-image">
        </div>
      </div>
    </div>
  </section>

  <!-- Service Section: Medical -->
  <section class="service-section">
    <div class="container">
      <h2 class="section-title">HOTEL HAYATH</h2>
      <div class="row">
        <div class="col-md-6">
          <p>
            Hyatt Hotels Corporation, commonly known as Hyatt Hotels & Resorts, is an American multinational hospitality company headquartered in the Riverside Plaza area of Chicago that manages and franchises luxury and business hotels, resorts, and vacation properties. Hyatt Hotels & Resorts is one of the businesses managed by the Pritzker family.
          </p>
          <a href="hotelhayath" class="btn btn-primary">Book Now</a>
        </div>
        <div class="col-md-6">
          <img src="https://assets.hyatt.com/content/dam/hyatt/hyattdam/images/2022/10/13/0450/JAIZM-P0002-Hotel-Exterior.jpg/JAIZM-P0002-Hotel-Exterior.16x9.jpg" alt="Medical" class="service-image">
        </div>
      </div>
    </div>
  </section>

  <!-- Footer -->
  <footer class="main-footer">
    <div class="container">
      <div class="footer-social-media">
        <a href="#"><i class="fab fa-instagram"></i></a>
        <a href="#"><i class="fab fa-facebook"></i></a>
        <a href="#"><i class="fab fa-twitter"></i></a>
      </div>
      <div class="footer-links">
        <a href="termsandservice">Terms of Service</a>
        <a href="#">Privacy Policy</a>
        <a href="#">Information Protection Policy</a>
        <a href="about">Company FAQ</a>
        <a href="contactus">Contact</a>
      </div>
      <div class="footer-copyright">
        <p>&copy; Copyright Since 2023 &reg; Smart City Project. All rights reserved.</p>
      </div>
    </div>
  </footer>
</body>
</html>
