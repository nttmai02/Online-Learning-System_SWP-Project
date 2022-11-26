package Controller.expert;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
//package Controller.admin;
import DAO.CourseDBContext;
import DAO.UserDBContext;
import Model.*;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;

/**
 *
 * @author Mai
 */
@WebServlet(name = "ExpertCoursesManagement", urlPatterns = {"/ExpertCoursesManagement"})
public class ExpertCoursesManagement extends HttpServlet {

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
//        processRequest(request, response);
        HttpSession ses = request.getSession();
        User u = (User) ses.getAttribute("user");
        request.setAttribute("user", u);
        CourseDBContext context = new CourseDBContext();
        UserDBContext Ucontext = new UserDBContext();
//        int userid = Ucontext.getUserId(u.getEmail());
        User a = Ucontext.getUser(u.getEmail());
        int userid = a.getId();
        request.setAttribute("userid", userid);
        request.setAttribute("email", u.getEmail());

        List<Course> courseList = context.loadCourseByExpert(userid);

        //Search function
        String search = request.getParameter("search");
        if (search != null) {
            for (int i = 0; i < courseList.size(); i++) {
                if (!courseList.get(i).getName().toLowerCase().contains(search.toLowerCase()) && !courseList.get(i).getCategory().getName().contains(search.toLowerCase())) {
                    courseList.remove(i);
                    i--;
                }
            }
            request.setAttribute("search", search);
        }
        //End

        //Featured item
        if (request.getParameter("load") != null) {
            if (request.getParameter("load").equals("0")) {

                for (int i = 0; i < courseList.size(); i++) {
                    if (!courseList.get(i).isFeatured()) {
                        courseList.remove(i);
                        i--;
                    }
                }
                request.setAttribute("load", 0);

            } else {
                request.setAttribute("load", 1);
            }
        }
        //End

        request.setAttribute("courseList", courseList);

        //paging
        int nrpp = 10;
        int cp = 1;
        if (request.getParameter("cp") != null) {
            try {
                cp = Integer.parseInt(request.getParameter("cp"));
            } catch (Exception e) {
                System.out.println(e);
            }
        }
        Page page = new Page(nrpp, cp, courseList.size());
        page.process();
        request.setAttribute("page", page);
        //end paging

        request.getRequestDispatcher("view/expert/ExpertCoursesManagement.jsp").forward(request, response);

    }

}
