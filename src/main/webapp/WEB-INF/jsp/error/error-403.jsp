<%@page pageEncoding="UTF-8" %>
<%@ include file="../fragments/header.jsp" %>

<body>
<div class="container">
    <div class="row" >
        <div class="col-12">
            <h1 style="margin-top: 100px">403 – Förbjudet: Åtkomst nekas...</h1>

            <a type="button" class="btn-main m-3" href="${pageContext.request.contextPath}/">Gå till startsidan</a>
            <a type="button" class="btn-main m-3" href="javascript:history.back()">Gå tillbaka</a>
        </div>
    </div>
</div>
</body>
</html>