<!DOCTYPE html>
<%@page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<sec:authorize var="isAdmin" access="hasRole('ADMIN')"/>

<div>
    <div class="editableBox">
        <input class="pageGroup" type="hidden" value="${pageGroup}"/>
        <input class="textKey" type="hidden" value="${param.textKey}"/>

        <c:set var="textPath" value="${param.textKey}" />
        <p class="editableField">${textMap[textPath]}</p>
        <input class="savedText" type="hidden" value="${textMap[textPath]}"/>

        <c:if test="${isAdmin}">
            <img class="editIcon" src="${pageContext.request.contextPath}/images/edit_icon2.png" alt="sad">
            <div class="submitOrCancelRow" style="display: none;">
                <i class='fas fa-exclamation-triangle' style="font-size:16px;color:#E85A4F;display: none;">Error occured here text skaaaaat </i>
                <button class="submitButton btn btn-primary btn-sm">Spara</button>
                <button class="cancelButton btn btn-primary btn-sm">Avbryt</button>
            </div>
        </c:if>

    </div>
</div>