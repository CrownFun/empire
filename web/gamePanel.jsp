
<%@page import="model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html> 
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" type="text/css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/css/styles.css" type="text/css" rel="stylesheet">
        <link href="resources/css/style.css" type="text/css" rel="stylesheet">
        <title>Panel gracza</title>
    </head>


    <body>

        <jsp:include page="fragments/navbar.jspf" />


        <div class="article">

            <div class="info">

                <h3> Witaj ${player.login}</h3> 
                <b>E-mail</b>: ${player.email} <br /><b>Dni premium</b>: ${player.dniPremium} 
            </div>



            <div class ="resources"> 
                <h4>Zasoby</h4>
                <b>Złoto</b>: ${player.zloto} <br>
                <b>Żelazo</b>: ${player.zelazo} <br>
                <b>Drewno</b>: ${player.drewno} <br> <br>
                <h4>Wojsko</h4>
                <b>Rycerze:</b> ${player.rycerze}<br>
                <b>Łucznicy:</b> ${player.lucznicy} <br>
                <b>Machiny Wojenne:</b> ${player.machiny} <br>


            </div>

        </div>
        <div>
            <p style="width: 300px;margin: 0 auto;text-align: center;font-size: 22px"   >W budowie...</p>
        </div>
                <jsp:include page="fragments/footer.jspf" />

                <script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
                <script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
                <script src="resources/js/bootstrap.js"></script>

                </body>
                </html>
