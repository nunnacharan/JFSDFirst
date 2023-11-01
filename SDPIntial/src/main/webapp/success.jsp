<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <style>
        body {
            background-image: url("success.gif"); /* Replace with your GIF URL */
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            text-align: center;
        }

        .content {
            background-color: rgba(255, 255, 255, 0.7); /* Semi-transparent white background for content */
            padding: 20px;
            border-radius: 10px;
            margin: 100px auto;
            max-width: 600px;
        }

        h1 {
            font-size: 24px;
            color: #333;
        }

        .btn-return {
            background-color: #007BFF;
            color: #fff;
            padding: 10px 20px;
            font-size: 18px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .btn-return:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="content">
        <h1>Successful</h1>
        <a href="emphome.jsp" class="btn-return">Return to Home</a>
    </div>
</body>
</html>