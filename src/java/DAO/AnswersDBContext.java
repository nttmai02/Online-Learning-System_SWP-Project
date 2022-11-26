/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.Answers;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author ADMIN
 */
public class AnswersDBContext extends DBContext {
    public ArrayList<Answers> getAnswers(int questionId) {
        ArrayList<Answers> as = null;
        String sql = "  select * from answers where questionid = ?";
        try{
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, questionId);
            ResultSet rs = stm.executeQuery();
            as = new ArrayList<>();
            while(rs.next()) {
                Answers a = new Answers();
                a.setId(rs.getInt("id"));
                a.setContent(rs.getString("content"));
                a.setCorrect(rs.getBoolean("correct"));
                as.add(a);
            }
        }
        catch(Exception e){
            
        }
        return as;
    }
    public Answers getAnswer(int id) {
        String sql = "select * from answers where id = ?";
        Answers a = null;
        try{
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery();
            
            if(rs.next()) {
                a = new Answers();
                a.setId(rs.getInt("id"));
                a.setContent(rs.getString("content"));
                a.setCorrect(rs.getBoolean("correct"));
            }
        }
        catch(Exception e){
            
        }
        return a;
    }
    public boolean deleteAns(int id) {
        try {
            String sql = "delete from answers where id = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            stm.executeUpdate();
            return true;
        } catch (Exception e) {

        }
        return false;
    }
    public boolean insertAns(String content, boolean correct, int questionId) {
        try {
            String sql = "insert into [Answers](content, correct, questionid) values(?,?,?)";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, content);
            stm.setBoolean(2, correct);
            stm.setInt(3, questionId);
            stm.executeUpdate();
            return true;
        } catch (Exception e) {

        }
        return false;
    }
}
