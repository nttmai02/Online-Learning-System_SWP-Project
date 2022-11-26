/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package Controller.expert;

import DAO.CategoryDBContext;
import DAO.QuestionDBContext;
import Model.Answers;
import Model.Category;
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
@WebServlet(name="CreateQuestionServlet", urlPatterns={"/createquestion"})
public class CreateQuestionServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        //categories
        CategoryDBContext db1 = new CategoryDBContext();
        ArrayList<Category> categories = db1.getAllCategory();
        request.setAttribute("categories", categories);
        request.getRequestDispatcher("view/expert/CreateQuestion.jsp").forward(request, response);
    } 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String content = request.getParameter("content");
        String categoryId = request.getParameter("categoryId");
        String ans1 = request.getParameter("ans1");
        String ans2 = request.getParameter("ans2");
        String ans3 = request.getParameter("ans3");
        String ans4 = request.getParameter("ans4");
        String correct = request.getParameter("correct"); //1 2 3 4
        //create ans
        ArrayList<Answers> ans = new ArrayList<>();
        if(ans1 != "") {
            Answers a = new Answers();
            a.setContent(ans1);    
            if(correct.equals("1"))
                a.setCorrect(true);
            ans.add(a);
        }
        if(ans2 != "") {
            Answers a = new Answers();
            a.setContent(ans1);    
            if(correct.equals("2"))
                a.setCorrect(true);
            ans.add(a);
        }
        if(ans3 != "") {
            Answers a = new Answers();
            a.setContent(ans3);    
            if(correct.equals("3"))
                a.setCorrect(true);
            ans.add(a);
        }
        if(ans4 != "") {
            Answers a = new Answers();
            a.setContent(ans4);    
            if(correct.equals("4"))
                a.setCorrect(true);
            ans.add(a);
        }
        //insert question ans to dtb
        QuestionDBContext db = new QuestionDBContext();
        if(db.insertQuestionAns(content, Integer.parseInt(categoryId), ans))
            response.sendRedirect("managequestion");
    }
}
