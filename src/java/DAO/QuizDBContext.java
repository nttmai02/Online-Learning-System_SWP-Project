/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.Quiz;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
/**
 *
 * @author ADMIN
 */
public class QuizDBContext extends DBContext {
    public ArrayList<Quiz> getQuizsByTopicId(int topicId) {
        ArrayList<Quiz> quizs = null;
        String sql = "select * from quiz q, topic_quiz tq where q.id = tq.quizid and topicid = ?";
        try{
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, topicId);
            ResultSet rs = stm.executeQuery();
            quizs = new ArrayList<>();
            while(rs.next()) {
                Quiz q = new Quiz();
                q.setId(rs.getInt("id"));
                q.setName(rs.getString("name"));
                q.setLevel(rs.getString("level"));
                q.setDuration(rs.getTime("duration"));
                q.setType(rs.getString("type"));
                quizs.add(q);
            }
        }
        catch(Exception e){
            
        }
        return quizs;
    }
    public Quiz getQuizById(int id) {
        String sql = "select * from quiz where id = ?";
        Quiz q = null;
        try{
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery();           
            if(rs.next()) {
                q = new Quiz();
                q.setId(rs.getInt("id"));
                q.setName(rs.getString("name"));
                q.setLevel(rs.getString("level"));
                q.setDuration(rs.getTime("duration"));
                q.setType(rs.getString("type"));
                q.setQuestion(new QuestionDBContext().getQuestions(rs.getInt("id")));
            }
        }
        catch(Exception e){
            
        }
        return q;
    }
    public boolean addQuiz(String tid, String qid) {
        String query = "INSERT INTO [dbo].[Topic_Quiz]\n"
                + "           ([TopicId]\n"
                + "           ,[QuizId]\n"
                + "           ,[Order])\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,?\n"
                + "           ,0)";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, tid);
            ps.setString(2, qid);

            ps.executeUpdate();
            return true;
        } catch (Exception e) {
        }
        return false;
    }
    public List<Quiz> getQuiz(int topicId) {
        List<Quiz> Quizs = null;
        String sql = "select * from Quiz";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            Quizs = new ArrayList<>();
            while (rs.next()) {
                Quiz l = new Quiz(rs.getInt(1),
                        rs.getFloat(5),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(6),
                        rs.getTime(4),
                        null,
                        null,
                        null);
                Quizs.add(l);
            }
        } catch (Exception e) {

        }
        QuizDBContext ct = new QuizDBContext();
        List<Quiz> Quiz = ct.getQuizsByTopicId(topicId);
        for (int i = 0; i < Quizs.size(); i++) {
            for (int j = 0; j < Quiz.size(); j++) {
                if (Quizs.get(i).getId() == Quiz.get(j).getId()) {
                    Quizs.remove(Quizs.get(i));
                }
            }

//        for (Quiz quiz : Quizs) {
//            for (Quiz quiz1 : Quiz) {
//                if (quiz.getId() == quiz1.getId()) {
//                    Quizs.remove(quiz);
//                }
//            }
//        }
        }
        return Quizs;
    }
    public boolean deleteQuiz(String tid, String qid) {
        String query = "DELETE FROM [dbo].[Topic_Quiz]\n"
                + "      WHERE TopicId= ? and QuizId=?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, tid);
            ps.setString(2, qid);
            ps.executeUpdate();
            return true;
        } catch (Exception e) {
        }
        return false;
    }
    
    public void editQuiz(Quiz q) {
        String sql = "update quiz set [name] = ?, [level] = ?, [duration] = ? where [id] = ? ";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, q.getName());
            ps.setString(2, q.getLevel());
            ps.setTime(3, q.getDuration());
            ps.setInt(4, q.getId());
            ps.execute();
        } catch (Exception e) {
            System.out.println("Error at editQuiz " + e);
        }
    }
    public ArrayList<Quiz> getAllQuizs() {
        ArrayList<Quiz> Quizs = new ArrayList<>();
        String sql = "select * from quiz";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Quiz q = new Quiz(rs.getInt("id"),
                        rs.getFloat("passrate"),
                        rs.getString("name"),
                        rs.getString("level"),
                        rs.getString("type"),
                        rs.getTime("duration"),
                        null,
                        null,
                        null);
                Quizs.add(q);
            }
        } catch (Exception e) {
            System.out.println("Error at getAllQuizs " + e);

        }
        return Quizs;
    }
    public void addQuiz(Quiz q) {
        String sql = "insert into [quiz]([name], [level], [duration], [type]) values( ? , ? , ? , ? )";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, q.getName());
            ps.setString(2, q.getLevel());
            ps.setTime(3, q.getDuration());
            ps.setString(4, q.getType());
            ps.execute();
        } catch (Exception e) {
            System.out.println("Error at addQuiz " + e);
        }
    }
}
