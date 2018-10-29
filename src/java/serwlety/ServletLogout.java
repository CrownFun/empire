
package serwlety;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ServletLogout extends HttpServlet {

 
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        if (request.getSession(false) != null) {
            request.getSession().invalidate();
            request.getRequestDispatcher("logout.jsp").forward(request, response);
            System.out.println("Session invalidate");
        } else {
            System.out.println("Session not found");
        }
    }

        @Override
        protected void doGet
        (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            processRequest(request, response);
        }

    
        @Override
        protected void doPost
        (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            processRequest(request, response);
        }

        @Override
        public String getServletInfo
        
            () {
        return "Short description";
        }// </editor-fold>

    }
