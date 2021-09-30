<%@ taglib prefix="j" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page pageEncoding="UTF-8" %>
<%@ include file="fragments/header.jsp" %>
<%@ include file="fragments/navigation.jsp" %>

<body>
<h2 style="text-align: center;margin-bottom: 30px;">Lägg till hund</h2>
<div class="container">
    <p style="color:red">* = obligatorisk</p>
<form:form method="POST" action="/hundar/sparaHund" modelAttribute="dog" enctype="multipart/form-data">
    <div class="form-group">
        <label class="required" for="dogName">Hundens namn:</label>
        <input type="text" name="name" class="form-control" id="dogName" placeholder="">
    </div>
    <div class="form-group">
        <label for="birthYear" class="required">Hundens födelsedatum:</label>
        <input type="date" name="dateOfBirth" class="form-control" id="birthYear">
    </div>
    <div class="form-group">
        <label class="" for="dogOwner">Ägare:</label>
        <input type="text" name="owner" class="form-control" id="dogOwner" placeholder="">
    </div>
    <div class="form-group">
        <label for="dogDescription">Presentation av Hunden</label>
        <textarea class="form-control" name="description" aria-describedby="descriptionHelp" id="dogDescription" rows="3"></textarea>
        <small id="descriptionHelp" class="form-text text-muted">Beskriv Hunden!</small>
    </div>
    <div class="form-group">
        <label class="" for="skkLink">Länk till Hunden i SKK:</label>
        <input type="text" class="form-control" id="skkLink" name="linkToSkk" placeholder="">
    </div>
    <div class="form-group">
        <label for="dogPedigree" class="newLineLabel">Ladda upp Stamtavla</label>
        <input type="file" class="" id="dogPedigree" name="dogPedigreeFile"/>
    </div>
    <div class="form-group">
        <label for="breedingHistory">Beskrivning av Hundens avelshistorik/avkommor</label>
        <textarea class="form-control" name="breedingHistory" aria-describedby="breedingHistoryHelp" id="breedingHistory" rows="3"></textarea>
        <small id="breedingHistoryHelp" class="form-text text-muted">Skriv något intressant om Hundens avelshistorik!</small>
    </div>
    <div class="form-group">
        <label class="form-label newLineLabel" for="profilePic" aria-describedby="pictureHelp">Ladda upp Profilbild</label>
        <small id="pictureHelp" class="form-text text-muted">Profilbilden visas på "Våra Hundar"-sidan</small>
        <input type="file" class="" name="profilePictureFile" id="profilePic" />
    </div>
<%--    <div class="form-group">
        <label class="" for="meritInput">Meritförteckning</label>
        <input type="text" class="form-control" id="meritInput" aria-describedby="" placeholder="">
    </div>
    <jsp:include page="fragments/valpkullar.jsp" >
        <jsp:param name="textKey" value="address" />
    </jsp:include>--%>

    <button style="margin-bottom: 10px; margin-top:10px;" type="submit" class="btn btn-primary">Spara Hund</button>
</form:form>
</div>
</body>

</html>