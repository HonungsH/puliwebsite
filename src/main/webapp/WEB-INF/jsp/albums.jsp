<%@page pageEncoding="UTF-8" %>
<%@ include file="fragments/header.jsp" %>
<%@ include file="fragments/navigation.jsp" %>
<script type="text/javascript" src="<c:url value="${pageContext.request.contextPath}/js/pictures.js"/>"></script>

<body>
<h2 style="text-align: center;margin-bottom: 30px;font-size:3rem;">Album</h2>
<p style="text-align: center;font-size: 20px;">
    <c:if test="${albumTitleAndPicture == null}">Det finns inte några album att visa</c:if>
    <c:if test="${albumTitleAndPicture != null}">Tryck på ett album för att visa bilderna</c:if>
</p>
<div class="container ">
    <div class="row">
        <c:if test="${isAdmin}">
            <div class="row">
                <div class="col-1">
                    <a href="${pageContext.request.contextPath}/bilder/nyttAlbum"
                       class="btn btn-secondary editDogButton">
                        Lägg till nytt album <i class="material-icons-round"
                                                style="font-size:30px;position: relative;top: 4px;">add_circle_outline</i>
                    </a>
                </div>
            </div>
        </c:if>
    </div>

    <c:forEach var="album" items="${albumTitleAndPicture}" varStatus="i">
        <c:if test="${i.index % 3 == 0}">
            <c:set var="makeNewRowIndex" value="${i.index + 2}"/>
            <div class="row">
        </c:if>

        <div class="col-md-4">
            <div class="card w-100 mt-5 albumCard" style="">
                <img class="card-img-top" style="cursor: pointer;" src="<c:url value="${album.getSecond()}"/>" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-text albumTitle">${album.getFirst()}</h5>
                </div>
            </div>
        </div>

        <c:if test="${i.index == makeNewRowIndex || i.index == albumTitleAndPicture.size() - 1}">
            </div>
        </c:if>
    </c:forEach>

</div>
</body>
<%@ include file="fragments/footer.jsp" %>
</html>
