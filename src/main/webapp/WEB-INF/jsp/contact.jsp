<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page pageEncoding="UTF-8" %>

<%@ include file = "fragments/header.jsp" %>
<%@ include file = "fragments/navigation.jsp" %>

<body>
<div class="container">
    <div class="row">
        <div class="col-sm-6">
            <h4 class="h4-contact">Namn</h4>
            <jsp:include page="fragments/editableTextField.jsp" >
                <jsp:param name="textKey" value="name" />
            </jsp:include>
            <h4 class="h4-contact">Telefon</h4>
            <jsp:include page="fragments/editableTextField.jsp" >
                <jsp:param name="textKey" value="number" />
            </jsp:include>
            <h4 class="h4-contact">Adress</h4>
            <jsp:include page="fragments/editableTextField.jsp" >
                <jsp:param name="textKey" value="address" />
            </jsp:include>
            <h4 class="h4-contact">Email</h4>
            <jsp:include page="fragments/editableTextField.jsp" >
                <jsp:param name="textKey" value="email" />
            </jsp:include>

            <div class="row" style="margin-top: 15%">
                <div class="col-sm-auto">
                    <c:choose>
                        <c:when test="${isAndroid}">
                            <a href="fb://page/10159425855387982" target="_blank">
                                <img style="width: 70px; height: 70px" src="${pageContext.request.contextPath}/images/facebook_logo.png" alt="sad">
                            </a>
                        </c:when>
                        <c:when test="${isApple}">
                            Apple
                            <a href="fb://profile/10159425855387982" target="_blank">
                                <img style="width: 70px; height: 70px" src="${pageContext.request.contextPath}/images/facebook_logo.png" alt="sad">
                            </a>
                        </c:when>
                        <c:otherwise>
                            <a href="https://www.facebook.com/carina.karlssonxaidazpuli" target="_blank">
                                <img style="width: 70px; height: 70px" src="${pageContext.request.contextPath}/images/facebook_logo.png" alt="sad">
                            </a>
                        </c:otherwise>
                    </c:choose>
                </div>
            </div>
        </div>
        <div class="col-sm-6">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2763.4397403220305!2d13.15705560109049!3d55.452151993096514!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zNTXCsDI3JzA3LjgiTiAxM8KwMDknMzAuMSJF!5e1!3m2!1ssv!2sse!4v1620661819035!5m2!1ssv!2sse" style="border: 0;width: 100%; height: 400px" allowfullscreen=""></iframe>
        </div>
    </div>
</div>
</body>

<%@ include file = "fragments/loginFooter.jsp" %>
</html>
