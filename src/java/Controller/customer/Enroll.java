/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package Controller.customer;

import DAO.CourseDBContext;
import DAO.DBContext;
import DAO.PricePackageDBContext;
import Model.PricePackage;
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
import java.sql.Date;
import java.sql.Timestamp;
import java.time.Instant;

/**
 *
 * @author ADMIN
 */
@WebServlet(name="Enroll", urlPatterns={"/enroll"})
public class Enroll extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String isEnrolled = request.getParameter("isEnrolled");
        int courseId = Integer.parseInt(request.getParameter("courseId")); 
        if(isEnrolled != null && isEnrolled.equalsIgnoreCase("true")){
            request.getRequestDispatcher("learncourse").forward(request, response);
            return;
        }
        int pricePackageId = Integer.parseInt(request.getParameter("pricePackageId"));
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        CourseDBContext db = new CourseDBContext();
        PricePackageDBContext db2 = new PricePackageDBContext();
        PricePackage pp = db2.getPricePackage(pricePackageId);
        //register success
        if(db.registerCourse(courseId, user.getId(), Method.getTimeNow(), Method.addMonth(pp.getDuration()))) {
            request.getRequestDispatcher("learncourse").forward(request, response);
            return;
        }
        //fail
    } 

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    } 

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }
}
