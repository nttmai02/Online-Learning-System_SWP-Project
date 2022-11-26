/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controller.admin;

import DAO.UserDBContext;
import Model.User;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.file.Paths;
import java.util.List;


/**
 *
 * @author Dell 5510
 */
@WebServlet(name = "AddUser", urlPatterns = {"/addusers"})
@MultipartConfig(fileSizeThreshold = 1024 * 1024, maxFileSize = 1024 * 1024 * 5, maxRequestSize = 1024 * 1024 * 5 * 5)
public class AddUser extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String filePath  = "G:\\Work\\FPT\\PRJ_project\\OnlineLearningSystem\\web\\assets\\images\\author\\";
            
        String fileName = null;

        try{
            Part filePart = req.getPart("image");
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
        String roId = req.getParameter("roleID");
        String username = req.getParameter("Fullname");
        String email = req.getParameter("Email");
        String pass = req.getParameter("pass");
        String gender = req.getParameter("inlineRadioOptions");
        String phone = req.getParameter("phone");

        boolean check = new UserDBContext().getEmail(email);
        if (!check) {
            if (gender.equals("1")) {
                check = true;
            }
            new UserDBContext().insertUser(email, pass, username, check, phone, fileName, roId);
           
        } else {
            req.setAttribute("message1", "Email existed");     

        }
         doGet(req, resp);
     

//        boolean checkUser ;
//        for (User o : userCheck) {
//            if (o.getEmail().equals(email)) {          
//                checkUser = false;
//            }
//            else{
//            checkUser=true;
//            }
//        }
//        if (checkUser = true) {
//            boolean check = false;
//            if (gender.equals("1")) {
//                check = true;
//            }
//            String phone = req.getParameter("phone");
//            u.insertUser(email, pass, username, check, phone, filename, roId);
//            doGet(req, resp);
//        } else {
//            req.setAttribute("message1", "Email existed");
//        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("view/admin/AddUser.jsp").forward(req, resp);
    }

    private String getFileName(Part part) {
        for (String content : part.getHeader("content-disposition").split(";")) {
            if (content.trim().startsWith("filename")) {
                return content.substring(content.indexOf("=") + 2, content.length() - 1);
            }
        }
        return "default.file";
    }

}
