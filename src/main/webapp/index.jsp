<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.demo3.Customer" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<style>
    img{
        width: 50px;
        height: auto;
    }
    td{
        margin: 0px;
        padding: 0px;
        border: solid 1px black;
    }
</style>
<body>
<%
    List<Customer> customerList = new ArrayList<>();
    customerList.add(new Customer(1,"Đào Văn Trọng", "1998-05-20","Thái Bình","https://hinhanhdep.org/wp-content/uploads/2016/07/anh-nhan-vat-hoat-hinh-luffy-696x696.png"));
    customerList.add(new Customer(1,"Nguyễn Đức Bình", "2005-03-16","Hà Lội","https://thuthuatnhanh.com/wp-content/uploads/2019/08/hinh-anh-luffy-buon-cuoi.jpg"));
    customerList.add(new Customer(1,"Hoàng Phương Nam", "2003-08-02","Vĩnh Phúc","https://ecdn.game4v.com/g4v-content/uploads/2022/02/14113033/0_thumb-1644813032-11.jpeg"));
    customerList.add(new Customer(1,"Nguyễn Đức Anh", "2000-08-22","Hà Lội","https://ecdn.game4v.com/g4v-content/uploads/2022/02/14113033/0_thumb-1644813032-11.jpeg"));
    customerList.add(new Customer(1,"Nguyễn Mạnh Hiền", "1997-05-20","Hà Lội","https://static1.ohman.vn/YanNews/2167221/201911/trang-hy-la-ai-thong-tin-tieu-su-hot-face-trang-hy-20191106-103918.jpg"));
    request.setAttribute("ds", customerList);
%>
<table >
    <tr>
        <td>Id</td>
        <td>Name</td>
        <td>Birth</td>
        <td>Address</td>
        <td>Mota</td>
    </tr>
    <c:forEach var="cus" items="${ds}">
        <tr>
            <td>${cus.id}</td>
            <td>${cus.name}</td>
            <td>${cus.birt}</td>
            <td>${cus.address}</td>
            <td><img src=${cus.mota} alt=""></td>

        </tr>

    </c:forEach>

</table>
</body>
</html>