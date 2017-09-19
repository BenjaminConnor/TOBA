<%-- 
    Document   : account_activity
    Created on : Sep 6, 2017, 9:06:26 PM
    Author     : Benjamin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/includes/header.html" />

<h1>Account Activity</h1>
<c:if test="${sessionScope.user != null}">
    <p>Welcome ${user.firstName} ${user.lastName}!</p>
</c:if>
<c:if test="${sessionScope.user == null}">
    <p>Not Logged In</p>
</c:if>
<c:import url="/includes/footer.jsp" />
