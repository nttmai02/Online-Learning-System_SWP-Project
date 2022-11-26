/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller.expert;

import DAO.QuizDBContext;
import Model.Page;
import Model.Quiz;
import Model.User;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.Time;
import java.util.ArrayList;

/**
 *
 * @author Mai
 */
@WebServlet(name = "QuizManagement", urlPatterns = {"/QuizManagement"})
public class QuizManagement extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet QuizManagement</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet QuizManagement at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
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
        ArrayList<Quiz> quizList = new QuizDBContext().getAllQuizs();
        request.setAttribute("quizList", quizList);

//        Search function
        String search = request.getParameter("search");

        if (search != null) {
            request.setAttribute("search", search);
            search = search.toLowerCase();
            for (int i = 0; i < quizList.size(); i++) {
                Quiz q = quizList.get(i);
                if (!(q.getName().toLowerCase().contains(search)) && !(q.getLevel().toLowerCase().contains(search))) {
                    quizList.remove(i);
                    i--;
                }
            }
        }
//        End

        //Level item
        String level = request.getParameter("level");
        if (level != null) {
            if (!level.equals("0")) {
                for (int i = 0; i < quizList.size(); i++) {
                    if (!quizList.get(i).getLevel().equalsIgnoreCase(level)) {
                        quizList.remove(i);
                        i--;
                    }
                }
            }

        } else {
            level = "0";
        }
        request.setAttribute("level", level);
        //End

//        if(level.em)
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
        Page page = new Page(nrpp, cp, quizList.size());
        page.process();
        request.setAttribute("page", page);
        //end paging

        request.getRequestDispatcher("view/expert/QuizManagement.jsp").forward(request, response);

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

        //Add quiz
        String name = request.getParameter("name");
        String level = request.getParameter("level");
        int hour = 0, minute = 0, second = 0;
        if (!request.getParameter("hour").equals("")) {
            hour = Integer.parseInt(request.getParameter("hour"));
        }
        if (!request.getParameter("hour").equals("")) {
            minute = Integer.parseInt(request.getParameter("minute"));
        }
        if (!request.getParameter("hour").equals("")) {
            second = Integer.parseInt(request.getParameter("second"));
        }
        Time duration = new Time(hour, minute, second);
        String type = request.getParameter("type");
        Quiz q = new Quiz(0, 0, name, level, type, duration, null, null, null);
        new QuizDBContext().addQuiz(q);
        response.sendRedirect("QuizManagement");

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
