
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" type="text/css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/css/styles.css" type="text/css" rel="stylesheet">
        <link href="resources/css/style.css" type="text/css" rel="stylesheet">
        <title>Zostałeś wylogowany</title>
        <style> </style>
    </head>
    <body>
        <jsp:include page="fragments/navbar.jspf" />
        <div class="logout">
            <p>Zostałeś wylogowany!</p>
            <a href="index.jsp">Strona Główna</a>
        </div>
        <jsp:include page="fragments/footer.jspf" />
        
        
        
    </body>
</html>
