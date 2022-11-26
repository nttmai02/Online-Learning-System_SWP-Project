/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller.common;

import DAO.UserDBContext;
import Model.User;
import Utility.SHA;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.security.NoSuchAlgorithmException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author my do
 */
@WebServlet(name = "UpdatePass", urlPatterns = {"/updatepass"})
public class UpdatePass extends HttpServlet {

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
        request.getRequestDispatcher("view/common/changePassword.jsp").forward(request, response);

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
        String Opass = request.getParameter("Opass");
        String Npass = request.getParameter("Npass");
        String Rpass = request.getParameter("Rpass");
        HttpSession session = request.getSession();

        UserDBContext dao = new UserDBContext();
        User a = (User) session.getAttribute("user");
        String email = (String) session.getAttribute("email");
        Cookie cookie[] = request.getCookies();
        //
        String pass = "";
        if (cookie != null) {
            for (Cookie c : cookie) {
                if (c.getName().equals("Cpass")) {
                    pass = c.getValue();
                }
            }
        }
        //th ses null kh tim thay a.pass thì?
        if (a.getPassWord().equals(Opass)|| pass ==Opass) {
            if (Npass.equals(Rpass)) {
                try {
                    if (dao.updatePasswordByEmail(SHA.getSHAPassword(Rpass), a.getEmail())) {
                        a.setPassWord(Rpass);
                        request.setAttribute("noti", "Update password successfully");
                        request.getRequestDispatcher("view/common/changePassword.jsp").forward(request, response);
                        
                    }
                } catch (NoSuchAlgorithmException ex) {
                    Logger.getLogger(UpdatePass.class.getName()).log(Level.SEVERE, null, ex);
                }
            }

        } else {
            request.setAttribute("err", "Old password is not correct");
            request.getRequestDispatcher("view/common/changePassword.jsp").forward(request, response);
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
