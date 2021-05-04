<div class="topnav" style="display:flex;justify-content: center; margin-top: 150px;">
    <sec:authorize var="isAdmin" access="hasRole('ADMIN')"/>

    <div><a class="active" href="${pageContext.request.contextPath}/">Hem</a></div>
    <div><a href="${pageContext.request.contextPath}/ourDogs">Våra Hundar</a></div>
    <c:if test="${isAdmin}">
        <div><a href="${pageContext.request.contextPath}/puppies">Valpar</a></div>
    </c:if>
    <div class="subnav">
        <button class="subnavbtn">Bildgalleri<i class="fa fa-caret-down"></i></button>
        <div class="subnav-content">
            <a href="#company">Tävlingar/Aktiviteter</a>
            <a href="#team">Hundar från kenneln</a>
            <a href="#careers">Året som gått</a>
        </div>
    </div>
    <div><a href="${pageContext.request.contextPath}/aboutPuli">Om Puli</a></div>
    <div><a href="${pageContext.request.contextPath}/about">Om Xaida'z Kennel</a></div>
    <div><a href="${pageContext.request.contextPath}/contact">Kontakt</a></div>
</div>