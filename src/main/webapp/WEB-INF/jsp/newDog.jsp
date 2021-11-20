<%@ taglib prefix="j" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page pageEncoding="UTF-8" %>
<%@ include file="fragments/header.jsp" %>
<%@ include file="fragments/navigation.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/newDog.js"></script>

<body>
<h2 style="text-align: center;margin-bottom: 30px;">Lägg till hund</h2>
<div class="container">
    <p style="color:red">* = obligatorisk</p>
<%--@elvariable id="dog" type="puli.xaidaz.jpa.entity.Dog"--%>
<form:form method="POST" action="/hundar/sparaHund" modelAttribute="dog" enctype="multipart/form-data">
    <input type="hidden" name="id" id="id" value="${dog.id}">
    <input type="hidden" name="createdAt" id="createdAt" value="${dog.createdAt}">

    <div class="form-group">
        <label class="required" for="dogName">Hundens tilltalsnamn:</label>
        <form:errors class="errorMessage alert" path="name"/>
        <input type="text" name="name" class="form-control" id="dogName" placeholder="" value="${dog.name}">
    </div>
    <div class="form-group">
        <label class="required" for="breedingName">Hundens uppfödarnamn:</label>
        <form:errors class="errorMessage alert" path="breedingName"/>
        <input type="text" name="breedingName" class="form-control" id="breedingName" value="${dog.breedingName}" placeholder="">
    </div>
    <div class="form-group">
        <label class="required" for="colour">Hundens färg:</label>
        <form:errors class="errorMessage alert" path="colour"/>
        <input type="text" name="colour" class="form-control" id="colour" value="${dog.colour}" placeholder="">
    </div>
    <div class="form-group">
        <label for="birthYear" class="required">Hundens födelsedatum:</label>
        <form:errors class="errorMessage alert" path="dateOfBirth"/>
        <input type="date" name="dateOfBirth" class="form-control" id="birthYear" value="${dog.dateOfBirth}">
    </div>
    <div class="form-group">
        <label class="" for="dogOwner">Ägare:</label>
        <input type="text" name="owner" class="form-control" id="dogOwner" value="${dog.owner}" placeholder="">
    </div>
    <div class="form-group">
        <label for="dogDescription">Presentation av Hunden</label>
        <textarea class="form-control" name="description" aria-describedby="descriptionHelp" id="dogDescription" rows="3">${dog.description}</textarea>
        <small id="descriptionHelp" class="form-text text-muted">Beskriv Hunden!</small>
    </div>
    <div class="form-group">
        <label class="" for="skkLink">Länk till Hunden i SKK:</label>
        <input type="text" class="form-control" id="skkLink" name="linkToSkk" value="${dog.linkToSkk}" placeholder="">
    </div>
    <div class="form-group">
        <label for="breedingHistory">Beskrivning av Hundens avelshistorik/avkommor</label>
        <textarea class="form-control" name="breedingHistory" aria-describedby="breedingHistoryHelp" id="breedingHistory" rows="3">${dog.breedingHistory}</textarea>
        <small id="breedingHistoryHelp" class="form-text text-muted">Skriv något intressant om Hundens avelshistorik!</small>
    </div>
    <div class="container">
        <div class="row form-group">
            <div class="col-sm">
                <label class="form-label newLineLabel" for="profilePic" aria-describedby="pictureHelp">Ladda upp Profilbild</label>
                <small id="pictureHelp" class="form-text text-muted">Profilbilden visas på "Våra Hundar"-sidan</small>

                <input type="file" name="profilePictureFile" id="profilePic" onchange="loadFile(event)" style="display:none;" value="${dog.profilePicture}"/>
                <div>
                    <button id="choseFileButton" type="button" class="btn btn-primary" >Bläddra filer</button>
                    <label id="choseFileLabel" for="choseFileButton">${profilePictureLabel}</label>
                </div>
            </div>
            <div class="col-9">
                <img id="filePreview" height="125px" width="125px" style="<c:if test="${dog.profilePicture} == null">display: none;</c:if>" src="${dog.profilePicture}"/>
            </div>
        </div>
        <div class="row form-group justify-content-end">
            <div class="col-auto" >
                <button style="margin-bottom: 10px; margin-top:10px;" type="submit" class="btn btn-primary">Spara Hund</button>
                <c:if test="${dog.id != null}">
                    <button style="margin-bottom: 10px; margin-top:10px;" type="button" class="btn btn-primary" id="deleteDogButton">Ta bort hund</button>
                </c:if>
            </div>
        </div>
    </div>
</form:form>
</div>
</body>
</html>