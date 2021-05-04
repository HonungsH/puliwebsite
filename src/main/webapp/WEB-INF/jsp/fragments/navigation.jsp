<div class="topnav" style="display:flex;justify-content: center;">
    <sec:authorize var="isAdmin" access="hasRole('ADMIN')"/>

    <div><a class="${pageURI.endsWith('/') ? 'active' : ''}" href="${pageContext.request.contextPath}/">Hem</a></div>

    <div><a class="${pageURI.endsWith('/ourDogs') ? 'active' : ''}" href="${pageContext.request.contextPath}/ourDogs">Våra Hundar</a></div>

    <c:if test="${isAdmin}">
        <div><a class="${pageURI.endsWith('/puppies') ? 'active' : ''}" href="${pageContext.request.contextPath}/puppies">Avelsplaner och valpkullar</a></div>
    </c:if>

    <div class="subnav">
        <button class="subnavbtn">Bildgalleri<i class="fa fa-caret-down"></i></button>
        <div class="subnav-content">
            <a href="#company">Tävlingar/Aktiviteter</a>
            <a href="#team">Hundar från kenneln</a>
            <a href="#careers">Året som gått</a>
        </div>
    </div>

    <div><a class="${pageURI.endsWith('/aboutPuli') ? 'active' : ''}" href="${pageContext.request.contextPath}/aboutPuli">Om Puli</a></div>

    <div><a class="${pageURI.endsWith('/about') ? 'active' : ''}" href="${pageContext.request.contextPath}/about">Om Xaida'z Kennel</a></div>

    <div><a class="${pageURI.endsWith('/contact') ? 'active' : ''}" href="${pageContext.request.contextPath}/contact">Kontakt</a></div>

</div>