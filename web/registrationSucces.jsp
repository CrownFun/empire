<%-- 
    Document   : reqSucces
    Created on : 2018-08-04, 13:02:10
  
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" type="text/css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/css/styles.css" type="text/css" rel="stylesheet">
        <link href="resources/css/style.css" type="text/css" rel="stylesheet">
        <title>Pomyślna Rejestracja!</title>
    </head>
    <body>
        <jsp:include page="fragments/navbar.jspf" />

        <div class="success">
        <p>Rejestracja przebiegła pomyślnie! - Możesz się teraz zalogować</p>
        <a href="index.jsp">Powrót do strony głównej</a>
        ${reg}
        </div>>
        <jsp:include page="fragments/footer.jspf" />
    </body>
</html>
