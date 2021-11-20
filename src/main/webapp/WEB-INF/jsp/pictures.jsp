<%@page pageEncoding="UTF-8" %>
<%@ include file = "fragments/header.jsp" %>
<%@ include file = "fragments/navigation.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/pictures.js"></script>

<body>

<div class="container">
    <div class="row">
        <c:if test="${true}">
            <div class="row">
                <div class="col-1">
                    <a href="${pageContext.request.contextPath}/bilder/nyttAlbum" class="btn btn-secondary editDogButton">
                        Lägg till nytt album <i class="material-icons-round" style="font-size:30px;position: relative;top: 4px;">add_circle_outline</i>
                    </a>
                </div>
            </div>
        </c:if>
    </div>


</div>

</body>
</html>
