<%--
    Document   : clgUserChk
    Created on : Mar 11, 2016, 10:16:20 AM
    Author     : divinity
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

    </head>
    <body>

        <c:if test="${sessionScope.sToken==null || sessionScope.sToken!='true' }">
            ${sessionScope.sToken=null}
            ${sessionScope.UID=null}
            ${sessionScope.user=null}
        </c:if>

    </body>
</html>
