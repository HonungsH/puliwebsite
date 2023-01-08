<<%@page pageEncoding="UTF-8" %>
<%@ include file = "fragments/header.jsp" %>
<%@ include file = "fragments/navigation.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/album.js"></script>

<body>

<div class="container d-flex flex-column min-vh-100">
    <input type="hidden" id="albumTitleHidden" name="title" value="${albumTitle}"/>
    <c:if test="${isAdmin}">
        <div class="row justify-content-end">
            <div class="col-auto">
                <a href="${pageContext.request.contextPath}/bilder/redigeraAlbum?albumTitle=${albumTitle}" class="btn btn-primary">Redigera Album</a>
                <button type="submit" id="deleteAlbumButton" class="btn btn-danger">Ta bort album</button>
            </div>
        </div>
    </c:if>
    <div class="row" style="margin-bottom: 20px">
        <div class="col-md-12 text-center">
            <h1>${albumTitle}</h1>
        </div>
    </div>
    <div class="row" style="margin-bottom: 20px">
        <div class="col-md-12 text-center">
            <h5>${description}</h5>
        </div>
    </div>
    <div class="row">
        <div class="row">
            <input type="hidden" name="numberOfImages" id="numberOfImages" value="${titleAndPicture.size()}">
            <div class="gallery" id="gallery" class="carousel slide" data-bs-ride="carousel">
                <c:forEach var="item" items="${titleAndPicture}" varStatus="i">
                    <div class="gallery-item" id="galleryitem-${i.index}" data-pos="${i.index}">
                        <div class="content"><img src="${item.getSecond()}" alt=""></div>
                        <input type="hidden" name="title" value="${item.getFirst()}"/>
                    </div>
                </c:forEach>
            </div>

            <%--            <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">--%>
            <%--                <div class="carousel-indicators">--%>
            <%--                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>--%>
            <%--                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>--%>
            <%--                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>--%>
            <%--                </div>--%>
            <%--                <div class="carousel-inner">--%>
            <%--                    <div class="carousel-item active">--%>
            <%--                        <img src="..." class="d-block w-100" alt="...">--%>
            <%--                    </div>--%>
            <%--                    <div class="carousel-item">--%>
            <%--                        <img src="..." class="d-block w-100" alt="...">--%>
            <%--                    </div>--%>
            <%--                    <div class="carousel-item">--%>
            <%--                        <img src="..." class="d-block w-100" alt="...">--%>
            <%--                    </div>--%>
            <%--                </div>--%>
            <%--                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">--%>
            <%--                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>--%>
            <%--                    <span class="visually-hidden">Previous</span>--%>
            <%--                </button>--%>
            <%--                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">--%>
            <%--                    <span class="carousel-control-next-icon" aria-hidden="true"></span>--%>
            <%--                    <span class="visually-hidden">Next</span>--%>
            <%--                </button>--%>
            <%--            </div>--%>
        </div>

    </div>

    <div class="row mt-auto fixed-bottom justify-content-center mb-5">
        <div class="row mt-auto" id="slider-indicators" style="display: none">
            <button type="button" id="slider-buttons-1" class="indicator-b indicator-b-hidden indicator-b-l" data-pos="-3" data-opacity="0" data-right="-180"></button>
            <button type="button" id="slider-buttons-2" class="indicator-b indicator-b-outer indicator-b-l" data-pos="-2" data-opacity="0.33" data-right="-120" ></button>
            <button type="button" id="slider-buttons-3" class="indicator-b indicator-b-inner indicator-b-l" data-pos="-1" data-opacity="0.66" data-right="-60" ></button>
            <button type="button" id="slider-buttons-4" class="indicator-b indicator-b-middle" data-pos="0" data-opacity="1"></button>
            <button type="button" id="slider-buttons-5" class="indicator-b indicator-b-inner indicator-b-r" data-pos="1" data-opacity="0.66" data-right="60"></button>
            <button type="button" id="slider-buttons-6" class="indicator-b indicator-b-outer indicator-b-r" data-pos="2" data-opacity="0.33" data-right="120"></button>
            <button type="button" id="slider-buttons-7" class="indicator-b indicator-b-hidden indicator-b-r" data-pos="3" data-opacity="0" data-right="180"></button>
        </div>
    </div>
</div>


</body>
<%@ include file="fragments/footer.jsp" %>

</html>