<%@page pageEncoding="UTF-8" %>

<%@ include file="fragments/header.jsp" %>
<%@ include file="fragments/navigation.jsp" %>

<body>
<h2 style="text-align: center;margin-bottom: 30px;font-size:3rem;">Om Puli</h2>
<div class="container">
    <div class="row">
        <div class="col-6">
            <div class="row mt-3">
                <div class="col">
                    <h4>
                        Allmänt
                    </h4>
                    <jsp:include page="fragments/editableTextField.jsp" >
                        <jsp:param name="textKey" value="general" />
                    </jsp:include>
                    <div>

                    </div>
                    <hr class="my-4">
                </div>
            </div>
            <div class="row mt-3">
                <div class="col">
                    <h4>
                        Storlek och utseende
                    </h4>
                    <jsp:include page="fragments/editableTextField.jsp" >
                        <jsp:param name="textKey" value="sizeAndLook" />
                    </jsp:include>
                    <div>

                    </div>
                    <hr class="my-4">
                </div>
            </div>
            <div class="row mt-3">
                <div class="col">
                    <h4>
                        Pälsvård
                    </h4>
                    <jsp:include page="fragments/editableTextField.jsp" >
                        <jsp:param name="textKey" value="fur" />
                    </jsp:include>
                </div>
            </div>
            <div class="row mt-3">
                <div class="col">
                    <img class="img-responsive" id="bild2" style="max-width: 100%; margin-top: 50px;" src="<c:url value="/images/dogs/4_dogs.jpg"/>"/>
                </div>
            </div>
        </div>
        <div class="col-6 col-md-6 col-sm-3 col-xs-3">
            <div class="row mt-3">
                <div class="col">
                    <img id="bild1" style="margin-bottom: 50px;margin-top: 45px; max-width: 100%" src="<c:url value="/images/dogs/agility_dog.jpg"/>"/>
                </div>
            </div>
            <div class="row mt-3">
                <div class="col">
                    <h4>
                        Hälsa
                    </h4>
                    <jsp:include page="fragments/editableTextField.jsp" >
                        <jsp:param name="textKey" value="health" />
                    </jsp:include>
                    <hr class="my-4">
                </div>
            </div>
            <div class="row mt-3">
                <div class="col">
                    <h4>
                        Mentalitet
                    </h4>
                    <jsp:include page="fragments/editableTextField.jsp" >
                        <jsp:param name="textKey" value="mentality" />
                    </jsp:include>
                    <hr class="my-4">
                </div>
            </div>
            <div class="row mt-3">
                <div class="col">
                    <h4>
                        Övrigt
                    </h4>
                    <jsp:include page="fragments/editableTextField.jsp" >
                        <jsp:param name="textKey" value="other" />
                    </jsp:include>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
<%@ include file="fragments/footer.jsp" %>
</html>
