<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Add Hotel</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }

        .container {
            background-color: #fff;
            padding: 20px;
            margin: 20px auto;
            width: 80%;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        .form-group {
            margin: 10px 0;
        }

        .form-group label {
            font-weight: bold;
        }

        .form-group input[type="text"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .form-group textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .btn-save {
            background-color: #007BFF;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-weight: bold;
            margin-top: 10px;
        }

        .btn-save:hover {
            background-color: #0056b3;
        }

        .success-popup {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5);
            align-items: center;
            justify-content: center;
        }

        .popup-content {
            background: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Add Hotel</h2>
        <form action="addHotel" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label for="hotelName">Hotel Name:</label>
                <input type="text" id="hotelName" name="hotelName" required>
            </div>
            <div class="form-group">
                <label for="hotelDescription">Hotel Description:</label>
                <textarea id="hotelDescription" name="hotelDescription" rows="4" required></textarea>
            </div>
            <div class="form-group">
                <label for="hotelImage">Hotel Image:</label>
                <input type="file" id="hotelImage" name="hotelImage" required>
            </div>
            <button type="submit" class="btn-save">Save</button>
        </form>
    </div>

    <!-- Success Popup -->
    <div class="success-popup" id="successPopup">
        <div class="popup-content">
            <p>Hotel added!</p>
            <button onclick="hideSuccessPopup()">Close</button>
        </div>
    </div>

    <script>
        function showSuccessPopup(event) {
            event.preventDefault(); // Prevent the form from submitting
            document.getElementById('successPopup').style.display = 'flex';
        }

        function hideSuccessPopup() {
            document.getElementById('successPopup').style.display = 'none';
        }
    </script>
</body>
</html>