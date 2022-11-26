/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller.admin;

import DAO.BlogDBContext;
import DAO.CategoryDBContext;
import DAO.CourseDBContext;
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
@WebServlet(name = "EditCourse", urlPatterns = {"/EditCourse"})
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
        maxFileSize = 1024 * 1024 * 10, // 10 MB
        maxRequestSize = 1024 * 1024 * 100 // 100 MB
)

public class EditCourse extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession ses = request.getSession();
        User u = (User) ses.getAttribute("user");
        request.setAttribute("user", u);
        CategoryDBContext context = new CategoryDBContext();
        List<Category> categoryList = context.getAllCategory();
        request.setAttribute("categoryList", categoryList);
        String courseId = request.getParameter("courseId");
        try {
            int id = Integer.parseInt(courseId);
            Course c = new CourseDBContext().getCourse(id);
            request.setAttribute("course", c);
            request.getRequestDispatcher("view/admin/EditCourse.jsp").forward(request, response);
        } catch (Exception e) {
            System.out.println(e);
            response.sendRedirect("CoursesManagement");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String test = request.getParameter("test");
        String id = request.getParameter("courseId");
        int courseId = Integer.parseInt(id);
        String name = request.getParameter("courseName");
        int categoryId = Integer.parseInt(request.getParameter("courseCategory"));
        Category category = new CategoryDBContext().getCategory(categoryId);

        //String filePath = "G:\\Work\\FPT\\PRJ_project\\OnlineLearningSystem\\web\\assets\\images\\courses";
        String filePath = "G:\\Work\\FPT\\PRJ_project\\OnlineLearningSystem\\web\\assets\\images\\courses\\";
        String fileName = null;
        try {
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
            } else {
                fileName = request.getParameter("image");
            }

        } catch (Exception e) {
            System.out.println("Loi luu anh" + e);
            fileName = request.getParameter("image");
        }

        String description = request.getParameter("courseDescription");
        boolean status = request.getParameter("courseStatus").equals("1") ? true : false;
        boolean featured = request.getParameter("courseFeatured").equals("1") ? true : false;
        Course course = new Course(courseId, name, description, fileName, status, featured, category);
        new CourseDBContext().editCourse(course);
        response.sendRedirect("CoursesManagement");
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
