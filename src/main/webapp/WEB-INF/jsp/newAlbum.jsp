<%@ taglib prefix="j" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page pageEncoding="UTF-8" %>
<%@ include file="fragments/header.jsp" %>
<%@ include file="fragments/navigation.jsp" %>
<%@ include file="fragments/newAlbumModal.jsp" %>


<body>
<h2 id="albumTitle" style="text-align: center;margin-bottom: 30px;">Nytt Album</h2>
<div class="container mainContainer" id="dropzone">
    <%--@elvariable id="album" type="puli.xaidaz.jpa.entity.Album"--%>

    <form:form class="dropzone needsclick" id="demo-upload" method="POST" action="${pageContext.request.contextPath}/bilder/sparaBild" modelAttribute="album">

        <input class="form-group" type="hidden" name="albumTitle" id="albumTitleHidden">

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

        <div class="dz-message uploadPicturesDiv" data-dz-message><span class="uploadPicturesMessage">Tryck eller dra filer hit</span></div>

        <div class="row">
            <span class="dz-preview"></span>
        </div>





        <%--        <div class="row" id="dropzone">--%>

        <%--            <form class="col-12 dropzone needsclick" id="demo-upload">--%>

        <%--            </form>--%>
        <%--        </div>--%>
    </form:form>



</div>

</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/newAlbum.js"></script>
</html>


