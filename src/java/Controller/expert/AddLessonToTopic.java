/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller.expert;

import DAO.CourseDBContext;
import DAO.LessonDBContext;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author my do
 */
@WebServlet(name = "AddLessonToTopic", urlPatterns = {"/addLesson"})
public class AddLessonToTopic extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    String topicId = "";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        topicId = request.getParameter("topicId");
        CourseDBContext c = new CourseDBContext();
        String courseId = c.getCourseIdByTopicId(topicId);
        request.setAttribute("topicId", topicId);
        request.setAttribute("courseId", courseId);

        request.getRequestDispatcher("view/expert/AddLesson.jsp").forward(request, response);

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
        String name = request.getParameter("lesson_name");
        String vid = request.getParameter("lesson_vid");
        String des = request.getParameter("lesson_des");
        String status = request.getParameter("lesson_status");
        String topicId = request.getParameter("topicId");
        String courseId = request.getParameter("courseId");

        //select course by topicid
        LessonDBContext ld = new LessonDBContext();
        ld.addLesson(name, vid, des, status, topicId);
        request.setAttribute("courseId", courseId);
        request.getRequestDispatcher("view/expert/AddLesson.jsp").forward(request, response);
        //response.sendRedirect("ExpertCoursesManagement");
                
//        } else {
//            //request.getRequestDispatcher("view/expert/AddLesson.jsp").forward(request, response);
//
//        }

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
