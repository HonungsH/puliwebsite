<%@ taglib prefix="j" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page pageEncoding="UTF-8" %>
<%@ include file="fragments/header.jsp" %>
<%@ include file="fragments/navigation.jsp" %>
<%@ include file="fragments/newAlbumModal.jsp" %>


<body>
<h2 id="albumTitle" style="text-align: center;margin-bottom: 30px;">${albumTitleHidden}</h2>
<div class="container mainContainer" id="dropzone">
    <%--@elvariable id="album" type="puli.xaidaz.jpa.entity.Album"--%>


    <c:forEach var="item" items="${titleAndPicturePair}" varStatus="i">
        <input class="existingPicture" type="hidden" value="${item.getSecond()}">
    </c:forEach>

    <div class="row">
        <label for="description">Beskrivning:</label>
        <textarea class="form-control" name="description" id="description" rows="3">${album.description}</textarea>
    </div>


    <div class="row">
        <div class="row form-group justify-content-end">
            <div class="col-auto" >
                <button id="saveAlbumButton" style="margin-bottom: 10px; margin-top:25px;" type="button" class="btn btn-primary">Spara album</button>
                <button id="cancelAlbumButton" style="margin-bottom: 10px; margin-top:25px;" type="button" class="btn btn-danger">Avbryt</button>
            </div>
        </div>
    </div>

    <div class="row">
        <p id="noAlbumWarning" style="color:red; display: none">Kan inte spara ett album utan några bilder.</p>
    </div>

    <h4 style="text-align: center;margin-bottom: 30px;">Dra foton till rutan nedanför eller klicka i rutan för att lägga till</h4>


    <form:form class="dropzone needsclick" id="demo-upload" method="POST" action="${pageContext.request.contextPath}/bilder/sparaBild" modelAttribute="album">
        <input class="form-group" type="hidden" name="albumTitle" id="albumTitleHidden" value="${albumTitleHidden}">

        <%--        <div class="dz-message dz-preview dz-ciomplete dz-image-preview uploadPicturesDiv" data-dz-message><span class="uploadPicturesMessage">Tryck eller dra filer hit</span></div>--%>

        <div class="row">
            <div class="dz-preview dz-file-preview">
                <div class="dz-details">
                    <div class="dz-filename"><span data-dz-name></span></div>
                    <div class="dz-size" data-dz-size></div>
                    <img data-dz-thumbnail/>
                </div>
                <div class="dz-progress"><span class="dz-upload" data-dz-uploadprogress></span></div>
                <div class="dz-success-mark"><span>✔</span></div>
                <div class="dz-error-mark"><span>✘</span></div>
                <div class="dz-error-message"><span data-dz-errormessage></span></div>
            </div>
        </div>
    </form:form>


</div>

</body>
<%@ include file="fragments/footer.jsp" %>
<script type="text/javascript" src="<c:url value="${pageContext.request.contextPath}/js/newAlbum.js"/>"></script>

</html>


