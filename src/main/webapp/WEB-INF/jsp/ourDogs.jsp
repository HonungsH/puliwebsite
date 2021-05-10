<%@ taglib prefix="j" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page pageEncoding="UTF-8" %>
<%@ include file="fragments/header.jsp" %>
<%@ include file="fragments/navigation.jsp" %>

<body>

<h2 style="text-align: center;margin-bottom: 30px;">Våra hundar</h2>
<div class="container">

    <c:forEach var="dog" items="${listOfDoges}" varStatus="i">
        <c:url value="/hundar/hund" var="dogUrl">
            <c:param name="hundNamn" value="${dog.name}"/>
        </c:url>

        <j:if test="${i.index % 3 == 0}">
            <j:set var="makeNewRowIndex" value="${i.index + 2}"/>
            <div class="row">
        </j:if>
        <div class="col mb-" style="margin-bottom: 10px;">
            <div style="margin-left: auto;margin-right: auto;display: block;text-align: center" class="">
                <img style="width: 150px; height: 150px;" id="${dog.name}"
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