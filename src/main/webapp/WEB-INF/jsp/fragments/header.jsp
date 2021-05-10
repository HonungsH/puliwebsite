<!DOCTYPE html>
<%@page pageEncoding="UTF-8" %>

<head>
    <meta charset="UTF-8">
    <title>Xaida'z Puli</title>

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <c:set var="pageURI" value="${requestScope['javax.servlet.forward.request_uri']}" />

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <link rel="stylesheet" href="puliGeneralDesign.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/textEditing.js"></script>

    <div>
        <a href="${pageContext.request.contextPath}/">
            <img id="logoheader" style="" src="${pageContext.request.contextPath}/images/logo_header.png" alt="sad">
        </a>
    </div>
</head>