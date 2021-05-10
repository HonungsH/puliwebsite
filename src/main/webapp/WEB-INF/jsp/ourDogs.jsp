<%@ taglib prefix="j" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page pageEncoding="UTF-8" %>
<%@ include file="fragments/header.jsp" %>
<%@ include file="fragments/navigation.jsp" %>

<head>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Anton&family=Lora:ital,wght@1,500&family=Oxygen:wght@300&display=swap" rel="stylesheet">
</head>

<body>

<h2 style="text-align: center;margin-bottom: 30px;">Våra hundar</h2>
<div class="container">

    <c:forEach var="dog" items="${listOfDoges}" varStatus="i">
        <c:url value="/hundar/hund" var="dogUrl">
            <c:param name="hundNamn" value="${dog.name}"/>
        </c:url>

        <j:if test="${i.index % 2 == 0}">
            <j:set var="makeNewRowIndex" value="${i.index + 1}"/>
            <div class="row">
        </j:if>
        <div class="col" style="margin-bottom: 30px;">
            <div class="profilePicDiv" style="margin-left: auto;margin-right: auto;display: block;text-align: center" class="">
                <img style="width: 300px; height: 300px;" id="${dog.name}"
                     src="<c:url value="${dog.profilePicture}"/>"/>
            </div>
            <div style="text-align: center">
                <a class="dogLinkBtn btn btn-primary" href="${dogUrl}">${dog.name}</a>
            </div>

        </div>
        <j:if test="${i.index == makeNewRowIndex || i.index == listOfDoges.size() - 1}">
            </div>
        </j:if>
    </c:forEach>
</div>
</body>

</html>