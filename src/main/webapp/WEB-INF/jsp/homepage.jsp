<%@page pageEncoding="UTF-8" %>
<%@ include file="fragments/header.jsp" %>
<%@ include file="fragments/navigation.jsp" %>

<body>


<%--<div class="row">
    <div class="col">
        <div class="bg-cover" style="background: #e9ecef">
            <div class="container" style="text-align: center">
                <h1 class="display-4 mt-2" style="text-transform: uppercase;">Välkommen!</h1>
                <p class="lead">Vår kennel har uppfödning av den ungerska rasen <strong>Puli</strong> i närheten av
                    Trelleborg, Skåne</p>
                <hr style="background: #e98074; width: 500px" class="my-4">
                <p style="font-size: 1.1rem;">Vår kennel vill ha sunda och friska hundar med bra temperament.<br>De ska vara rastypiska och bör ha
                    kvar sitt arv som vakt och vallhund.<br>Vi strävar efter att alla hundar som är i avel är
                    HD-röntgade med godkänt resultat och ska vara ögonlysta.<br> <br>
                    <strong>Puli är en fantastisk hund som blir din bästa vän!</strong><br> <br>
                <hr style="background: #e98074;  width: 500px" class="my-4">
                    Välkommen att höra av dig till oss vid frågor. </p>
                <a class="btn btn-primary btn-lg readMoreBtn" href="#" role="button">Läs mer om oss</a>
            </div>
            <!-- /.container   -->
        </div>
    </div>--%>


<!-- Slider Start -->
<section class="slider"
         style="background-image: linear-gradient(to bottom, rgba(255,255,255,0.1) 0%,rgba(255,255,255,0.1) 100%), url(images/dogs/jump_puli.jpg)">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="block">
                    <h1 class="animated fadeInUp">Välkommen!<br></h1>
                    <p class="animated fadeInUp">Vår kennel har uppfödning av den ungerska rasen <strong>Puli</strong> i
                        närheten av
                        Trelleborg, Skåne </br> </p>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Wrapper Start -->
<section class="about section">
    <div class="container">
        <div class="row" style="margin-top: 2rem">
            <div class="col-md-7">
                <div class="block">
                    <div class="section-title">
                        <h2>Om oss</h2>
                        <jsp:include page="fragments/editableTextField.jsp" >
                            <jsp:param name="textKey" value="aboutUs" />
                        </jsp:include>
                    </div>
                    <p class="broedtekst-frontpage">Puli är en fantastisk hund som blir din bästa vän!</p>
                    <hr style="background: #1d192c;  width: auto" class="my-4">
                    <p class="broedtekst-frontpage">Välkommen att höra av dig till oss vid frågor. </p>
                    <a href="${pageContext.request.contextPath}/kontakt" class="btn-main animated fadeInUp">Kontakta oss</a>
                </div>
            </div><!-- .col-md-7 close -->
            <div class="col-md-5">
                <div class="block">
                    <img src="/images/dogs/2_dogs_field.jpg" style="width: 100%" alt="Img">
                </div>
            </div><!-- .col-md-5 close -->
        </div>
    </div>
</section>

</body>
<%@ include file="fragments/footer.jsp" %>
</html>
