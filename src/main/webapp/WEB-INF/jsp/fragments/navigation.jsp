<%@page pageEncoding="UTF-8" %>
<div class="topnav" style="display:flex;justify-content: center; margin-top: 5rem">
    <sec:authorize var="isAdmin" access="hasRole('ADMIN')"/>

    <div><a class="${pageURI.endsWith('/') ? 'active' : ''}" href="${pageContext.request.contextPath}/">Hem</a></div>
    <div><a class="${pageURI.endsWith('/nyheter') ? 'active' : ''}" href="${pageContext.request.contextPath}/nyheter">Nyheter</a></div>
    <div><a class="${pageURI.endsWith('/hundar') ? 'active' : ''}" href="${pageContext.request.contextPath}/hundar">Våra Hundar</a></div>
    <div><a class="${pageURI.endsWith('/bilder') ? 'active' : ''}" href="${pageContext.request.contextPath}/bilder">Bildgalleri</a></div>
    <div><a class="${pageURI.endsWith('/omPuli') ? 'active' : ''}" href="${pageContext.request.contextPath}/omPuli">Om Puli</a></div>
    <div><a class="${pageURI.endsWith('/kontakt') ? 'active' : ''}" href="${pageContext.request.contextPath}/kontakt">Kontakt</a></div>

</div>