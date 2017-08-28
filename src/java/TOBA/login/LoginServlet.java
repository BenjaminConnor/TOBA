package TOBA.login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Benjamin
 */
public class LoginServlet extends HttpServlet {

    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String url = "/login.html";
        
        String action = request.getParameter("action");
        if (action == null) {
            action = "login";
        }
        
        if (action.equals("sign_up")) {
            url = "/new_customer.jsp";
        }
        else if (action.equals("login")) {
            String userName = request.getParameter("userName");
            String password = request.getParameter("password");
            
            if (userName == null || password == null || userName.isEmpty() ||
                    password.isEmpty() || !userName.equals("jsmith@toba.com")
                    || !password.equals("letmein")) {
                url = "/login_failure.html";
            }
            else {
                url = "/account_activity.html";
            }
                    
        }
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }

}