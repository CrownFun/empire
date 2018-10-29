
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" type="text/css" rel="stylesheet">
        <link href="resources/css/styles.css" type="text/css" rel="stylesheet">
        <title>Informacje o stronie</title>
    </head>
    <body>
        <jsp:include page="fragments/navbar.jspf" />


        <h2>Opis strony oraz użyte technologie</h2>
        <br>

        <p> Celem strony jest stoworzenie przeglądarkowej gry strategicznej czasu rzeczywistego, wzorującej się na popularnej grze <a href="https://www.plemiona.pl/">plemiona.pl</a></p><br>
        
        <p>Wykorzystane technologie :</p>

        <ul>
            <li> Java EE </li>
            <li> Server Apache Tomcat 9.0.6 </li>
            <li> Baza Danych - MySql & PhpMyAdmin </li>          
            <li> JspActions, Expession language, JSTL </li>
            <li> C3PO </li>
            <li> Bootstrap 3 </li>



        </ul>
        <br><br>


        <a href="gamePanel.jsp">Powrót</a> 

        <jsp:include page="fragments/footer.jspf" />

    </body>
</html>
