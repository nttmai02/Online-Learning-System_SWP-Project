/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller.common;

import DAO.UserDBContext;
import Model.User;
import java.io.IOException;
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

/**
 *
 * @author my do
 */
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024, 
        maxFileSize = 1024 * 1024 * 10, 
        maxRequestSize = 1024 * 1024 * 100)

@WebServlet(name = "ProfileServlet", urlPatterns = {"/profile"})
public class ProfileServlet extends HttpServlet {

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
        HttpSession ses = request.getSession();
        UserDBContext dao = new UserDBContext();

        User a = (User) ses.getAttribute("user");
        User s = dao.getUser(a.getEmail());

        request.setAttribute("acc", s);
        request.getRequestDispatcher("/view/common/profile.jsp").forward(request, response);

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
        //processRequest(request, response);
        String filePath  = "G:\\Work\\FPT\\PRJ_project\\OnlineLearningSystem\\web\\assets\\images\\author\\";
            
        String fileName = null;

        try{
            Part filePart = request.getPart("image");
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
                fileName = request.getParameter("imageOld");
            }
        }
        catch(Exception e) {
            System.out.println("Loi luu anh" +e);
        }
        HttpSession ses = request.getSession();
        User a = (User) ses.getAttribute("user");
        String email = request.getParameter("email");
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        String gender = request.getParameter("gender");
        UserDBContext dao = new UserDBContext();
        if (dao.updateUser(email, name, phone, gender, fileName)) {
            User s = dao.getUser(a.getEmail());
            request.setAttribute("acc", s);
            request.setAttribute("noti", "Update successfully!");
            response.sendRedirect("courseall");
        }
    }
}
