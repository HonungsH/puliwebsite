<%@ taglib prefix="j" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page pageEncoding="UTF-8" %>
<%@ include file="fragments/header.jsp" %>
<%@ include file="fragments/navigation.jsp" %>
<sec:authorize var="isAdmin" access="hasRole('ADMIN')"/>

<body>
<div class="container">
    <form:form action="redigeraHund" method="POST" enctype="multipart/form-data">
        <input type="hidden" name="dogId" value="${dog.id}">

        <h2 style="font-size: 3rem; text-align: left;margin-bottom: 40px;">${dog.name}</h2>
        <div class="row">
            <div class="col-6">
                <img class="img-fluid" id="dogProfilePicture" style=""
                     src="<c:url value="${dog.profilePicture}"/>"/>
            </div>
            <div class="col-6">
                <!-- BREEDING NAME -->
                <div class="row">
                    <h4 class="profileTitle">Uppfödarnamn</h4>
                </div>
                <div class="row">
                    <p name="breedingName">${dog.breedingName}</p>
                </div>

                <!-- COLOUR -->
                <div class="row">
                    <h4 class="profileTitle">Färg</h4>
                </div>
                <div class="row">
                    <p>${dog.colour}</p>
                </div>

                <!-- BIRTH -->
                <div class="row">
                    <h4 class="profileTitle">Födelsedatum</h4>
                </div>
                <div class="row">
                    <p>${dog.dateOfBirth}</p>
                </div>

                <!-- OWNER --><%--
                <c:if test="${dog.owner != null}">
                    <div class="row">
                        <h4 class="profileTitle">Ägare</h4>
                    </div>
                    <div class="row">
                        <p>${dog.owner}</p>
                    </div>
                </c:if>--%>

                <!-- DESCRIPTION -->
                <c:if test="${dog.description != null}">
                    <div class="row">
                        <h4 class="profileTitle">Om ${dog.name}</h4>
                    </div>
                    <div class="row">
                        <p>${dog.description}</p>
                    </div>
                </c:if>

                <!-- BREEDING HISTORY -->
                <c:if test="${dog.breedingHistory != null}">
                    <div class="row">
                        <h4 class="profileTitle">Valpkullar</h4>
                    </div>
                    <div class="row">
                        <p>${dog.breedingHistory}</p>
                    </div>
                </c:if>

                <!-- LINK SKK -->
                <c:if test="${dog.linkToSkk != null}">
                    <div class="row">
                        <h4 class="profileTitle">Hundinformation SKK</h4>
                    </div>
                    <div class="row">
                        <p><a target="_blank" href="${dog.linkToSkk}">Tryck här</a></p>
                    </div>
                </c:if>
                <c:if test="${true}">
                    <div class="row">
                        <button type="submit" class="btn btn-secondary editDogButton">Redigera Hund
                            <i class="material-icons-round" style="font-size:30px;position: relative;top: 4px;">mode_edit</i>
                        </button>
                    </div>
                </c:if>
            </div>
        </div>
    </form:form>
</div>

</body>

</html>