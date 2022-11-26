/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.Lesson;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ADMIN
 */
public class LessonDBContext extends DBContext {
    public ArrayList<Lesson> getLessons(int topicId) {
        ArrayList<Lesson> lessons = null;
        String sql = "select * from [Lesson] where [topicId] = ?";
        try{
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, topicId);
            ResultSet rs = stm.executeQuery();
            lessons = new ArrayList<>();
            while(rs.next()) {
                Lesson l = new Lesson(rs.getInt("id"),
                                rs.getInt("order"),
                                rs.getString("name"),
                                rs.getString("url"),
                                rs.getString("description"),
                                rs.getBoolean("status"),
                                null);
                lessons.add(l);
            }
        }
        catch(Exception e){
            
        }
        return lessons;
    }
    public boolean addLesson(String name, String vid, String des, String status, String Tid) {
        PreparedStatement stm = null;
        try {
            String sql = "INSERT INTO [dbo].[Lesson]\n"
                    + "           ([Name]\n"
                    + "           ,[URL]\n"
                    + "           ,[Description]\n"
                    + "           ,[Order]\n"
                    + "           ,[Status]\n"
                    + "           ,[TopicId])\n"
                    + "     VALUES(?,?,?,0,?,?)";
            stm = connection.prepareStatement(sql);
            stm.setString(1, name);
            stm.setString(2, vid);
            stm.setString(3, des);
            stm.setString(4, status);
            stm.setString(5, Tid);
            stm.executeUpdate();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(UserDBContext.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            if (stm != null) {
                try {
                    stm.close();
                } catch (SQLException ex) {
                    Logger.getLogger(UserDBContext.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException ex) {
                    Logger.getLogger(UserDBContext.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return false;
    }
     public Lesson getLessons(String topicId, String lid) {
        Lesson l = null;
        String sql = "  select * from [Lesson] where [topicId] = ? and Id=?";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, topicId);
            stm.setString(2, lid);
            ResultSet rs = stm.executeQuery();
            //lessons = new ArrayList<>();
            while (rs.next()) {
                l = new Lesson(rs.getInt("id"),
                        rs.getInt("order"),
                        rs.getString("name"),
                        rs.getString("url"),
                        rs.getString("description"),
                        rs.getBoolean("status"),
                        null);
                // lessons.add(l);
            }
        } catch (Exception e) {

        }
        return l;
    }
     public boolean updateLesson(String name, String url, String des, String status, String id, String tid) {
        String query = "  UPDATE [dbo].[Lesson]\n"
                + "                set [Name] = ?\n"
                + "                ,[URL] = ?\n"
                + "                ,[Description] =?\n"
                + "                ,[Order] =0\n"
                + "               ,[Status] =?\n"
                + "                WHERE id= ? and TopicId=?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, url);
            ps.setString(3, des);
            ps.setString(4, status);
            ps.setString(5, id);
            ps.setString(6, tid);
            ps.executeUpdate();
            return true;
        } catch (Exception e) {
            System.out.println("loii r long l");
        }
        return false;
    }
}
