/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.User_Quiz;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Time;
import java.util.ArrayList;

/**
 *
 * @author ADMIN
 */
public class User_QuizDBContext extends DBContext {
    public User_Quiz getUserQuiz(int userId, int quizId) {
        User_Quiz q = null;
        String sql = "  select top 1 *\n" +
                    "  from User_Quiz \n" +
                    "  where userid = ? and quizid = ?\n" +
                    "  order by id desc";
        try{
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, userId);
            stm.setInt(2, quizId);
            ResultSet rs = stm.executeQuery();
            if(rs.next()) {
                q = new User_Quiz();
                q.setId(rs.getInt("id"));
                q.setQuiz(new QuizDBContext().getQuizById(rs.getInt("quizid")));
                q.setTimeTaken(rs.getTime("timetaken"));
                q.setGrade(rs.getFloat("grade"));
            }
        }
        catch(Exception e){
            
        }
        return q;
    }
    
    public void insertUserQuiz(int userId, int quizId, Time timeTaken, float grade) {
        String sql = "insert into User_Quiz(UserId, QuizId, TimeTaken, Grade) values(?,?,?,?)";
        try{
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, userId);
            stm.setInt(2, quizId);
            stm.setTime(3, timeTaken);
            stm.setFloat(4, grade);
            stm.executeUpdate();
        }
        catch(Exception e){
            
        }
    }
}
