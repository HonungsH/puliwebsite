<%@page pageEncoding="UTF-8" %>
<%@ include file="fragments/header.jsp" %>
<%@ include file="fragments/navigation.jsp" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/news.js"></script>
<body>
<div class="container">
    <c:if test="${isAdmin}">
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
            <c:set var="hasProfilePic" value="${news.profilePicture != null && !news.profilePicture.isEmpty()}"/>
            <div class="row">
                <div class="card customCard mb-3 w-100" style="">
                    <div class="row g-0">
                        <c:if test="${hasProfilePic}">
                            <div class="col-md-4">
                                <img src="<c:url value="${news.profilePicture}"/>" class="img-fluid rounded-start"
                                     style="margin:20px;" alt="...">
                            </div>
                        </c:if>
                        <div class="col-md-${hasProfilePic ? '8' : '12'}">
                            <div class="card-body d-flex flex-column h-100">
                                <h5 class="card-title nyhetTitel">${news.title}</h5>
                                <p class="card-text" style="white-space: pre-wrap;">${news.text}</p>

                                <p class="card-text">
                                    <small class="text-muted">Skapad ${news.createdAt.format( DateTimeFormatter.ofPattern("yyyy-MM-dd"))},</small>
                                    <small class="text-muted">Uppdaterad ${news.modifiedAt.format( DateTimeFormatter.ofPattern("yyyy-MM-dd"))}</small>
                                </p>
                                <c:if test="${isAdmin}">
                                    <button type="submit" class="mt-auto m-1 btn btn-secondary editNewsButton" style="">Redigera Nyhet
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
