<%-- 
    Document   : Error_java
    Created on : Aug 22, 2017, 6:14:38 PM
    Author     : Benjamin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/includes/header.html" />

<h1>Java Error</h1>
<p>Java has thrown an exception.</p>
<p>Click the Back button to continue.</p>
<h2>Details</h2>
<p>Type: ${pageContext.exception["class"]}</p>
<p>Message: ${pageContext.exception.message}</p>

<c:import url="/includes/footer.jsp" />
