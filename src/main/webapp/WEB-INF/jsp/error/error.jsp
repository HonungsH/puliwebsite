<%@page pageEncoding="UTF-8" %>
<%@ include file="../fragments/header.jsp" %>

<body>
<div class="container">
    <div class="row" >
        <div class="col-12">
            <h1 style="margin-top: 50px">Ett fel har uppstått...</h1>
            <h5>Felmeddelande: ${errorMessage}</h5>
            <a type="button" class="btn-main m-3" href="${pageContext.request.contextPath}/">Gå till startsidan</a>
        </div>
    </div>
</div>
</body>
</html>