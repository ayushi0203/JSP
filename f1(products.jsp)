<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>This page passes parameters</title>
    </head>
    <body>
        <!-- header from include-->
        <jsp:include page="IncludeForward.jsp" flush="true">
            <jsp:param name="shopstop" value="Shop Stop "/>
        </jsp:include>
        <h2 align="center">Shop Stop Product List</h2>
        <table width="80%"  border="0" align="center">
            <tr>
                <td>Product Id </td>
                <td>Product Name </td>
                <td>Brand</td>
                <td>Price</td>
            </tr>
            <tr>
                <td>P00001</td>
                <td>Shoes</td>
                <td>Nike</td>
                <td>Rs 3500/-</td>
            </tr>
            <tr>
                <td>P00002</td>
                <td>Mobile</td>
                <td>Nokia</td>
                <td>Rs 4000/- onwards </td>
            </tr>
            <tr>
                <td>P00003</td>
                <td>Sports Accessories</td>
                <td>Adidas</td>
                <td>Rs 500/- onwards</td>
            </tr>
            <tr>
                <td>P00004</td>
                <td>Car Accessories </td>
                <td>General Motors</td>
                <td>Rs 2000/- onwards </td>
            </tr>
            <tr>
                <td>P00005</td>
                <td>Perfumes</td>
                <td>Gucci</td>
                <td>Rs 2500/- onwards </td>
            </tr>
        </table>
        <br />
        <br />
        <p align="center">
            <form action="DiscountPage.jsp" method="POST">
                Please enter the total amount : <input type="text" name="txtamount"/><br />
                <input type=submit value="submit"/>
            </form>
        </p>
    </body>
</html>
