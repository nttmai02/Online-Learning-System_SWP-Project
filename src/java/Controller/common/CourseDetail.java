/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package Controller.common;

import DAO.CourseDBContext;
import DAO.PricePackageDBContext;
import Model.Course;
import Model.PricePackage;
import Model.Register;
import Model.Topic;
import Model.User;
import Utility.Method;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import org.apache.jasper.tagplugins.jstl.core.ForEach;


/**
 *
 * @author ADMIN
 */
@WebServlet(name="CourseDetail", urlPatterns={"/coursedetail"})
public class CourseDetail extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        int courseId = Integer.parseInt(request.getParameter("id"));
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("user");
        
        //course
        CourseDBContext db = new CourseDBContext();
        Course c = db.getCourse(courseId);
        int lessons = 0;
        for(Topic t : c.getTopics()){
            lessons += t.getLessons().size();
        }
        //register => enroll or study
        
        String validTo = "";
        Register r = null;
        if(user != null) {
            r = new CourseDBContext().getRegister(courseId, user.getId());
            if(r != null) {
                validTo = new SimpleDateFormat("dd/MM/yyyy").format(r.getValidTo());
            }
        }
        boolean isEnrolled = false;
        //if time valid
        if(r != null && user != null && Method.getTimeNow().before(r.getValidTo())) {
            isEnrolled = true;
        }
        request.setAttribute("validTo", validTo);
        request.setAttribute("c", c);
        request.setAttribute("lessons", lessons);
        request.setAttribute("isEnrolled", isEnrolled);
        request.getRequestDispatcher("/view/common/courseDetail.jsp").forward(request, response);
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
