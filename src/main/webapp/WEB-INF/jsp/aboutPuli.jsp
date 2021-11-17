<%@page pageEncoding="UTF-8" %>

<%@ include file = "fragments/header.jsp" %>
<%@ include file = "fragments/navigation.jsp" %>

<body>

<div class="container">
    <div class="row col-6">
        <h2 style="font-size: 3rem">Om vår kennel</h2>
    </div>
    <div class="row">
        <div class="col-6">
            <jsp:include page="fragments/editableTextField.jsp" >
                <jsp:param name="textKey" value="mainText"/>
            </jsp:include>
        </div>

        <div class="col-6">
            <img id="aboutpuli" style="" src="<c:url value="/images/xaidazligan.png"/>"/>
        </div>
    </div>
</div>
</body>
</html>
