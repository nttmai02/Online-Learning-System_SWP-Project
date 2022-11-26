/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller.admin;

import DAO.CourseDBContext;
import Model.*;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;

/**
 *
 * @author Mai
 */
@WebServlet(name = "CoursesManagement", urlPatterns = {"/CoursesManagement"})
public class CoursesManagement extends HttpServlet {

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
            out.println("<title>Servlet CourseManagement</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CourseManagement at " + request.getContextPath() + "</h1>");
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
        CourseDBContext context = new CourseDBContext();
        List<Course> courseList = context.loadAllCourse();

        //Search function
        String search = request.getParameter("search");
        if (search != null) {
            request.setAttribute("search", search);
            search = search.toLowerCase();
            for (int i = 0; i < courseList.size(); i++) {
                Course c = courseList.get(i);
                if (!(c.getName().toLowerCase().contains(search)) && !(c.getCategory().getName().toLowerCase().contains(search))) {
                    courseList.remove(i);
                    i--;
                }
            }
        }
        //End

        //Featured item
        if (request.getParameter("load") != null) {
            if (request.getParameter("load").equals("0")) {

                for (int i = 0; i < courseList.size(); i++) {
                    if (!courseList.get(i).isFeatured()) {
                        courseList.remove(i);
                        i--;
                    }
                }
                request.setAttribute("load", 0);

            } else {
                request.setAttribute("load", 1);
            }
        }
        //End

        request.setAttribute("courseList", courseList);

        //paging
        int nrpp = 10;
        int cp = 1;
        if (request.getParameter("cp") != null) {
            try {
                cp = Integer.parseInt(request.getParameter("cp"));
            } catch (Exception e) {
                System.out.println(e);
            }
        }
        Page page = new Page(nrpp, cp, courseList.size());
        page.process();
        request.setAttribute("page", page);
        //end paging

        request.getRequestDispatcher("view/admin/CoursesManagement.jsp").forward(request, response);

    }

}
