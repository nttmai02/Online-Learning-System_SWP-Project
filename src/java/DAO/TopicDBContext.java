/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.Course;
import Model.Topic;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ADMIN
 */
public class TopicDBContext extends DBContext {
    public ArrayList<Topic> getTopics(int courseId) {
        ArrayList<Topic> topics = null;
        String sql = "select * from [Topic] where [courseid] = ?";
        try{
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, courseId);
            ResultSet rs = stm.executeQuery();
            topics = new ArrayList<>();
            while(rs.next()) {
                Topic t = new Topic(rs.getInt("id"),
                                rs.getInt("order"),
                                rs.getString("name"),
                                null);
                t.setLessons(new LessonDBContext().getLessons(rs.getInt("id")));
                t.setQuizs(new QuizDBContext().getQuizsByTopicId(rs.getInt("id")));
                topics.add(t);
            }
        }
        catch(Exception e){
            
        }
        return topics;
    }
    public HashMap<Course, Integer> CountTopic() {
        HashMap<Course, Integer> list = new HashMap<>();
        String query = "select CourseId,COUNT(Topic.CourseId) as number from Topic group by Topic.CourseId";
        try {
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Course cou = new Course();
                cou.setId(rs.getInt(1));
                list.put(cou, rs.getInt("number"));
            }
        } catch (Exception e) {
        }
        return list;
    }
    public boolean addTopic(String name, String courseId) {
        PreparedStatement stm = null;
        try {
            String sql = "INSERT INTO [dbo].[Topic]\n"
                    + "           ([Name]\n"
                    + "           ,[Order]\n"
                    + "           ,[CourseId])\n"
                    + "     VALUES\n"
                    + "           (?,0,?)";
            stm = connection.prepareStatement(sql);
            stm.setString(1, name);
            stm.setString(2, courseId);
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
}
