<%@page pageEncoding="UTF-8" %>
<div class="topnav" style="display:flex;justify-content: center;">
    <sec:authorize var="isAdmin" access="hasRole('ADMIN')"/>

    <div><a class="${pageURI.endsWith('/') ? 'active' : ''}" href="${pageContext.request.contextPath}/">Hem</a></div>
    <div><a class="${pageURI.endsWith('/news') ? 'active' : ''}" href="${pageContext.request.contextPath}/news">Nyheter</a></div>
    <div><a class="${pageURI.endsWith('/hundar') ? 'active' : ''}" href="${pageContext.request.contextPath}/hundar">Våra Hundar</a></div>
    <div><a class="${pageURI.endsWith('/bilder') ? 'active' : ''}" href="${pageContext.request.contextPath}/bilder">Bildgalleri</a></div>
    <div><a class="${pageURI.endsWith('/aboutPuli') ? 'active' : ''}" href="${pageContext.request.contextPath}/aboutPuli">Om Puli</a></div>
    <div><a class="${pageURI.endsWith('/contact') ? 'active' : ''}" href="${pageContext.request.contextPath}/contact">Kontakt</a></div>

</div>