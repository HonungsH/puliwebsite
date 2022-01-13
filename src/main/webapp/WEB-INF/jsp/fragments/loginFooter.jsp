<%@page pageEncoding="UTF-8" %>
<footer class="footer">
    <sec:authorize var="isAdmin" access="hasRole('ADMIN')"/>

    <br>
    ------------

    <c:choose>
        <c:when test="${isAdmin}">
            <div>Inloggad som admin</div>
            <div>
                <a href="${pageContext.request.contextPath}/logout">Logga ut</a>
            </div>
        </c:when>

        <c:otherwise>
            <div>
                <a href="${pageContext.request.contextPath}/login">Logga in som administratör</a>
            </div>
        </c:otherwise>
    </c:choose>
    <div class="row mt-5">
        <div class="col-sm-12 col-md-12">
            <div class="service-item">
                <img style="height: 30px" src="${pageContext.request.contextPath}/images/outline_pets.png" alt="">
                <h4 class="mt-3" style="color: black;">Systeminformation</h4>
                <p style="color:black;">Skapad av Hanne Heingård och Tobias Landelius. Vill du ha en egen hemsida till din kennel? Kontakta oss på hanneheingard@gmail.com. </p>
            </div>
        </div>
    </div>
</footer>