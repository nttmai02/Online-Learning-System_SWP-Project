
/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller.common;

import DAO.UserDBContext;
import Model.User;
import static Utility.SHA.getSHAPassword;
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
 * @author ADMIN
 */
@WebServlet(name = "LoginServlet", urlPatterns = {"/login"})
public class LoginServlet extends HttpServlet {

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
        Cookie cookie[] = request.getCookies();

        if (cookie != null) {
            for (Cookie c : cookie) {
                if (c.getName().equals("Cuser")) {
                    request.setAttribute("email", c.getValue());
                }
                if (c.getName().equals("Cpass")) {
                    request.setAttribute("pass", c.getValue());
                }
            }
        }

        request.getRequestDispatcher("view/common/login.jsp").forward(request, response);

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
        request.setCharacterEncoding("UTF-8");

        String u = request.getParameter("email");
        String p = request.getParameter("pass");
        String r = request.getParameter("rem");
        UserDBContext dao = new UserDBContext();
        User a = null;
        User b = null;
        try {
            a = dao.getUserAcc(u, getSHAPassword(p));
            b = dao.getUserAcc(u, p);
        } catch (NoSuchAlgorithmException ex) {
            //   Logger.getLogger(LoginControl.class.getName()).log(Level.SEVERE, null, ex);
        }
        if (a == null) {
            request.setAttribute("error", "Invalid username or password");
            request.getRequestDispatcher("view/common/login.jsp").forward(request, response);
        } else {
            HttpSession ses = request.getSession();

            if (a == null) {
                ses.setAttribute("user", b);
                String id = b.getId()+"";
                ses.setAttribute("idU", id);

            } else {
                ses.setAttribute("user", a);
                String id = a.getId()+"";
                 ses.setAttribute("idU", id);

            }

            Cookie uC = new Cookie("Cuser", u);
            Cookie pC = new Cookie("Cpass", p);
            if (r != null) {
                uC.setMaxAge(7 * 60);
                pC.setMaxAge(7 * 60);
            } else {
                uC.setMaxAge(0);
                pC.setMaxAge(0);
            }
            response.addCookie(uC);
            response.addCookie(pC);
            if(a.getRole().getId() == 1)
                response.sendRedirect("courseall");
            else if(a.getRole().getId() == 4)
                response.sendRedirect("CoursesManagement");
            else if(a.getRole().getId() == 3) 
                response.sendRedirect("ExpertCoursesManagement");
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
