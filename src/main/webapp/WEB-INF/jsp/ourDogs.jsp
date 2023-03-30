<%@ taglib prefix="j" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page pageEncoding="UTF-8" %>
<%@ include file="fragments/header.jsp" %>
<%@ include file="fragments/navigation.jsp" %>
<sec:authorize var="isAdmin" access="hasRole('ADMIN')"/>

<body>

<h2 style="text-align: center;margin-bottom: 30px;font-size:3rem;">Våra hundar</h2>

<div class="container">

    <c:if test="${isAdmin}">
        <div class="row">
            <div class="col-1">
                <a href="${pageContext.request.contextPath}/hundar/nyHund" class="btn btn-secondary editDogButton">Lägg
                    till Hund
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
            <div class="col col-md-4 col-xs-12 col-sm-6" style="">
<%--                <div class="profilePicDiv" style="display: block;text-align: center">--%>
<%--                    <img style="height: auto; width: 100%;" class="img-responsive" id="${dog.name}"--%>
<%--                         src="<c:url value="${dog.profilePicture}"/>"/>--%>
<%--                </div>--%>
<%--                <div style="text-align: center">--%>
<%--                    <a class="dogLinkBtn btn btn-primary" href="${dogUrl}">${dog.name}</a>--%>
<%--                </div>--%>

                <a class="card" style="border-radius: 15px; align-items: center; height: 18rem; width: 18rem" href="${dogUrl}">
                    <div class="card-body">
                        <div class="row">
                            <div class="d-flex text-black">
                                <img id="${dog.name}" src="<c:url value="${dog.profilePicture}"/>"
                                     alt="Generic placeholder image" class="img-fluid"
                                     style="border-radius: 10px; width: 14rem; height: 14rem; object-fit: cover">
                            </div>
                        </div>
                        <div class="row align-items-center">

                            <h2 class="col-md-12">${dog.name}</h2>
                        </div>

                    </div>
                </a>
            </div>
            <j:if test="${i.index == makeNewRowIndex || i.index == listOfDoges.size() - 1}">
                </div>
            </j:if>
        </c:forEach>
</body>
<%@ include file="fragments/footer.jsp" %>
</html>