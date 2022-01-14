<!DOCTYPE html>
<%@page pageEncoding="UTF-8" %>

<head>
    <meta charset="UTF-8">
    <title>Xaida'z Puli</title>
    <link rel = "icon" href ="https://st2.depositphotos.com/47577860/49673/v/600/depositphotos_496730384-stock-illustration-puli-dog-pet-icon-outline.jpg" type = "image/x-icon">

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <c:set var="pageURI" value="${requestScope['javax.servlet.forward.request_uri']}" />
    <sec:authorize var="isAdmin" access="hasRole('ADMIN')"/>

    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/jquery-ui.min.css">
    <script src="${pageContext.request.contextPath}/js/jquery-ui.min.js"></script>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/puliGeneralDesign.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons+Round">
    <!-- Google fonts https://fonts.google.com/ -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Lora&family=Yeseva+One&display=swap" rel="stylesheet">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <!-- DropZone -->
    <script src="https://unpkg.com/dropzone@5/dist/min/dropzone.min.js"></script>
    <link rel="stylesheet" href="https://unpkg.com/dropzone@5/dist/min/dropzone.min.css" type="text/css" />

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/textEditing.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/dog.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/application.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

    <div>
        <a href="${pageContext.request.contextPath}/">
            <img id="logoheader" style="" src="${pageContext.request.contextPath}/images/logo_header.png" alt="sad">
        </a>
    </div>
</head>