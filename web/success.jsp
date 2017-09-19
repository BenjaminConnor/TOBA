<%-- 
    Document   : success
    Created on : Sep 6, 2017, 5:05:55 PM
    Author     : Benjamin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/includes/header.html" />


<h1>Success!</h1>
<p>Your account has been successfully created.</p>
<span>${session.user}</span>
<form>
    <label>First Name:</label>
    <span>${user.firstName}</span><br>
    <label>Last Name:</label>
    <span>${user.lastName}</span><br>
    <label>Phone:</label>
    <span>${user.phone}</span><br>
    <label>Address:</label>
    <span>${user.address}</span><br>
    <label>City:</label>
    <span>${user.city}</span><br>
    <label>State:</label>
    <span>${user.state}</span><br>
    <label>Zipcode:</label>
    <span>${user.zipcode}</span><br>
    <label>Email:</label>
    <span>${user.email}</span><br><br>
    <label>User Name:</label>
    <span>${user.userName}</span><br>
    <label>Password:</label>
    <span>${user.password}</span><br>
</form>
<a href="login.jsp">Return to Login Page</a>

<c:import url="/includes/footer.jsp" />
