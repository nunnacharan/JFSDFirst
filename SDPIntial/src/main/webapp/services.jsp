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
      <a class="navbar-brand" href="#">Smart City</a>
      <a class="navbar-brand" href="empnavbar">Home</a>
      <!-- Add your navigation links here -->
    </div>
  </nav>

  <!-- Service Section: Book a Hotel -->
  <section class="service-section">
  <div class="container">
    <h2 class="section-title">Book a Hotel</h2>
    <div class="row">
      <div class="col-md-6">
        <p>
          Book a hotel for your stay in our smart city and enjoy comfortable accommodation.
        </p>
        <!-- Add a button to redirect to another JSP file -->
        <a href="hotels.jsp" class="btn btn-primary">Book Now</a>
      </div>
      <div class="col-md-6">
        <img src="https://travelsort.com/wp-content/uploads/2017/11/travelsort-3048.jpg" alt="Hotel" class="service-image">
      </div>
    </div>
  </div>
</section>

  <!-- Service Section: Transportation -->
  <section class="service-section">
    <div class="container">
      <h2 class="section-title">Transportation</h2>
      <div class="row">
        <div class="col-md-6">
          <p>
            Convenient and efficient transportation options are available to help you navigate our city.
          </p>
          <a href="transport.jsp" class="btn btn-primary">Book Now</a>
        </div>
        <div class="col-md-6">
          <img src="https://okcredit-blog-images-prod.storage.googleapis.com/2021/02/transportation.jpg" alt="Transportation" class="service-image">
        </div>
      </div>
    </div>
  </section>

  <!-- Service Section: Education -->
  <section class="service-section">
    <div class="container">
      <h2 class="section-title">Education</h2>
      <div class="row">
        <div class="col-md-6">
          <p>
            Access quality education and learning opportunities within our smart city.
          </p>
          <a href="education.jsp" class="btn btn-primary">Book Now</a>
        </div>
        <div class="col-md-6">
          <img src="https://newlookschool.com/wp-content/uploads/2021/08/Knolage-and-Learning.jpg" alt="Education" class="service-image">
        </div>
      </div>
    </div>
  </section>

  <!-- Service Section: Medical -->
  <section class="service-section">
    <div class="container">
      <h2 class="section-title">Medical</h2>
      <div class="row">
        <div class="col-md-6">
          <p>
            Reliable medical services and healthcare facilities are available for your well-being.
          </p>
          <a href="medical.jsp" class="btn btn-primary">View NOW</a>
        </div>
        <div class="col-md-6">
          <img src="https://images.squarespace-cdn.com/content/v1/5908027c20099e374ad3d70e/1498497433363-9FIJ7FA1O2O1OMU760YE/symbol-of-caduceus.jpg" alt="Medical" class="service-image">
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
