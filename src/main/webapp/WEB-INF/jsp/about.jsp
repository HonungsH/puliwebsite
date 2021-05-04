<!DOCTYPE html>
<html lang="en">
<%@ include file = "fragments/header.jsp" %>
<%@ include file = "fragments/navigation.jsp" %>

<body>
about

<c:forEach items="${dogs}" var="dog">
    ${dog.name}
    ${dog.dateOfBirth}
    in loop
</c:forEach>

</body>

</html>
