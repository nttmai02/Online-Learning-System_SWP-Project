/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller.common;

import DAO.UserDBContext;
import Model.User;
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
import sun.security.provider.SHA;

/**
 *
 * @author my do
 */
@WebServlet(name = "VerifyEmailServlet", urlPatterns = {"/verify"})
public class VerifyEmailServlet extends HttpServlet {

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
        request.getRequestDispatcher("/view/common/verify.jsp").forward(request, response);
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
        String verifyCode = request.getParameter("code");
        HttpSession session = request.getSession();
        String code = (String) session.getAttribute("code");
        String mess = "Xác minh thất bại. Vui lòng thử lại!";

        boolean isSuccess = false;
        //success
        if (verifyCode.trim().equals(code.trim())) {
            if (request.getParameter("forgetpassword").equals("true")) {
                request.getRequestDispatcher("/view/common/changePassword.jsp").forward(request, response);
                return;
            }
            User user = (User) session.getAttribute("user");
            UserDBContext dao = new UserDBContext();
            isSuccess = dao.createUser(user.getEmail(), user.getPassWord(), user.getFullName(), user.isGender(), user.getPhone());
            if (!isSuccess) {
                mess = "Có lỗi xảy ra vui lòng thử lại!";
            } else {
                //update user session
                session.setAttribute("user", user);
                request.getRequestDispatcher("home").forward(request, response);
            }

        } else {
            mess = "Có lỗi xảy ra vui lòng nhập lại mã xác minh!";

        }
        request.setAttribute("mess", mess);
        request.setAttribute("isSuccess", isSuccess);
        request.getRequestDispatcher("view/common/verify.jsp").forward(request, response);
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
