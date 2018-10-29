<%-- 
    Document   : registration
    Created on : 2018-08-04, 11:45:56
  
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" type="text/css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/css/styles.css" type="text/css" rel="stylesheet">

        <title>Rejestracja</title>
        <script src='https://www.google.com/recaptcha/api.js'></script>
    </head>
    <body>
        <jsp:include page="fragments/navbar.jspf" />
        <div class="container">
            <div class="col-sm-6 col-md-4 col-md-offset-4">
                <form class="form-signin" method="post" action="RegistrationServlet">
                    <h2 class="form-signin-heading">Zarejestruj się</h2>
                    <input name="email" value="<c:if test="${not empty mail}"><c:out value="${mail}"/></c:if>" type="email" class="form-control" placeholder="Email" required autofocus />
                    <input name="nick" value="<c:if test="${not empty nick}"><c:out value="${nick}"/></c:if>" type="text" class="form-control" placeholder="Nazwa użytkownika" required autofocus />
                        <input name="pass" type="password" class="form-control" placeholder="Hasło" required />
                        <input name="pass2" type="password" class="form-control" placeholder="Powtórz hasło" required /> <br />
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="defaultChecked2" required>
                            <label class="custom-control-label" for="defaultChecked2">Zaakceptuj <a href="regulamin.jsp">regulamin</a></label>
                        </div><br />
                        <div class="g-recaptcha" data-sitekey="6LessWoUAAAAAOuDtA6dTFl8_L1PARl8vGiADtq5"></div> <br />
                        <button class="btn btn-lg btn-primary btn-block" type="submit" >Zarejestruj</button>
                    </form>
                </div>
            </div>    

            <br /><br />
        <c:if test="${not empty alert}">
            <div class="alert alert-danger" role="alert">
                <c:out value="${alert}" />
            </div> 
        </c:if>
        <div style="width: 300px; margin-left: auto; margin-right: auto; text-align: center"> 
            <a href="index.jsp">Powrót do strony logowania</a>
        </div>

        <jsp:include page="fragments/footer.jspf" />

        <script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
        <script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
        <script src="resources/js/bootstrap.js"></script>
    </body>
</html>
