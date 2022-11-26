package Controller.customer;

import DAO.AnswersDBContext;
import DAO.User_QuizDBContext;
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

/**
 *
 * @author ADMIN
 */
@WebServlet(name="SubmitQuizServlet", urlPatterns={"/submitquiz"})
public class SubmitQuizServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
    } 

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        int size = Integer.parseInt(request.getParameter("size"));
        int correctAns = 0;
        int s = Integer.parseInt(request.getParameter("seconds"));
        int quizId = Integer.parseInt(request.getParameter("quizId"));
        //user
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("user");
        //cal grade
        for(int i = 1; i <= size; i++) {
            String ansId = request.getParameter(i + "");
            if(ansId != null) {
                int id = Integer.parseInt(ansId);
                AnswersDBContext db = new AnswersDBContext();
                if(db.getAnswer(id).isCorrect()) 
                    correctAns++;
            }
        }
        float grade = (float)correctAns / size;
        //insert database userQuiz
        int h = s / 3600;
        int m = s % 3600 / 60;
        s = s % 3600 % 60;
        Time t = new Time(h, m, s);
        User_QuizDBContext db = new User_QuizDBContext();
        db.insertUserQuiz(user.getId(), quizId, t, grade);
        request.getRequestDispatcher("learncourse").forward(request, response);
    }
}
