<%-- 
    Document   : Error_java
    Created on : Aug 22, 2017, 6:14:38 PM
    Author     : Benjamin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Java Error</title>
        <link rel="stylesheet" href="styles/toba.css">
    </head>
    <body>
        <h1>Java Error</h1>
        <p>Java has thrown an exception.</p>
        <p>Click the Back button to continue.</p>
        <h2>Details</h2>
        <p>Type: ${pageContext.exception["class"]}</p>
        <p>Message: ${pageContext.exception.message}</p>
    </body>
</html>
