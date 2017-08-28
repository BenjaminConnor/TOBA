<%-- 
    Document   : New_customer
    Created on : Aug 22, 2017, 5:32:02 PM
    Author     : Benjamin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Titan Online Banking Application :: New Customer Sign Up</title>
        <link rel="stylesheet" href="styles/toba.css">
    </head>
    <body>
        <header>
            <h1>New Customer Sign Up</h1>
        </header>
        <p><i>${message}</i></p>
        <form method="post" action="NewCustomerServlet">
            <input type="hidden" name="action" value="sign_up">
            <label for="firstName">First Name:</label>
            <input type="text" name="firstName" id="firstName" value="${user.firstName}">
            <label for="lastName">Last Name:</label>
            <input type="text" name="lastName" id="lastName" value="${user.lastName}">
            <label for="phone">Phone:</label>
            <input type="number" name="phone" id="phone" value="${user.phone}">
            <label for="address">Address:</label>
            <input type="text" name="address" id="address" value="${user.address}">
            <label for="city">City:</label>
            <input type="text" name="city" id="city" value="${user.city}">
            <label for="state">State:</label>
            <input type="text" name="state" id="state" value="${user.state}">
            <label for="zipcode">Zip Code:</label>
            <input type="number" name="zipcode" id="zipcode" value="${user.zipcode}">
            <label for="email">Email:</label>
            <input type="email" name="email" id="email" value="${user.email}">
            <input type="submit" name="Submit" id="submit" value="Submit">
        </form>
    </body>
</html>
