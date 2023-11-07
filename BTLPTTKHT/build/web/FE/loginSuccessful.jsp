<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thống kê mặt hàng theo doanh thu</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }

        #container {
            max-width: 600px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            box-shadow: 0px 0px 5px 0px rgba(0, 0, 0, 0.3);
            border-radius: 5px;
        }

        label {
            font-weight: bold;
        }

        #labelThongKe {
            cursor: pointer;
            text-decoration: underline;
            text-align: center;
        }

        select, input[type="date"], button {
            display: block;
            margin: 10px 0;
            padding: 10px;
            width: 100%;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        button {
            background-color: #007bff;
            color: #fff;
            font-weight: bold;
            cursor: pointer;
        }

        button:hover {
            background-color: #0056b3;
        }

        #ketqua {
            margin-top: 20px;
        }
    </style>
    </head>
    <body>
        <div id="container">
        <label  for="thongke" id="labelThongKe" onclick="hienThiOption()">Xem báo cáo:</label>
        <div id="optionThongKe" style="display: none;">
            <select id="thongke">
                <option value="doanhthu">Thống kê mặt hàng theo doanh thu</option>
            </select>
             <form action="StatisticServlet" method="post">
                    Từ ngày: <input type="date" name="startDate">
                    Đến ngày: <input type="date" name="endDate">
                    <input type="submit" value="Xem">
            </form>
        </div>

        <div id="ketqua">
            <!-- Kết quả thống kê sẽ được hiển thị ở đây -->
        </div>
    </div>

    <script>
        function hienThiOption() {
            const optionThongKe = document.getElementById("optionThongKe");
            optionThongKe.style.display = "block";
        }

//        function thongKe() {
//            const thongke = document.getElementById("thongke");
//            const ngayBatDau = document.getElementById("ngayBatDau").value;
//            const ngayKetThuc = document.getElementById("ngayKetThuc").value;
//            const ketqua = document.getElementById("ketqua");
//
//            if (thongke.value === "doanhthu") {
//                // Thực hiện thống kê mặt hàng theo doanh thu trong khoảng ngày từ ngayBatDau đến ngayKetThuc ở đây
//                ketqua.innerHTML = "Kết quả thống kê mặt hàng theo doanh thu từ " + ngayBatDau + " đến " + ngayKetThuc + " sẽ được hiển thị ở đây.";
//            }
//        }
    </script>
    </body>
</html>
