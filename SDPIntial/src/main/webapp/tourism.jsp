<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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

    .cue-card {
      background-color: #fff;
      padding: 20px;
      margin: 20px 0;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
    }

    .cue-card h2 {
      color: #333;
    }

    .cue-card p {
      color: #777;
    }

    .cue-card-image {
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

  <!-- Cue Card: Prakasam Barrage -->
  <section class="cue-card">
    <div class="container">
      <h2 class="section-title">Prakasam Barrage</h2>
      <div class="row">
        <div class="col-md-6">
          <p>
            Prakasam Barrage is a picturesque location on the Krishna River with a panoramic view.
          </p>
          <a href="https://www.google.com/maps/search/Prakasam+Barrage" target="_blank" class="btn btn-primary">View on Google Maps</a>
        </div>
        <div class="col-md-6">
          <img src="https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0f/b5/db/4f/prakasam-barrage.jpg?w=1200&h=-1&s=1" alt="Prakasam Barrage" class="cue-card-image">
        </div>
      </div>
    </div>
  </section>
  <!-- Cue Card: Undavalli Caves -->
  <section class="cue-card">
    <div class="container">
      <h2 class="section-title">Undavalli Caves</h2>
      <div class="row">
        <div class="col-md-6">
          <p>
            Undavalli Caves is an ancient rock-cut cave temple known for its intricate architecture.
          </p>
          <a href="https://www.google.com/maps/search/Undavalli+Caves" target="_blank" class="btn btn-primary">View on Google Maps</a>
        </div>
        <div class="col-md-6">
          <img src="https://upload.wikimedia.org/wikipedia/commons/9/93/Ananta_Padmanabha_Swami_Temple.jpg" alt="Undavalli Caves" class="cue-card-image">
        </div>
      </div>
    </div>
  </section>
  
    <!-- Cue Card: Bhavani Islands -->
  <section class="cue-card">
    <div class="container">
      <h2 class="section-title">Bhavani Islands</h2>
      <div class="row">
        <div class="col-md-6">
          <p>
            Bhavani Island is situated in the midst of the Krishna River, at Vijayawada. It is located at the upstream of Prakasam Barrage and is considered one of the largest river islands in India, with an area of 133 acres. It has a robotic dinosaur park, garden maze, mirror maze, golf and badminton simulator, cycling, etc.
          </p>
          <a href="https://www.google.com/maps/search/Bhavani+Islands" target="_blank" class="btn btn-primary">View on Google Maps</a>
        </div>
        <div class="col-md-6">
          <img src="https://www.go2india.in/ap/images/vijayawada-bhavani-island.JPG" alt="Bhavani Islands" class="cue-card-image">
        </div>
      </div>
    </div>
  </section>

  <!-- Add more Cue Cards for other tourist spots as needed -->
  
  <!-- Footer -->
  <footer class="main-footer">
    <div class="container">
      <div class "footer-social-media">
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