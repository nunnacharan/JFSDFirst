<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Appointment Hospital</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
    }
    
    .container {
      max-width: 800px;
      margin: 0 auto;
      padding: 20px;
      background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent white background */
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
    }
    
    h1 {
      text-align: center;
    }
    
    form {
      display: flex;
      flex-direction: column;
      align-items: center;
    }
    
    label {
      margin-top: 10px;
    }
    
    input[type="text"], input[type="number"], input[type="date"], select {
      width: 100%;
      padding: 10px;
      margin: 5px 0;
      border: 1px solid #ccc;
      border-radius: 3px;
    }
    
    input[type="button"] {
      background-color: #007BFF;
      color: #fff;
      padding: 10px;
      border: none;
      border-radius: 3px;
      cursor: pointer;
    }
  </style>
</head>
<body background="https://i0.wp.com/stanzaliving.wpcomstaging.com/wp-content/uploads/2023/01/Top-hospitals-in-Jaipur.jpg?fit=1000%2C571&ssl=1"> <!-- Path to your train background image -->
  <div class="container">
    <h1>Appointment Hospital</h1>
<form>
  <label for="fullName">Full Name</label>
  <input type="text" name="fullName" id="fullName" required>
  
  <label for="doctorName">Doctor's Name</label>
  <input type="text" name="doctorName" id="doctorName" required>
  
  <label for="appointmentDate">Appointment Date</label>
  <input type="date" name="appointmentDate" id="appointmentDate" required>
  
  <label for="problemDescription">Problem Description</label>
  <textarea name="problemDescription" id="problemDescription" rows="4" required></textarea>
  
  <input type="button" value="Book Appointment" onclick="window.location.href='success.jsp';">
</form>

  </div>
</body>
</html>
