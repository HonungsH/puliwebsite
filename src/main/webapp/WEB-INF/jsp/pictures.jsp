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
        </div>

    </div>

    <div class="row mt-auto d-flex justify-content-between">
        <div class="bi bi-arrow-left gallery-arrow" id="gallery-arrow-left" style="display: none;  left: 5%">
            <svg xmlns="http://www.w3.org/2000/svg" width="49px" height="49px" fill="currentColor" viewBox="0 0 16 16">
                <path fill-rule="evenodd" d="M15 8a.5.5 0 0 0-.5-.5H2.707l3.147-3.146a.5.5 0 1 0-.708-.708l-4 4a.5.5 0 0 0 0 .708l4 4a.5.5 0 0 0 .708-.708L2.707 8.5H14.5A.5.5 0 0 0 15 8z"/>
            </svg>
        </div>
        <div class="bi bi-arrow-right gallery-arrow" id="gallery-arrow-right" style="display: none; right: 5%" onclick="">
            <svg xmlns="http://www.w3.org/2000/svg" width="49px" height="49px" fill="currentColor" viewBox="0 0 16 16">
                <path fill-rule="evenodd" d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8z"/>
            </svg>
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