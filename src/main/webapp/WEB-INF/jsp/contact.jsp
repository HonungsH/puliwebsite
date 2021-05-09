<%@page pageEncoding="UTF-8" %>

<%@ include file = "fragments/header.jsp" %>
<%@ include file = "fragments/navigation.jsp" %>

<body>
<div class="container">
    <div class="row">
        <div class="col-sm">
            <h4 class="h4-contact">Namn</h4>
            <p>${textMap.name}</p>
            <h4 class="h4-contact">Telefon</h4>
            <p>${textMap.number}</p>
            <h4 class="h4-contact">Adress</h4>
            <p>${textMap.address}</p>

            <div class="row" style="margin-top: 15%">
                <div class="col-sm-auto">
                    <a href="https://www.facebook.com/carina.karlssonxaidazpuli">
                        <img style="width: 120px; height: 120px" src="${pageContext.request.contextPath}/images/facebook_logo.png" alt="sad">
                    </a>
                </div>
                <div class="col-sm-auto">
                    <a href="mailto:xaidazpuli@gmail.com">
                        <img style="width: 70px; height: 70px" src="${pageContext.request.contextPath}/images/email-icon.png" alt="sad">
                    </a>
                </div>
            </div>

        </div>
        <div class="col-sm">
            <div>
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1380.24577620273!2d13.157718834779251!3d55.452181861807105!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zNTXCsDI3JzA3LjkiTiAxM8KwMDknMzAuMCJF!5e1!3m2!1sda!2sse!4v1620244243281!5m2!1sda!2sse" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
            </div>
        </div>
    </div>
</div>
</body>

<%@ include file = "fragments/footer.jsp" %>
</html>
