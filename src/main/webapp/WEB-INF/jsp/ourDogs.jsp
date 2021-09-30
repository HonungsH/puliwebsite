<%@ taglib prefix="j" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page pageEncoding="UTF-8" %>
<%@ include file="fragments/header.jsp" %>
<%@ include file="fragments/navigation.jsp" %>
<sec:authorize var="isAdmin" access="hasRole('ADMIN')"/>

<body>

<h2 style="text-align: center;margin-bottom: 30px;">Våra hundar</h2>

<div class="container">

    <c:if test="${true}">
        <div class="row justify-content-end">
            <div class="col-1">
                <a href="${pageContext.request.contextPath}/hundar/nyHund" class="btn btn-secondary dogButton">Lägg till Hund
                    <i class="material-icons-round" style="font-size:30px;position: relative;top: 4px;">add_circle_outline</i>
                </a>
            </div>
        </div>
    </c:if>

    <c:forEach var="dog" items="${listOfDoges}" varStatus="i">
        <c:url value="/hundar/hund" var="dogUrl">
            <c:param name="hundNamn" value="${dog.name}"/>
        </c:url>

        <j:if test="${i.index % 3 == 0}">
            <j:set var="makeNewRowIndex" value="${i.index + 2}"/>
            <div class="row mt-5">
        </j:if>
        <div class="col" style="margin-bottom: 30px;">
            <div class="profilePicDiv" style="margin-left: auto;margin-right: auto;display: block;text-align: center">
                <img style="height: 350px; width: auto;" class="img-fluid" id="${dog.name}"
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