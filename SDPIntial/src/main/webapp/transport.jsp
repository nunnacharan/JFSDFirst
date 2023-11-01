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
    <h2 class="section-title">Railways and Metro</h2>
    <div class="row">
      <div class="col-md-6">
        <p>
          Vijayawada Junction Railway Station (station code:- BZA is an Indian Railways station in Vijayawada of Andhra Pradesh, categorized as a Non-Suburban Grade-2 (NSG-2) station in Vijayawada railway division. Situated at the junction of Howrah–Chennai and New Delhi–Chennai main lines,it is the fourth busiest railway station in the country after Howrah Junction, Kanpur Central and New Delhi.
        </p>
        <!-- Add a button to redirect to another JSP file -->
        <a href="railway.jsp" class="btn btn-primary">View</a>
      </div>
      <div class="col-md-6">
        <img src="https://static.toiimg.com/thumb/msid-80725373,width-400,resizemode-4/80725373.jpg" alt="railways" class="service-image">
      </div>
    </div>
  </div>
</section>

  <!-- Service Section: Transportation -->
  <section class="service-section">
    <div class="container">
      <h2 class="section-title">RTC</h2>
      <div class="row">
        <div class="col-md-6">
          <p>
            Andhra Pradesh State Road Transport Corporation, officially Andhra Pradesh Raastra Roadu Ravaana Samstha, is the state-owned road transport corporation in the Indian state of Andhra Pradesh. Its headquarters is located at NTR Administrative Block of RTC House in Pandit Nehru bus station of Vijayawada.
          </p>
          <a href="rtc.jsp" class="btn btn-primary">View</a>
        </div>
        <div class="col-md-6">
          <img src="https://assets.thehansindia.com/h-upload/2022/06/01/1295569-bus.webp" alt="railways" class="service-image">
        </div>
      </div>
    </div>
  </section>


  <!-- Service Section: Medical -->
  <section class="service-section">
    <div class="container">
      <h2 class="section-title">Airways</h2>
      <div class="row">
        <div class="col-md-6">
          <p>
           
	
This article includes a list of general references, but it lacks sufficient corresponding inline citations. Please help to improve this article by introducing more precise citations. (March 2022) (Learn how and when to remove this template message)

Sample infrastructure of a typical airport. Larger airports usually contain more runways and terminals.

Airport distribution as of 2008

El Salvador International Airport

Bengaluru's Kempegowda International Airport

Bangkok Suvarnabhumi Airport

Terminal 3 at Dubai International Airport (DXB)
An airport is an aerodrome with extended facilities, mostly for commercial air transport.[1][2] Airports usually consist of a landing area, which comprises an aerially accessible open space including at least one operationally active surface such as a runway for a plane to take off and to land[3] or a helipad,[4] and often includes adjacent utility buildings such as control towers, hangars[5] and terminals, to maintain and monitor aircraft.
          </p>
          <a href="airways.jsp" class="btn btn-primary">View</a>
        </div>
        <div class="col-md-6">
          <img src="https://www.airport-technology.com/wp-content/uploads/sites/14/2022/01/shutterstock_758602234-min-1038x778.jpg" alt="Airport" class="service-image">
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
