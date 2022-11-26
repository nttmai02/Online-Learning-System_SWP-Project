/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller.admin;

import DAO.CourseDBContext;
import DAO.UserDBContext;
import Model.Course;
import Model.Page;
import Model.PricePackage;
import Model.User;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;

/**
 *
 * @author Mai
 */
@WebServlet(name = "ManagePricePackage", urlPatterns = {"/ManagePricePackage"})
public class ManagePricePackage extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet PricePackage</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet PricePackage at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
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
//        processRequest(request, response);
        HttpSession ses = request.getSession();
        User u = (User) ses.getAttribute("user");
        request.setAttribute("user", u);

        String courseId = request.getParameter("courseId");
//        try {
        int id = Integer.parseInt(courseId);
        Course c = new CourseDBContext().getCourse(id);
        request.setAttribute("courseId", courseId);
        ArrayList<PricePackage> pricePackages = c.getPricePackages();

//Search function
        String search = request.getParameter("search");
        if (search != null) {
            request.setAttribute("search", search);
            search = search.toLowerCase();
            for (int i = 0; i < pricePackages.size(); i++) {
                PricePackage p = pricePackages.get(i);
                if (!(p.getName().toLowerCase().contains(search))) {
                    pricePackages.remove(i);
                    i--;
                }
            }
        }
        //End

        request.setAttribute("pricePackages", pricePackages);

        //paging
        int nrpp = 10;
        int cp = 1;
        if (request.getParameter("cp") != null) {
            try {
                cp = Integer.parseInt(request.getParameter("cp"));
            } catch (Exception e) {
                System.out.println("Ex1: " + e);
            }
        }
        Page page = new Page(nrpp, cp, pricePackages.size());
        page.process();
        request.setAttribute("page", page);
        //end paging

        request.getRequestDispatcher("view/admin/PricePackage.jsp").forward(request, response);
//        } catch (Exception e) {
//            System.out.println("Ex2: " + e);
//            response.sendRedirect("CoursesManagement");
//        }
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
        processRequest(request, response);
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
