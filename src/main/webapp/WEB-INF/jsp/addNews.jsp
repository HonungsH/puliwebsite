<%@page pageEncoding="UTF-8" %>
<%@ include file="fragments/header.jsp" %>
<%@ include file="fragments/navigation.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/news.js"></script>

<body>
<h2 style="text-align: center;margin-bottom: 30px;">Lägg till en nyhet</h2>
<div class="container">
    <p style="color:red">* = obligatorisk</p>
    <%--@elvariable id="news" type="puli.xaidaz.jpa.entity.News"--%>
    <form:form method="POST" action="/nyheter/sparaNyhet" modelAttribute="news" enctype="multipart/form-data">
        <input type="hidden" name="id" id="id" value="${news.id}">
        <input type="hidden" name="createdAt" value="${news.createdAt}">
        <input type="hidden" name="modifiedAt" value="${news.modifiedAt}">
        <input type="hidden" name="profilePicture" value="${news.profilePicture}">
        <div class="form-group">
            <label class="required" for="newsTitle">Nyhetens titel:</label>
            <input type="text" maxlength="120" name="title" class="form-control" id="newsTitle" placeholder=""
                   value="${news.title}">
            <span class="antalTeckenKvarText ml-1">Antal tecken kvar:</span>
            <span class="character-counter-title ml-1">120</span>
        </div>
        <div class="form-group">
            <label class="required" for="newsText">Nyhetens innehåll:</label>
            <textarea maxlength="1500" style="white-space: pre-wrap;" class="form-control" name="text" aria-describedby="textHelp" id="newsText"
                      rows="3">${news.text}</textarea>
            <small id="textHelp" class="form-text text-muted"></small>
            <span class="antalTeckenKvarText ml-1">Antal tecken kvar:</span>
            <span class="character-counter-text ml-1">1500</span>

        </div>
        <div class="container">
            <div class="row form-group">
                <div class="col-sm">
                    <label class="form-label newLineLabel" for="profilePic" aria-describedby="pictureHelp">Ladda upp
                        Bild till nyheten (Frivilligt)</label>
                    <small id="pictureHelp" class="form-text text-muted">Bilden visas intill nyheten på "Nyheter"-sidan.
                        Om inte bild väljs så visas bara nyhetens text.
                    </small>
                    <input type="file" name="profilePictureFile" id="profilePic" onchange="loadFile(event)"
                           style="display:none;" value="${news.profilePicture}"/>
                    <div>
                        <button id="choseFileButton" type="button" class="btn btn-primary mt-2">Bläddra filer</button>
                        <label id="choseFileLabel" for="choseFileButton">${profilePictureLabel}</label>
                    </div>
                </div>
                <div class="col-9">
                    <img id="filePreview" height="125px" width="125px"
                         style="<c:if test="${news.profilePicture} == null">display: none;</c:if>"
                         src="${news.profilePicture}"/>
                </div>
            </div>
            <div class="row form-group justify-content-end">
                <div class="col-auto">
                    <button style="margin-bottom: 10px; margin-top:10px;" type="submit" class="btn btn-primary">Spara
                        Nyhet
                    </button>
                    <c:if test="${news.id != null}">
                        <button style="margin-bottom: 10px; margin-top:10px;" type="button" class="btn btn-secondary"
                                id="deleteNewsButton">Ta bort nyhet
                        </button>
                    </c:if>
                </div>
            </div>
        </div>
    </form:form>
</div>
</body>
</html>
