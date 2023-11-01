<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Welcome to the most extraordinary hotel website">
    <meta name="keywords" content="Hotel, Pakistani Hotel, Fancy Marquee">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/style.css">
    <link rel="stylesheet" media="screen and (max-width: 768px)" href="<%= request.getContextPath() %>/css/mobile.css">
    <script src="https://kit.fontawesome.com/b8b325b13d.js" crossorigin="anonymous"></script>
    <style>
        #contact-form .form-group {
            margin-bottom: 20px;
            padding: 0;
        }

        #contact-form label {
            display: block;
            margin-bottom: 5px;
        }

        #contact-form input,
        #contact-form textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
        }

        #contact-form input:focus,
        #contact-form textarea:focus {
            outline: none;
            border-color: #f7c08a;
        }

        #contact-form textarea {
            height: 200px;
        }
    </style>
    <title>Fancy Marquee | Contact</title>
</head>
<body>


    <section id="contact-form" class="py-3">
        <div class="container">
            <h1 class="l-heading"><span class="text-primary">Contact</span> Us</h1>
            <p>Please Fill The Form To Contact Us</p>

            <form method="post" action="insertmess">
                <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" name="name" id="name">
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" name="email" id="email">
                </div>
                <div class="form-group">
                    <label for="message">Message</label>
                    <textarea name="message" id="message"></textarea>
                </div>

                <button class="btn" type="submit">Submit</button>
            </form>
        </div>
    </section>

    

    <footer class="main-footer">
        <p>Smart City Project &copy; 2021 | All Rights Reserved By Team-6053</p>
    </footer>
</body>
</html>