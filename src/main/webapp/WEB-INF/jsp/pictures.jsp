<%@page pageEncoding="UTF-8" %>
<%@ include file = "fragments/header.jsp" %>
<%@ include file = "fragments/navigation.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/pictures.js"></script>

<body>

<div class="container ">
    <div class="row">
        <c:if test="${true}">
            <div class="row">
                <div class="col-1">
                    <a href="${pageContext.request.contextPath}/bilder/nyttAlbum" class="btn btn-secondary editDogButton">
                        Lägg till nytt album <i class="material-icons-round" style="font-size:30px;position: relative;top: 4px;">add_circle_outline</i>
                    </a>
                </div>
            </div>
        </c:if>
    </div>


    <c:forEach var="item" items="${albumTitleAndPicture}" varStatus="i">
        <c:if test="${i.index % 2 == 0}">
            <c:set var="makeNewRowIndex" value="${i.index + 1}"/>
            <div class="row">
        </c:if>

        <%--            <div class="gallery-item">--%>
        <%--                <div class="content"><img src="https://source.unsplash.com/random/?tech,care" alt=""></div>--%>
        <%--            </div>--%>
        <%--            <div class="gallery-item">--%>
        <%--                <div class="content"><img src="https://source.unsplash.com/random/?tech,studied" alt=""></div>--%>
        <%--            </div>--%>
        <div class="card col-md-6">
            <div class="row align-content-md-center">
                <div class="col-md-12">
                    <img src="<c:url value="${item.getSecond()}"/>" class="img-responsive rounded-start"
                         style="margin:20px;" alt="...">
                </div>

            </div>
            <div class="row">
                <div class="col-md-12">
                    <h4 class="card-body albumTitle" >
                            ${item.getFirst()}
                    </h4>
                </div>
            </div>
        </div>
        <c:if test="${i.index == makeNewRowIndex || i.index == albumTitleAndPicture.size() - 1}">
            </div>
        </c:if>
    </c:forEach>


</div>

</body>
</html>
