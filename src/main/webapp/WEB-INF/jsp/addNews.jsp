<%@page pageEncoding="UTF-8" %>
<%@ include file="fragments/header.jsp" %>
<%@ include file="fragments/navigation.jsp" %>

<body>
<h2 style="text-align: center;margin-bottom: 30px;">Lägg till en nyhet</h2>
<div class="container">
    <p style="color:red">* = obligatorisk</p>
    <%--@elvariable id="dog" type="puli.xaidaz.jpa.entity.Dog"--%>
    <form:form method="POST" action="/nyheter/sparaNyhet" modelAttribute="news" enctype="multipart/form-data">
        <input type="hidden" name="id" id="id" value="${dog.id}">
        <div class="form-group">
            <label class="required" for="newsTitle">Nyhetens titel:</label>
            <form:errors class="errorMessage alert" path="name"/>
            <input type="text" name="title" class="form-control" id="newsTitle" placeholder="" value="${news.title}">
        </div>
        <div class="form-group">
            <label class="required" for="newsText">Skriv en kort uppdatering eller nyhet:</label>
            <textarea maxlength="1500" class="form-control" name="text" aria-describedby="textHelp" id="newsText" rows="3">${news.text}</textarea>
            <small id="textHelp" class="form-text text-muted"></small>
            <span class="ml-1">Antal tecken kvar:</span>
            <span class="character-counter-text ml-1">1500</span>

        </div>
        <div class="container">
            <div class="row form-group">
                <div class="col-sm">
                    <label class="form-label newLineLabel" for="profilePic" aria-describedby="pictureHelp">Ladda upp Profilbild</label>
                    <small id="pictureHelp" class="form-text text-muted">Profilbilden visas intill nyheten på "Nyheter"-sidan</small>

                    <input type="file" name="profilePictureFile" id="profilePic" onchange="loadFile(event)" style="display:none;" value="${news.profilePicture}"/>
                    <div>
                        <button id="choseFileButton" type="button" class="btn btn-primary mt-2" >Bläddra filer</button>
                        <label id="choseFileLabel" for="choseFileButton">${profilePictureLabel}</label>
                    </div>
                </div>
                <div class="col-9">
                    <img id="filePreview" height="125px" width="125px" style="<c:if test="${dog.profilePicture} == null">display: none;</c:if>" src="${dog.profilePicture}"/>
                </div>
            </div>
            <div class="row form-group justify-content-end">
                <div class="col-auto" >
                    <button style="margin-bottom: 10px; margin-top:10px;" type="submit" class="btn btn-primary">Spara Nyhet</button>
                    <button style="margin-bottom: 10px; margin-top:10px;" type="button" class="btn btn-primary" id="deleteDogButton">Ta bort hund</button>
                </div>
            </div>
        </div>
    </form:form>
</div>

</body>
</html>
