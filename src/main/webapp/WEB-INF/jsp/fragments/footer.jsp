<%@page pageEncoding="UTF-8" %>
<footer class="footer">
    Gjord av: DoubleSkat@gmail.com
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
</footer>