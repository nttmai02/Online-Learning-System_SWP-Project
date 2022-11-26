/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller.common;

import DAO.BlogDBContext;
import DAO.CategoryDBContext;
import DAO.CourseDBContext;
import DAO.TopicDBContext;
import Model.Blog;
import Model.Category;
import Model.Course;
import Model.Page;
import Model.User;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;

/**
 *
 * @author Dell 5510
 */
@WebServlet(name = "MyCourse", urlPatterns = {"/mycourse"})
public class MyCourse extends HttpServlet {

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
        HttpSession ses = request.getSession();
        User u = (User) ses.getAttribute("user");
        if (u == null) {
            response.sendRedirect("login");
            return;
        }
        
        CourseDBContext dao = new CourseDBContext();
        Cookie[] cookie = request.getCookies();
        String id = ses.getAttribute("idU").toString();
//        for (int i = 0; i < cookie.length; i++) {
//            String name = cookie[i].getName();
//            if (name.equals("ID")) {
//                String id = cookie[i].getValue();
        List<Course> list = dao.getAllCourseByUserID(id);
        request.setAttribute("listC", list);
        String cid = request.getParameter("CateId");
        CategoryDBContext cate = new CategoryDBContext();
        TopicDBContext dao1 = new TopicDBContext();
        BlogDBContext dao2 = new BlogDBContext();
        List<Blog> listb = dao2.getTop6Blog();
        List<Category> listCa = cate.getAllCategory();
        List<Course> listCourseByCate = dao.getAllCourseByCateIDandUserID(cid, id);
        if (cid == null) {
            request.setAttribute("listC", list);
            int nrpp = 10;
            int cp = 1;
            if (request.getParameter("cp") != null) {
                try {
                    cp = Integer.parseInt(request.getParameter("cp"));
                } catch (Exception e) {
                    System.out.println(e);
                }
            }
            Page page = new Page(nrpp, cp, list.size());
            page.process();
            request.setAttribute("page", page);
        } else {
            request.setAttribute("listC", listCourseByCate);
            int nrpp = 10;
            int cp = 1;
            if (request.getParameter("cp") != null) {
                try {
                    cp = Integer.parseInt(request.getParameter("cp"));
                } catch (Exception e) {
                    System.out.println(e);
                }
            }
            Page page = new Page(nrpp, cp, listCourseByCate.size());
            page.process();
            request.setAttribute("page", page);
        }
        HashMap<Course, Integer> listH = dao1.CountTopic();
        request.setAttribute("listB", listb);
        request.setAttribute("listH", listH);
        request.setAttribute("listCa", listCa);
//            }
//        }

        request.getRequestDispatcher("/view/common/MyCourse.jsp").forward(request, response);
        
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
        CourseDBContext dao = new CourseDBContext();
        TopicDBContext dao2 = new TopicDBContext();
        CategoryDBContext cate = new CategoryDBContext();
        BlogDBContext dao1 = new BlogDBContext();
        List<Blog> listb = dao1.getTop6Blog();
        List<Category> listCa = cate.getAllCategory();
        String txtSearch = request.getParameter("txt");
        List<Course> listC = dao.SearchByName(txtSearch);
        HashMap<Course, Integer> listH = dao2.CountTopic();
        request.setAttribute("listB", listb);
        request.setAttribute("listC", listC);
        request.setAttribute("listH", listH);
        request.setAttribute("txtS", txtSearch);
        request.setAttribute("listCa", listCa);
        request.getRequestDispatcher("/view/common/MyCourse.jsp").forward(request, response);
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
