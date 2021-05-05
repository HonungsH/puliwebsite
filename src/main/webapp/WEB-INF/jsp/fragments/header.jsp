<!DOCTYPE html>
<%@page pageEncoding="UTF-8" %>

<head>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
    <c:set var="pageURI" value="${requestScope['javax.servlet.forward.request_uri']}" />

    <title>Homepage of Xaida'z dot com</title>
    <link rel="stylesheet" href="puliGeneralDesign.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <div>
        <img id="logoheader" style="" src="/logo_header.png">
    </div>
</head>