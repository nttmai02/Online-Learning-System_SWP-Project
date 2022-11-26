/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller.common;

import DAO.UserDBContext;
import Model.Role;
import Model.User;
import Utility.SHA;
import Utility.SendEmail;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author my do
 */
@WebServlet(name = "SignupServlet", urlPatterns = {"/signup"})
public class SignupServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.getRequestDispatcher("/view/common/signup.jsp").forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
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
        processRequest(request, response);
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
        //processRequest(request, response);
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String pass = request.getParameter("pass");
        String re_pass = request.getParameter("re-pass");
        String gender = request.getParameter("gender");

        if (!(pass.equals(re_pass))) {
            request.setAttribute("err", "Re-password is not correct");
            request.getRequestDispatcher("/view/common/signup.jsp").forward(request, response);

        } else {
            UserDBContext dao = new UserDBContext();
            if (!dao.getEmail(email)) {
                //if mail not existed -> verify email
                SendEmail se = new SendEmail();
                String code = se.sendEmail(email);
                //boolean isSend = se.sendEmail(email);
                if (code != null) {
                    //temp session
                    HttpSession session = request.getSession();
                    session.setAttribute("code", code);
                    User user = new User();
                    user.setEmail(email);
                    user.setFullName(name);
                    user.setPhone(phone);
                    user.setPhone(phone);
                    try {
                        user.setPassWord(SHA.getSHAPassword(pass));
                    } catch (NoSuchAlgorithmException ex) {
                        Logger.getLogger(SignupServlet.class.getName()).log(Level.SEVERE, null, ex);
                    }
                    if (gender.equals(1)) {
                        user.setGender(true);
                    } else {
                        user.setGender(false);

                    }
                    Role r = new Role(1);
                    user.setRole(r);
                    session.setAttribute("user", user);
                    session.setMaxInactiveInterval(5 * 60);
                    session.setMaxInactiveInterval(5 * 60);

                    request.setAttribute("isSuccess", false);
                    request.setAttribute("register", true);
                    request.getRequestDispatcher("/view/common/verify.jsp").forward(request, response);
                } else {
                    request.getRequestDispatcher("home").forward(request, response);

                }
            } else {
                request.setAttribute("err", "Email existed!");
                request.getRequestDispatcher("/view/common/signup.jsp").forward(request, response);
            }
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
