
package serwlety;

import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logic.Rejestracja;


public class RegistrationServlet extends HttpServlet {



    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException, SQLException {
        response.setContentType("text/html;charset=UTF-8");

        String nickname = request.getParameter("nick");
        String email = request.getParameter("email");
        String pass = request.getParameter("pass");
        String pass2 = request.getParameter("pass2");
        String alert;

        HttpSession session = request.getSession();
        session.setAttribute("nick", nickname);
        session.setAttribute("mail", email);

        if (!pass.equals(pass2)) {
            alert = "Hasła różnią się od siebie!!";
            backToRegistration(request, alert, response);
        } else if (Rejestracja.emailValidation(email) == false) {
            alert = "Istnieje użytkownik o podanym adresie email!!";
            backToRegistration(request, alert, response);
        } else if (Rejestracja.nicknameValidation(nickname) == false) {
            alert = "Istnieje użytkonik o podanej nazwie!!";
            backToRegistration(request, alert, response);
        } else if (Rejestracja.passCorrect(pass) == false) {
            alert = "Hasło musi zawierać od 8 do 20 znaków!!";
            backToRegistration(request, alert, response);

        } else {

            try {
                Rejestracja.zarejestruj(nickname, pass, email);
                request.getRequestDispatcher("registrationSucces.jsp").forward(request, response);
            } catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
                request.getRequestDispatcher("error.jsp").forward(request, response);
            }

        }
    }

    private void backToRegistration(HttpServletRequest request, String alert, HttpServletResponse response) throws IOException, ServletException {
        request.setAttribute("alert", alert);
        request.getRequestDispatcher("registration.jsp").include(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(RegistrationServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
