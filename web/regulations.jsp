<%-- 
    Document   : regulamin
    Created on : 2018-08-05, 18:57:51
  
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" type="text/css" rel="stylesheet">
        <link href="resources/css/styles.css" type="text/css" rel="stylesheet">
        <link href="resources/css/style.css" type="text/css" rel="stylesheet">
        <title>Regulamin</title>
    </head>
    <body>
        <jsp:include page="fragments/navbar.jspf" />

        <div class="reg">
            <p> Regulamin aplikacji .... i tak nikt, nigdy tego nie czyta</p>
        </div>
        <br />  <br />  <br />
        
        <div class="back"> 
            
            <a href="registration.jsp">Rejestracja</a> <br /><br />
            <a href="gamePanel.jsp">Powrót</a> 
        
        </div>



        <jsp:include page="fragments/footer.jspf" />

    </body>
</html>
