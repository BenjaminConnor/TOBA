<%-- 
    Document   : password_reset
    Created on : Aug 30, 2017, 6:12:17 PM
    Author     : Benjamin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/includes/header.html" />

<h1>Reset Password</h1>
<p><i>${message}</i></p>

<form method="post" action="ChangePasswordServlet">
    <input type="hidden" name="action" value="change_password">
    <label for="new_password">Password:</label>
    <input type="password" name="new_password" id="new_password"
           value="${user.password}">
    <input type="submit" name="change_password" id="submit" 
           value="Change Password">
</form>
<p><a href="login.jsp">Return to Login Page</a></p>
<c:import url="/includes/footer.jsp" />
