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
@WebServlet(name = "ChangePasswordServlet", urlPatterns = {"/changePass"})
public class ChangePasswordServlet extends HttpServlet {

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
        request.getRequestDispatcher("/view/common/changePassword.jsp").forward(request, response);

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
        String pass = request.getParameter("pass");
        String re_pass = request.getParameter("re-pass");
       
        
        HttpSession session = request.getSession();
        UserDBContext dao = new UserDBContext();

        String email = (String) session.getAttribute("email");

        if (pass.equals(re_pass)) {
            try {
                //l???y mail xong update l???i pass user c?? mail nh?? tr??n;
                String sha = SHA.getSHAPassword(pass);
                boolean updatePass = dao.updatePasswordByEmail(SHA.getSHAPassword(pass),email);
                if (updatePass) {
                    response.sendRedirect("login");
                    
                }
                //n???u update thanh cong thi hi???n - alert th??ng b??o: nh???n ok th?? quay l???i login
            } catch (NoSuchAlgorithmException ex) {
                Logger.getLogger(ChangePasswordServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        } else {
            request.setAttribute("err", "Re-password is not correct");
            request.getRequestDispatcher("/view/common/changePassword.jsp").forward(request, response);
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
