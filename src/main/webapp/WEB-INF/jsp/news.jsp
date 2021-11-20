<%@page pageEncoding="UTF-8" %>
<%@ include file="fragments/header.jsp" %>
<%@ include file="fragments/navigation.jsp" %>

<body>
<div class="container">
        <c:if test="${true}">
            <div class="row">
                <div class="col-1">
                    <a href="${pageContext.request.contextPath}/nyheter/nyNyhet"
                       class="btn btn-secondary editDogButton">Lägg
                        till Nyhet
                        <i class="material-icons-round" style="font-size:30px;position: relative;top: 4px;">add_circle_outline</i>
                    </a>
                </div>
            </div>
        </c:if>


        <c:forEach var="news" items="${listOfNews}" varStatus="i">
            <form:form action="nyheter/redigeraNyhet" method="POST">

            <input type="hidden" name="newsId" value="${news.id}">
            <c:set var="hasProfilePic" value="${news.profilePicture != null}"/>
            <div class="row">
                <div class="card mb-3" style="">
                    <div class="row g-0">
                        <c:if test="${hasProfilePic}">
                            <div class="col-md-4">
                                <img src="<c:url value="${news.profilePicture}"/>" class="img-fluid rounded-start"
                                     style="margin:20px;" alt="...">
                            </div>
                        </c:if>
                        <div class="col-md-${hasProfilePic ? '8' : '12'}">
                            <div class="card-body">
                                <h5 class="card-title nyhetTitel">${news.title}</h5>
                                <p class="card-text">${news.text}</p>
                                <c:if test="${true}">
                                    <button type="submit" class="btn btn-secondary editDogButton">Redigera Nyhet
                                        <i class="material-icons-round" style="font-size:30px">mode_edit</i>
                                    </button>
                                </c:if>
                                <p class="card-text">
                                    <small class="text-muted">Skapad ${createdAt},</small>
                                    <small class="text-muted">Uppdaterat ${modifiedAt}</small>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </form:form>
        </c:forEach>
</div>

</body>
</html>
