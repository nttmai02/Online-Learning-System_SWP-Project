/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package Controller.customer;

import DAO.CourseDBContext;
import DAO.QuizDBContext;
import DAO.User_QuizDBContext;
import Model.Course;
import Model.Quiz;
import Model.Topic;
import Model.User;
import Model.User_Quiz;
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
 * @author ADMIN
 */
@WebServlet(name="LearnCourseServlet", urlPatterns={"/learncourse"})
public class LearnCourseServlet extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        int courseId = Integer.parseInt(request.getParameter("courseId"));
        CourseDBContext db = new CourseDBContext();
        Course c = db.getCourse(courseId);
        int lessons = 0;
        ArrayList<User_Quiz> userQuizs = new ArrayList<>();
        for(Topic t : c.getTopics()){
            lessons += t.getLessons().size();
            for(Quiz q : t.getQuizs()) {
                User_QuizDBContext db1 = new User_QuizDBContext();
                if(db1.getUserQuiz(user.getId(), q.getId()) != null)
                    userQuizs.add(db1.getUserQuiz(user.getId(), q.getId()));
                else {
                    User_Quiz userQuiz = new User_Quiz();
                    userQuiz.setQuiz(new QuizDBContext().getQuizById(q.getId()));
                    userQuizs.add(userQuiz);
                    userQuiz.setGrade(-1);
                }
            }
        }
        request.setAttribute("lessons", lessons);
        request.setAttribute("userQuizs", userQuizs);
        request.setAttribute("c", c);
        request.getRequestDispatcher("view/customer/learnCourse.jsp").forward(request, response);
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
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
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
