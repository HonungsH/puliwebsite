<%@page pageEncoding="UTF-8" %>
<%@ include file = "fragments/header.jsp" %>
<%@ include file = "fragments/navigation.jsp" %>

<body>

<h2 style="text-align: center">Våra hundar</h2>
<div class="container">
    <c:forEach var="dog" items="${listOfDoges}">
        ${dog.name}
        ${dog.profilePicture}
    </c:forEach>

</div>
</body>

</html>
