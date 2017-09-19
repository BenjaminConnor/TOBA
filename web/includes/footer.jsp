<%-- 
    Document   : footer
    Created on : Aug 30, 2017, 7:23:52 PM
    Author     : Benjamin
--%>

<%@ page import="java.util.GregorianCalendar, java.util.Calendar" %>
<%
    GregorianCalendar currentDate = new GregorianCalendar();
    int currentYear = currentDate.get(Calendar.YEAR);
%>
<p>&copy; Copyright <%= currentYear %> Benjamin Connor</p>
</body>
</html>
