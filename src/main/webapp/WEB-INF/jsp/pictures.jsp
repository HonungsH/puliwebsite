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


<%--    <c:forEach var="item" items="${albumTitleAndPicture}" varStatus="i">
        <c:if test="${i.index % 2 == 0}">
            <c:set var="makeNewRowIndex" value="${i.index + 1}"/>
            <div class="row">
        </c:if>

        &lt;%&ndash;            <div class="gallery-item">&ndash;%&gt;
        &lt;%&ndash;                <div class="content"><img src="https://source.unsplash.com/random/?tech,care" alt=""></div>&ndash;%&gt;
        &lt;%&ndash;            </div>&ndash;%&gt;
        &lt;%&ndash;            <div class="gallery-item">&ndash;%&gt;
        &lt;%&ndash;                <div class="content"><img src="https://source.unsplash.com/random/?tech,studied" alt=""></div>&ndash;%&gt;
        &lt;%&ndash;            </div>&ndash;%&gt;
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
    </c:forEach>--%>


    <c:forEach var="album" items="${albumTitleAndPicture}" varStatus="i">
        <c:if test="${i.index % 3 == 0}">
            <c:set var="makeNewRowIndex" value="${i.index + 2}"/>
            <div class="row">
        </c:if>

        <div class="col-md-4">
            <div class="card w-100 mt-5" style="">
                <img class="card-img-top" src="<c:url value="${album.getSecond()}"/>" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-text albumTitle">${album.getFirst()}</h5>
                </div>
            </div>
        </div>


<%--        <div class="card customCard mb-3 w-100" style="">
            <div class="row g-0">
                    <div class="col-md-4">
                        <img src="<c:url value="${album.getSecond()}"/>" class="img-fluid rounded-start"
                             style="margin:20px;" alt="...">
                    </div>
                <div class="col-md-8">
                    <div class="card-body">
                        <h5 class="card-title nyhetTitel">${album.getFirst()}</h5>

                        <p class="card-text">
                            <small class="text-muted">Skapad:</small>
                        </p>
                        <c:if test="${true}">
                            <button type="submit" class="mt-auto m-1 btn btn-secondary editNewsButton" style="">Redigera Album
                                <i class="material-icons-round" style="font-size:20px">mode_edit</i>
                            </button>
                        </c:if>
                    </div>


                </div>
            </div>
        </div>--%>
        <c:if test="${i.index == makeNewRowIndex || i.index == albumTitleAndPicture.size() - 1}">
            </div>
        </c:if>
    </c:forEach>



</div>

</body>
</html>
