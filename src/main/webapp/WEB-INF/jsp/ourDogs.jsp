<%@ taglib prefix="j" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page pageEncoding="UTF-8" %>
<%@ include file="fragments/header.jsp" %>
<%@ include file="fragments/navigation.jsp" %>

<body>

<h2 style="text-align: center">Våra hundar</h2>
<div class="container">

    <c:forEach var="dog" items="${listOfDoges}" varStatus="i">
        <j:if test="${i.index % 3 == 0}">
            <j:set var="makeNewRowIndex" value="${i.index + 2}"/>
            <div class="row">
        </j:if>
        <div class="col">
                ${dog.name}
                ${i.index}
           <%-- <img id="${dog.name}" src="<c:url value="${dog.profilePicture}"/>"/>--%>
        </div>
        <j:if test="${i.index == makeNewRowIndex || i.index == listOfDoges.size() - 1}">
            </div>
        </j:if>
    </c:forEach>
</div>
</body>


<%--<g:each var="barn" in="${plejefamilie.boern}" status="index">

    <g:if test="${index % 3 == 0}">
        <g:set var="indexplusthree" value="${index + 2}"/> 0 + 2 = 2, 1 + 2 = 3, 2 + 2 = 4
        <div class="row lh-1">
    </g:if>

    <div class="col-4">
        <h3 class="h4 mt-3"><textmanager:message code="plejefamilie.detaljer.boern.barn" args="[index + 1]"/></h3>
        <g:render template="/templates/plejefamilie/detaljer/omplejefamilien/boern_oplysninger"
                  model="[barn: barn]"/>
    </div>

    <g:if test="${index == indexplusthree || index == plejefamilie.boern.size() - 1}">
        </div>
    </g:if>
</g:each>--%>

</html>