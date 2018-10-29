<%-- 
    Document   : error
    Created on : 2018-08-02, 17:43:27
    Author     : Grzegorz Filewicz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" type="text/css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/css/styles.css" type="text/css" rel="stylesheet">
         <link href="resources/css/style.css" type="text/css" rel="stylesheet">
        <title>Błąd</title>
    </head>
    <body>
        <jsp:include page="fragments/navbar.jspf" />
        <div class="error">
            <p>Coś poszło nie tak - spróbuj ponownie poźniej</p>
            <p>${alert}</p> <br />
            <a href="index.jsp">Powrót do strony głównej</a>
        </div>
        <jsp:include page="fragments/footer.jspf" />
    </body>
</html>
