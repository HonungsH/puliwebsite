<%@ taglib prefix="j" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page pageEncoding="UTF-8" %>
<%@ include file="fragments/header.jsp" %>
<%@ include file="fragments/navigation.jsp" %>
<sec:authorize var="isAdmin" access="hasRole('ADMIN')"/>

<body>

<h2 style="text-align: center;margin-bottom: 40px;">${dog.name}</h2>
<div class="container">
    <div class="row">

        <div class="col-6">
            <img class="img-fluid max-width: 100%;" id="dogProfilePicture" style="" src="<c:url value="${dog.profilePicture}"/>"/>
        </div>

        <div class="col-6">

        </div>


    </div>
</div>


</body>

</html>