<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Airport Ticket Booking</title>
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
<body background="https://media.cntraveler.com/photos/6500a34168e3abb84b23d51d/4:3/w_2160,h_1620,c_limit/Dubai%20International%20Airport%20GettyImages-854142956.png"> <!-- Path to your train background image -->
  <div class="container">
    <h1>Airport Ticket Booking</h1>
    <form>
      <label for="startLocation">Start Location:</label>
      <input type="text" name="startLocation" id="startLocation" required>
      
      <label for="destinationLocation">Destination Location:</label>
      <input type="text" name="destinationLocation" id="destinationLocation" required>
      
      <label for="startDate">Start Date:</label>
      <input type="date" name="startDate" id="startDate" required>
      
      <label for="passengerName">Passenger Name:</label>
      <input type="text" name="passengerName" id="passengerName" required>
      
      <label for="age">Passenger Age:</label>
      <input type="number" name="age" id="age" required>
      
      <input type="button" value="Book Ticket" onclick="window.location.href='payment.jsp';">
    </form>
  </div>
</body>
</html>
