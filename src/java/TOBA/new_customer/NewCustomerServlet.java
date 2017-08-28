package TOBA.new_customer;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import TOBA.user.User;

/**
 *
 * @author Benjamin
 */
public class NewCustomerServlet extends HttpServlet {
    
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
        
        String url = "/new_customer.jsp";
        
        String action = request.getParameter("action");
        
        if (action == null) {
            action = "login";
        }
        
        if (action.equals("login")) {
            url = "/login.html";
        }
        else if (action.equals("sign_up")) {
            
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String phone = request.getParameter("phone");
            String address = request.getParameter("address");
            String city = request.getParameter("city");
            String state = request.getParameter("state");
            String zipcode = request.getParameter("zipcode");
            String email = request.getParameter("email");
            
            User user = new User(firstName, lastName, phone, address, city, state,
                zipcode, email);
            
            String message;
            
            if (firstName == null || lastName == null || phone == null ||
                    address == null || city == null || state == null ||
                    zipcode == null || email == null || firstName.isEmpty() ||
                    lastName.isEmpty() || phone.isEmpty() || address.isEmpty()
                    || city.isEmpty() || state.isEmpty() || zipcode.isEmpty() ||
                    email.isEmpty()) {
                
                message = "Please fill out all of the form fields";
                url = "/new_customer.jsp";
            }
            else {
                message = "";
                url = "/success.html";
            }
            request.setAttribute("user", user);
            request.setAttribute("message", message);
               
        }
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }

}