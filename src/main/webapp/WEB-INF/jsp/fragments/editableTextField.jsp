<!DOCTYPE html>
<%@page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<sec:authorize var="isAdmin" access="hasRole('ADMIN')"/>

<div>
    <div class="editableBox">
        <input id="pageGroup" name="pageGroup" type="hidden" value="${pageGroup}"/>
        <input id="textKey" name="textKey" type="hidden" value="${param.textKey}"/>
        <c:set var="textPath" value="${param.textKey}" />
        <p class="editableField">${textMap[textPath]}</p>

        <c:if test="${isAdmin}">
            <img class="editIcon" src="${pageContext.request.contextPath}/images/edit_icon2.png" alt="sad">
            <img class="submitIcon" src="${pageContext.request.contextPath}/images/submit_icon.png" alt="sad" style="display: none;">
        </c:if>

    </div>
</div>