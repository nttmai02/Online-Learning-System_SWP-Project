/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.Answers;
import Model.Question;
import Model.Quiz_Question;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author ADMIN
 */
public class QuestionDBContext extends DBContext {
    public ArrayList<Question> getAllQuestions() {
        ArrayList<Question> qs = null;
        String sql = "select * from question";
        try{
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            qs = new ArrayList<>();
            while(rs.next()) {
                Question q = new Question();
                q.setId(rs.getInt("id"));
                q.setContent(rs.getString("content"));
                q.setStatus(rs.getBoolean("status"));
                q.setAnswers(new AnswersDBContext().getAnswers(rs.getInt("id")));
                q.setCategory(new CategoryDBContext().getCategory(rs.getInt("categoryid")));
                qs.add(q);
            }
        }
        catch(Exception e){
            
        }
        return qs;
    }
    public Question getQuestion(int id) {
        String sql = "select * from question where id = ?";
        Question q = null;
        try{
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery();
            if(rs.next()) {
                q = new Question();
                q.setId(rs.getInt("id"));
                q.setContent(rs.getString("content"));
                q.setStatus(rs.getBoolean("status"));
                q.setAnswers(new AnswersDBContext().getAnswers(rs.getInt("id")));
                q.setCategory(new CategoryDBContext().getCategory(rs.getInt("categoryid")));
            }
        }
        catch(Exception e){
            
        }
        return q;
    }
    public ArrayList<Question> getQuestionsByContent(String content) {
        ArrayList<Question> qs = null;
        String sql = "select * from [question] where [content] like ? ";
        try{
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, "%" + content + "%");
            ResultSet rs = stm.executeQuery();
            qs = new ArrayList<>();
            while(rs.next()) {
                Question q = new Question();
                q.setId(rs.getInt("id"));
                q.setContent(rs.getString("content"));
                q.setStatus(rs.getBoolean("status"));
                q.setAnswers(new AnswersDBContext().getAnswers(rs.getInt("id")));
                q.setCategory(new CategoryDBContext().getCategory(rs.getInt("categoryid")));
                qs.add(q);
            }
        }
        catch(Exception e){
            
        }
        return qs;
    }
    public ArrayList<Question> getQuestions(int quizId) {
        ArrayList<Question> qs = null;
        String sql = "  select * from question q, quiz_question qq where q.id = qq.questionid and quizid = ?";
        try{
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, quizId);
            ResultSet rs = stm.executeQuery();
            qs = new ArrayList<>();
            while(rs.next()) {
                Question q = new Question();
                q.setId(rs.getInt("id"));
                q.setContent(rs.getString("content"));
                q.setStatus(rs.getBoolean("status"));
                q.setAnswers(new AnswersDBContext().getAnswers(rs.getInt("id")));
                qs.add(q);
            }
        }
        catch(Exception e){
            
        }
        return qs;
    }
    public boolean insertQuestionAns(String content, int categoryId, ArrayList<Answers> ans) {
        try {
            String sql = "insert into [Question](content, categoryId, status) values(?,?,?)";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, content);
            stm.setInt(2, categoryId);
            stm.setBoolean(3, true);
            stm.executeUpdate();
            sql = "select top 1 * from [Question] order by id desc";
            stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            if(rs.next()) {
                String questionId = rs.getString("id");
                int id = Integer.parseInt(questionId);
                for(Answers a : ans){
                    sql = "insert into [Answers](content, correct, questionid) values(?,?,?)";
                    stm = connection.prepareStatement(sql);
                    stm.setString(1, a.getContent());
                    stm.setBoolean(2, a.isCorrect());
                    stm.setInt(3, id);
                    stm.executeUpdate();
                }
            }
            return true;
        } catch (Exception e) {

        }
        return false;
    }
    public boolean updateQuestionAns(int id, String content, boolean status, int categoryId, ArrayList<Answers> ans) {
        try {
            String sql = "UPDATE Question\n" +
                        "SET content = ?, categoryId = ?, [status] = ?\n" +
                        "WHERE id = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, content);
            stm.setInt(2, categoryId);
            stm.setBoolean(3, status);
            stm.setInt(4, id);
            stm.executeUpdate();
            //update ans
            for(Answers a : ans){
                    sql = "UPDATE Answers\n" +
                        "SET content = ?, correct = ?\n" +
                        "WHERE id = ?";
                    stm = connection.prepareStatement(sql);
                    stm.setString(1, a.getContent());
                    stm.setBoolean(2, a.isCorrect());
                    stm.setInt(3, a.getId());
                    stm.executeUpdate();
            }
            return true;
        } catch (Exception e) {

        }
        return false;
    }
    public void removeQuiz_Question(int quizId, int questionId) {
        try {
            String sql = "delete from quiz_question where quizid = ? and questionid = ? ";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, quizId);
            ps.setInt(2, questionId);
            ps.execute();
        } catch (Exception e) {
            System.out.println("Error at removeQuiz_Question " + e);
        }
    }
    public void addQuiz_Question(int quizId, int questionId) {
        try {
            String sql = "insert into quiz_question(quizid, questionid,[order]) values (?,?,102)  ";
//            String sql = "insert into quiz_quesiton set quizid = ?, questionid = ? ,order = 0 ";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, quizId);
            ps.setInt(2, questionId);
            ps.execute();
        } catch (Exception e) {
            System.out.println("Error at addQuiz_Question " + e);
        }
    }
    public ArrayList<Quiz_Question> getQuiz_QuestionsByQuizId(int quizId) {
        ArrayList<Quiz_Question> quiz_questionsList = new ArrayList<>();
        try {
            String sql = "select * from quiz_question where quizid = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, quizId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Quiz_Question qq = new Quiz_Question(rs.getInt("id"), new QuizDBContext().getQuizById(quizId), getQuestion(rs.getInt("questionId")), rs.getInt("order"));
                quiz_questionsList.add(qq);
            }
        } catch (Exception e) {
            System.out.println("Error at getQuiz_QuestionsByQuizId " + e);
        }
        return quiz_questionsList;
    }
}
