<%@page pageEncoding="UTF-8" %>

<%@ include file = "fragments/header.jsp" %>
<%@ include file = "fragments/navigation.jsp" %>

<body>
<jsp:include page="fragments/editableTextField.jsp" >
    <jsp:param name="textKey" value="mainText" />
</jsp:include>
</body>
</html>
