/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package Controller.expert;

import DAO.AnswersDBContext;
import DAO.CategoryDBContext;
import DAO.QuestionDBContext;
import Model.Answers;
import Model.Category;
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
@WebServlet(name="EditQuestionServlet", urlPatterns={"/editquestion"})
public class EditQuestionServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        //categories
        CategoryDBContext db1 = new CategoryDBContext();
        ArrayList<Category> categories = db1.getAllCategory();
        request.setAttribute("categories", categories);
        //question
        String questionId = request.getParameter("questionId");
        QuestionDBContext db = new QuestionDBContext();
        Question question = db.getQuestion(Integer.parseInt(questionId));
        if(question.getAnswers().size() < 4){
            int r = 4 - question.getAnswers().size();
            for(int i = 0; i < r; i++) {
                question.getAnswers().add(null);
            }
        }
        request.setAttribute("question", question);
        
        request.getRequestDispatcher("view/expert/EditQuestion.jsp").forward(request, response);
    } 

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String id = request.getParameter("id");
        String content = request.getParameter("content");
        String categoryId = request.getParameter("categoryId");
        String ans1 = request.getParameter("ans1");
        String ans2 = request.getParameter("ans2");
        String ans3 = request.getParameter("ans3");
        String ans4 = request.getParameter("ans4");
        String id1 = request.getParameter("id1");
        String id2 = request.getParameter("id2");
        String id3 = request.getParameter("id3");
        String id4 = request.getParameter("id4");
        String correct = request.getParameter("correct"); //1 2 3 4
        String stt = request.getParameter("status"); //0 1
        boolean status = stt.equals("1") ? true : false;
        //ans
        ArrayList<Answers> ans = new ArrayList<>();
        //update
        if(id1 != "" && ans1 != "") {
            Answers a = new Answers();
            a.setContent(ans1); 
            a.setId(Integer.parseInt(id1));
            if(correct.equals("1"))
                a.setCorrect(true);
            ans.add(a);
        }
        //delete
        else if(id1 != "" && ans1 == ""){
            AnswersDBContext db = new AnswersDBContext();
            db.deleteAns(Integer.parseInt(id1));
        }
        //insert
        else if(id1 == "" && ans1 != "") {
            AnswersDBContext db = new AnswersDBContext();
            db.insertAns(ans1, correct.equals("1") ? true : false, Integer.parseInt(id));
        }
        if(id2 != "" && ans2 != "") {
            Answers a = new Answers();
            a.setContent(ans2);    
            a.setId(Integer.parseInt(id2));
            if(correct.equals("2"))
                a.setCorrect(true);
            ans.add(a);
        }
        else if(id2 != "" && ans2 == ""){
            AnswersDBContext db = new AnswersDBContext();
            db.deleteAns(Integer.parseInt(id2));
        }
        //insert
        else if(id2 == "" && ans2 != "") {
            AnswersDBContext db = new AnswersDBContext();
            db.insertAns(ans2, correct.equals("2") ? true : false, Integer.parseInt(id));
        }
        if(id3 != "" && ans3 != "") {
            Answers a = new Answers();
            a.setContent(ans3);    
            a.setId(Integer.parseInt(id3));
            if(correct.equals("3"))
                a.setCorrect(true);
            ans.add(a);
        }
        else if(id3 != "" && ans3 == ""){
            AnswersDBContext db = new AnswersDBContext();
            db.deleteAns(Integer.parseInt(id3));
        }
        //insert
        else if(id3 == "" && ans3 != "") {
            AnswersDBContext db = new AnswersDBContext();
            db.insertAns(ans3, correct.equals("3") ? true : false, Integer.parseInt(id));
        }
        if(id4 != "" && ans4 != "") {
            Answers a = new Answers();
            a.setContent(ans4);    
            a.setId(Integer.parseInt(id4));
            if(correct.equals("4"))
                a.setCorrect(true);
            ans.add(a);
        }
        else if(id4 != "" && ans4 == ""){
            AnswersDBContext db = new AnswersDBContext();
            db.deleteAns(Integer.parseInt(id4));
        }
        //insert
        else if(id4 == "" && ans4 != "") {
            AnswersDBContext db = new AnswersDBContext();
            db.insertAns(ans4, correct.equals("4") ? true : false, Integer.parseInt(id));
        }
        //insert question ans to dtb
        QuestionDBContext db = new QuestionDBContext();
        if(db.updateQuestionAns(Integer.parseInt(id), content, status, Integer.parseInt(categoryId), ans))
            response.sendRedirect("managequestion");
    }
}
