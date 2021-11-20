<%@page pageEncoding="UTF-8" %>
<%@ include file="fragments/header.jsp" %>
<%@ include file="fragments/navigation.jsp" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/news.js"></script>
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


            <input type="hidden" name="id" id="id" value="${news.id}">
            <c:set var="hasProfilePic" value="${news.profilePicture != null}"/>
            <div class="row">
                <div class="card mb-3 w-100" style="">
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
                                <hr class="">
                                <p class="card-text" style="white-space: pre-wrap;">${news.text}</p>

                                <p class="card-text">
                                    <small class="text-muted">Skapad ${news.createdAt},</small>
                                    <small class="text-muted">Uppdaterad ${news.modifiedAt}</small>
                                </p>
                            </div>
                            <div class="mt-auto">
                                <c:if test="${true}">
                                    <button type="submit" class="m-1 btn btn-secondary editNewsButton"
                                            style="float: right;">Redigera Nyhet
                                        <i class="material-icons-round" style="font-size:20px">mode_edit</i>
                                    </button>
                                </c:if>
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
