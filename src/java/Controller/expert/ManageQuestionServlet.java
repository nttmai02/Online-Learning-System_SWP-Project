/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package Controller.expert;

import DAO.CategoryDBContext;
import DAO.QuestionDBContext;
import Model.Category;
import Model.Page;
import Model.Question;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;

/**
 *
 * @author ADMIN
 */
@WebServlet(name="ManageQuestionServlet", urlPatterns={"/managequestion"})
public class ManageQuestionServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        //categories
        CategoryDBContext db1 = new CategoryDBContext();
        ArrayList<Category> categories = db1.getAllCategory();
        //questions
        QuestionDBContext db2 = new QuestionDBContext();
        ArrayList<Question> questions1 = db2.getAllQuestions();
        ArrayList<Question> questions2 = questions1;
        //filter
        //filter handle
        String key = request.getParameter("key");
        if(key != null && !key.trim().equals("")) {
            questions2 = db2.getQuestionsByContent(key);
            questions1 = db2.getQuestionsByContent(key);
        }
        String categoryId = request.getParameter("categoryId");
        if(categoryId != null && !categoryId.equals("0")) {
            questions2 = new ArrayList<>();
            int id = Integer.parseInt(categoryId);
            for(Question q : questions1) {
                if(q.getCategory().getId() == id) {
                    questions2.add(q);
                }
            }
            request.setAttribute("categoryId", categoryId);
        }
        //
        request.setAttribute("categories", categories);
        request.setAttribute("questions", questions2);
        //page
        int nrpp = 10;
        int cp = 1;
        if (request.getParameter("cp") != null) {
            try {
                cp = Integer.parseInt(request.getParameter("cp"));
            } catch (Exception e) {
                System.out.println(e);
            }
        }
        Page page = new Page(nrpp, cp, questions2.size());
        page.process();
        request.setAttribute("page", page);
        //end page
        request.getRequestDispatcher("view/expert/questionManagement.jsp").forward(request, response);
    } 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        //questions
        QuestionDBContext db2 = new QuestionDBContext();
        ArrayList<Question> questions1 = db2.getAllQuestions();
        ArrayList<Question> questions2 = questions1;
        //filter handle
        String key = request.getParameter("key");
        if(key != null && !key.trim().equals("")) {
            questions2 = db2.getQuestionsByContent(key);
            questions1 = db2.getQuestionsByContent(key);
        }
        String categoryId = request.getParameter("categoryId");
        if(categoryId != null && !categoryId.equals("0")) {
            questions2 = new ArrayList<>();
            int id = Integer.parseInt(categoryId);
            for(Question q : questions1) {
                if(q.getCategory().getId() == id) {
                    questions2.add(q);
                }
            }
            request.setAttribute("categoryId", categoryId);
        }
        
        //String categoryId = request.getParameter("categoryId");
        //categories
        CategoryDBContext db1 = new CategoryDBContext();
        ArrayList<Category> categories = db1.getAllCategory();
        
        request.setAttribute("categories", categories);
        request.setAttribute("questions", questions2);
        request.getRequestDispatcher("view/expert/questionManagement.jsp").forward(request, response);
    }
}
