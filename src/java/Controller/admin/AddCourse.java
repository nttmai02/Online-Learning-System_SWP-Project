/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package Controller.admin;

import DAO.*;
import Model.*;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.file.Paths;
import java.util.List;
/**
 *
 * @author Mai
 */
@WebServlet(name="AddCourse", urlPatterns={"/AddCourse"})
@MultipartConfig(
  fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
  maxFileSize = 1024 * 1024 * 10,      // 10 MB
  maxRequestSize = 1024 * 1024 * 100   // 100 MB
)

public class AddCourse extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AddCourse</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddCourse at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
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
//        processRequest(request, response);
        HttpSession ses = request.getSession();
        User u  = (User) ses.getAttribute("user");
        request.setAttribute("user", u);
        CategoryDBContext context = new CategoryDBContext();
        List<Category> categoryList = context.getAllCategory();
        request.setAttribute("categoryList", categoryList);
        request.getRequestDispatcher("view/admin/AddCourse.jsp").forward(request, response);
        
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
//        processRequest(request, response);
        String name = request.getParameter("courseName");
        int categoryId = Integer.parseInt(request.getParameter("courseCategory"));
        Category category = new CategoryDBContext().getCategory(categoryId);
        
        String filePath  = "G:\\Work\\FPT\\PRJ_project\\OnlineLearningSystem\\web\\assets\\images\\courses";
            String fileName = null;

        try{
            Part filePart = request.getPart("courseImage");
            if (filePart != null) {
                fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
            }
            if (fileName != null && fileName.length() != 0) {
                InputStream fileContent = filePart.getInputStream();
                File f = new File(filePath + fileName);
                OutputStream os = new FileOutputStream(f);
                byte[] buf = new byte[1024];
                int len;
                while ((len = fileContent.read(buf)) > 0) {
                    os.write(buf, 0, len);
                }
                os.close();
                fileContent.close();
            }
        }
        catch(Exception e) {
            System.out.println("Loi luu anh" +e);
        }

        
        String description = request.getParameter("courseDescription");
        boolean status = request.getParameter("courseStatus").equals("1")?true:false;
        boolean featured = request.getParameter("courseFeatured").equals("1")?true:false;
        Course course = new Course(0, name, description, fileName, status, featured, category);
        new CourseDBContext().addCourse(course);
        response.sendRedirect("CoursesManagement");
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
