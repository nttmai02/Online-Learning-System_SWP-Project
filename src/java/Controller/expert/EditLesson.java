/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller.expert;

import DAO.CourseDBContext;
import DAO.LessonDBContext;
import Model.Lesson;
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
@WebServlet(name = "EditLesson", urlPatterns = {"/editLesson"})
public class EditLesson extends HttpServlet {

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

//        LessonDBContext l = new LessonDBContext();
//        Lesson le = l.getLessons(topicId, lessonId);
//        request.setAttribute("lesson", le);
//
//        CourseDBContext c = new CourseDBContext();
//        String courseId = c.getCourseIdByTopicId(topicId);
//        request.setAttribute("courseId", courseId);
//
//        request.getRequestDispatcher("view/expert/EditLesson.jsp").forward(request, response);
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
        String topicId = request.getParameter("topicId");
        String lessonId = request.getParameter("lessonId");
        request.setAttribute("topicId", topicId);
        request.setAttribute("lessonId", lessonId);
         LessonDBContext l = new LessonDBContext();
        Lesson le = l.getLessons(topicId, lessonId);
        request.setAttribute("lesson", le);

        CourseDBContext c = new CourseDBContext();
        String courseId = c.getCourseIdByTopicId(topicId);
        request.setAttribute("courseId", courseId);
        request.getRequestDispatcher("view/expert/EditLesson.jsp").forward(request, response);
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
//        processRequest(request, response);
        String topicId = request.getParameter("topicId");
        String lessonId = request.getParameter("lessonId");
        String name = request.getParameter("lesson_name");
        String vid = request.getParameter("lesson_vid");
        String des = request.getParameter("lesson_des");
        String status = request.getParameter("lesson_status");
        CourseDBContext c = new CourseDBContext();
        String courseId = c.getCourseIdByTopicId(topicId);
        LessonDBContext ld = new LessonDBContext();
        ld.updateLesson(name, vid, des, status, lessonId, topicId);          
        response.getWriter().print(topicId);
        response.getWriter().print(lessonId);
        request.setAttribute("courseId", courseId);
        response.sendRedirect("CourseContentManagement?courseId="+courseId);
         
//        response.getWriter().print(courseId);
      
//        if (ld.updateLesson(name, vid, des, status, lessonId, topicId)) {
//            request.getRequestDispatcher("view/expert/AddLessonToQuiz.jsp").forward(request, response);
//
//        } else {
//            request.getRequestDispatcher("view/expert/CourseContentManagement.jsp").forward(request, response);
//
//        }
//        request.getRequestDispatcher("view/expert/CourseContentManagement.jsp").forward(request, response);

//        response.getWriter().print(topicId);
//        response.getWriter().print(lessonId);
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
