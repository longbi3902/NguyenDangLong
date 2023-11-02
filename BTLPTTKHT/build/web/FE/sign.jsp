<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trang Đăng Ký</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }
        
        .container {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        
        h2 {
            text-align: center;
        }
        
        form {
            display: flex;
            flex-direction: column;
        }
        
        label {
            font-weight: bold;
            margin-top: 10px;
        }
        
        input[type="text"],
        input[type="email"],
        input[type="password"],
        input[type="tel"],
        textarea {
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        
        button {
            background-color: #007BFF;
            color: #fff;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
    </style>
    </head>
    <body>
         <div class="container">
        <form action="sigupControl" method="post" name="signupForm">
            <label for="fullname">Họ và Tên:</label>
            <input type="text" id="fullname" name="fullname" required>
            
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>
            
            <label for="phone">Số điện thoại:</label>
            <input type="tel" id="phone" name="phone" required>
            
            <label for="address">Địa chỉ:</label>
            <textarea id="address" name="address" required></textarea>
            
            <label for="password">Mật khẩu:</label>
            <input type="password" id="password" name="password" required>
            <label for="password">Nhập lại mật khẩu:</label>
            <input type="password" id="password" name="repassword" required>
            <button type="submit">Đăng Ký</button>
        </form>
    </div>
    </body>
</html>
