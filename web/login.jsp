<%-- 
    Document   : login
    Created on : Sep 17, 2017, 4:36:27 PM
    Author     : Benjamin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/includes/header.html" />
    <h1>Customer Login</h1>
    <form method="post" action="LoginServlet">
        <input type="hidden" name="action" value="login">
        <label for="userName">User Name:</label>
        <input type="text" name="userName" id="userName">
        <label for="password">Password:</label>
        <input type="password" name="password" id="password">
        <input type="submit" id="submit" value="Login">
    </form>
    <p>
        <a href="admin/login.html">Admin Login</a><br>
        <a href="password_reset.jsp">Reset Password</a><br>
        <a href="new_customer.jsp">New Customer Sign Up</a>
    </p>
<c:import url="/includes/footer.jsp" />
