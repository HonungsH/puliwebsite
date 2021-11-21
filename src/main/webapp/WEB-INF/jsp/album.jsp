<<%@page pageEncoding="UTF-8" %>
<%@ include file = "fragments/header.jsp" %>
<%@ include file = "fragments/navigation.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/album.js"></script>

<body>

<div class="container">
    <input type="hidden" id="albumTitleHidden" name="title" value="${albumTitle}"/>
    <c:if test="${isAdmin}">
        <div class="row">
            <button type="submit" id="deleteAlbumButton" class="btn btn-danger">Ta bort Album
            </button>
        </div>
    </c:if>
    <div class="row">
        <div class="col-md-12 text-center">
            <h1>${albumTitle}</h1>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12 text-center">
            <h5>${description}</h5>
        </div>
    </div>
    <div class="row">
        <div class="gallery" id="gallery">
            <c:forEach var="item" items="${titleAndPicture}" varStatus="i">
                <div class="gallery-item">
                    <div class="content"><img src="${item.getSecond()}" alt=""></div>
                    <input type="hidden" name="title" value="${item.getFirst()}"/>
                </div>
            </c:forEach>
        </div>
    </div>
</div>

</body>
</html>
>