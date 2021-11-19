<%@page pageEncoding="UTF-8" %>
<%@ include file="fragments/header.jsp" %>
<%@ include file="fragments/navigation.jsp" %>

<body>

<div class="container">

    <c:if test="${true}">
        <div class="row">
            <div class="col-1">
                <a href="${pageContext.request.contextPath}/nyheter/nyNyhet" class="btn btn-secondary editDogButton">Lägg
                    till Nyhet
                    <i class="material-icons-round" style="font-size:30px;position: relative;top: 4px;">add_circle_outline</i>
                </a>
            </div>
        </div>
    </c:if>


<c:forEach var="news" items="${listOfNews}" varStatus="i">
    <div class="row">
        <div class="card mb-3" style="">
            <div class="row g-0">
                <div class="col-md-4">
                    <img src="<c:url value="${news.profilePicture}"/>" class="img-fluid rounded-start"
                         style="margin:20px;" alt="...">
                </div>
                <div class="col-md-8">
                    <div class="card-body">
                        <h5 class="card-title nyhetTitel">${news.title}</h5>
                        <p class="card-text">${news.text}</p>
                        <p class="card-text">
                            <small class="text-muted">Skapad ${news.createdAt}, </small>
                            <small class="text-muted">Uppdaterat ${news.modifiedAt}</small>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</c:forEach>
</div>

</body>
</html>
