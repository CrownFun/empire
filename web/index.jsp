<%-- 
    Document   : index
    Created on : 2018-08-02, 17:26:30
    Author     : Grzegorz Filewicz
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" type="text/css" rel="stylesheet">
        <link href="resources/css/styles.css" type="text/css" rel="stylesheet">
      
      
        <title>Empire - gra przeglądarkowa</title>
    </head>
    <body>
        
            <jsp:include page="fragments/navbar.jspf" />
            
        <blockquote>
            <p>Na wojnie wygrywa ten kto popełnia najmniej błędów</p>
            <p>Napoleon Bonaparte</p>
        </blockquote>

           

        <div class="container">
            <div class="col-sm-6 col-md-4 col-md-offset-4">
                <form class="form-signin" action="loginHandler" method="post">
                    <h2 class="form-signin-heading">Zaloguj się</h2>
                    <input name="login" value="<c:if test="${not empty name}"><c:out value="${name}"/></c:if>" type="text" class="form-control" placeholder="Nazwa uzytkownika" required autofocus>
                        <input name="pass" type="password" class="form-control" placeholder="Hasło" required>
                        <button class="btn btn-lg btn-primary btn-block" type="submit">Zaloguj</button>
                        <a href="registration.jsp">Zarejestruj się - załóż darmowe konto!</a>
                    </form>
                </div>
            </div>     

            <br /><br />

        <c:if test="${not empty alert}">
            <div class="alert alert-danger" role="alert">
                <c:out value="${alert}"/> 
            </div><br />
        </c:if><br />



  <jsp:include page="fragments/footer.jspf" />
  
        <script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
        <script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
        <script src="resources/js/bootstrap.js"></script>
    </body>
</html>
