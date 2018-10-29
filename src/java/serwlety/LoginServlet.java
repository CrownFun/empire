package serwlety;

import model.User;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logic.Logowanie;



@WebServlet(name = "loginServlet", urlPatterns = {"/loginHandler"})
public class LoginServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException, SQLException {
        response.setContentType("text/html;charset=UTF-8");

        String login = request.getParameter("login");
        String password = request.getParameter("pass");

        HttpSession session = request.getSession(true);
        session.setAttribute("name", login);
        session.setAttribute("pass", password);
        String alert;
        String error;

        User user = null;

        try {
            user = Logowanie.zaloguj(login, password);
        } catch (ClassNotFoundException | SQLException e) {
            error = "Błąd bazy danych";
            request.setAttribute("error", error);
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }

        if (user != null) {

            session.setAttribute("player", user);
            request.getRequestDispatcher("gamePanel.jsp").forward(request, response);
        } else {
            alert = "Niepoprawny login lub hasło!!";
            request.setAttribute("alert", alert);
            request.getRequestDispatcher("index.jsp").include(request, response);
        }

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
