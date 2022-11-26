/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.Category;
import Model.Course;
import Model.PricePackage;
import Model.Register;
import Model.Topic;
import Model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Time;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public class CourseDBContext extends DBContext {
public Course getCourse(int courseId) {
        Course c = null;
        String sql = "select * from [course] where [id] = ?";
        try{
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, courseId);
            ResultSet rs = stm.executeQuery();
            if(rs.next()) {
                c = new Course(rs.getInt("id"),
                                rs.getString("name"),
                                rs.getString("description"),
                                rs.getString("image"),
                                rs.getBoolean("status"),
                                rs.getBoolean("featured"),
                                new CategoryDBContext().getCategory(rs.getInt("categoryid")));
                c.setUsersTeach(new UserDBContext().getExpert(courseId));
                c.setUsersRegister(new UserDBContext().getCustomer(courseId));
                c.setPricePackages(new PricePackageDBContext().getAllPricePackage(courseId));
                c.setTopics(new TopicDBContext().getTopics(courseId));
            }
        }
        catch(Exception e){
            
        }
        return c;
    }
    //register
    public boolean registerCourse(int courseId, int userId, Timestamp validFrom, Timestamp validTo) {
        String sql = "insert into [register] values(?,?,?,?)";
        try{
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, userId);
            stm.setInt(2, courseId);
            stm.setTimestamp(3, validFrom);
            stm.setTimestamp(4, validTo);
            stm.executeUpdate();
            return true;
        }
        catch(Exception e){
            return false;
        }
    }
    //get lastest register
    public Register getRegister(int courseId, int userId) {
        Register r = null;
        String sql = "select *\n" +
                    "from register\n" +
                    "where [userid] = ? and courseId = ?\n" +
                    "order by ValidTo desc";
        try{
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, userId);
            stm.setInt(2, courseId);
            ResultSet rs = stm.executeQuery();
            if(rs.next()) {
                r = new Register(rs.getInt("id"),
                                new UserDBContext().getUser(userId),
                                new CourseDBContext().getCourse(courseId),
                                rs.getTimestamp("validfrom"),
                                rs.getTimestamp("validto"));
            }
        }
        catch(Exception e){
            
        }
        return r;
    }
    public void addCourse(Course c) {
        String sql = "insert into course([name],[categoryid],[image],[description], [status],[featured]) values(?,?,?,?,?,?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, c.getName());
            ps.setInt(2, c.getCategory().getId());
            ps.setString(3, c.getImage());
            ps.setString(4, c.getDescription());
            ps.setBoolean(5, c.isStatus());
            ps.setBoolean(6, c.isFeatured());
            ps.execute();
        } catch (Exception e) {
            System.out.println("Error at addCourse " + e);
        }
    }

    public ArrayList<Course> loadAllCourse() {
        ArrayList<Course> cLst = new ArrayList<>();
        String sql = "select * from [course]";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Category category = new CategoryDBContext().getCategory(rs.getInt("categoryid"));
                int id = rs.getInt("id");
                ArrayList<User> expertList = new UserDBContext().getExpert(id);
                ArrayList<User> customerList = new UserDBContext().getCustomer(id);
                ArrayList<Topic> topicList = new TopicDBContext().getTopics(id);
                ArrayList<PricePackage> pricePackages = new PricePackageDBContext().getAllPricePackage(id);
                Course course = new Course(rs.getInt("id"), rs.getString("name"), rs.getString("description"), rs.getString("image"), rs.getBoolean("status"), rs.getBoolean("featured"), category, expertList, customerList, topicList, pricePackages);
                cLst.add(course);
            }
        } catch (Exception e) {
            System.out.println("Error at loadAllCourse " + e);
        }
        return cLst;
    }

//    public static void main(String[] args) {
//         CourseDBContext context = new CourseDBContext();
//         context.addCourse(new);
//    }
    public void editCourse(Course c) {
        String sql = "update course set [name] = ?, [categoryid] = ?, [image] = ?, [description] = ?, [status] = ?, [featured] = ? where id = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, c.getName());
            ps.setInt(2, c.getCategory().getId());
            ps.setString(3, c.getImage());
            ps.setString(4, c.getDescription());
            ps.setBoolean(5, c.isStatus());
            ps.setBoolean(6, c.isFeatured());
            ps.setInt(7, c.getId());
            ps.execute();
        } catch (Exception e) {
            System.out.println("Error at editCourse " + e);
        }
    }

    public void assignExpert(int cId, int uId) {
        String sql = "insert into teach ([userid],[courseid]) values( ? , ? )";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, uId);
            ps.setInt(2, cId);
            ps.execute();
        } catch (Exception e) {
            System.out.println("Error at assignExpert " + e);
        }
    }

    public void unassignExpert(int cId, int uId) {
        String sql = "delete from teach where [userid] = ? and [courseid] = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, uId);
            ps.setInt(2, cId);
            ps.execute();
        } catch (Exception e) {
            System.out.println("Error at unassignExpert " + e);
        }
    }
    public List<Course> getAllCourseByCateID(String cateID) {
        List<Course> list = new ArrayList<>();
        String query = "   select * from Course c join Category cate on c.CategoryId = cate.Id where [CategoryId] = ?";
        try {
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
             ps.setString(1, cateID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Course c = new Course();
                Category cat = new Category();
                cat.setId(rs.getInt(7));
                c.setId(rs.getInt(1));
                c.setName(rs.getString(4));
                c.setDescription(rs.getString(5));
                c.setImage(rs.getString(2));
                c.setStatus(rs.getBoolean(3));
                c.setFeatured(rs.getBoolean(6));
                cat.setName(rs.getString(9));
                c.setCategory(cat);
                c.setUsersTeach(new UserDBContext().getExpert(c.getId()));          
                c.setPricePackages(new PricePackageDBContext().getAllPricePackage(c.getId()));     
                list.add(c);
            }
        } catch (Exception e) {
        }
        return list;
    }
    public List<Course> SearchByName(String txtSearch) {
        List<Course> list = new ArrayList<>();
        String query = "  select * from Course c join Category cate on c.CategoryId = cate.Id where c.Name like ?";
        try {
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, "%" + txtSearch + "%");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Course c = new Course();
                Category cat = new Category();
                cat.setId(rs.getInt(7));
                c.setId(rs.getInt(1));
                c.setName(rs.getString(4));
                c.setDescription(rs.getString(5));
                c.setImage(rs.getString(2));
                c.setStatus(rs.getBoolean(3));
                c.setFeatured(rs.getBoolean(6));
                cat.setName(rs.getString(9));
                c.setCategory(cat);
                c.setUsersTeach(new UserDBContext().getExpert(c.getId()));          
                c.setPricePackages(new PricePackageDBContext().getAllPricePackage(c.getId()));     
                list.add(c);

            }

        } catch (Exception e) {
        }
        return list;

    }
    public List<Course> getAllCourseByUserID(String userID) {
        List<Course> list = new ArrayList<>();
        String query = "select * from Course c join Category cate on c.CategoryId = cate.Id join Register r on c.Id = r.CourseId where UserId = ?";
        try {
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
             ps.setString(1, userID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Course c = new Course();
                Category cat = new Category();
                cat.setId(rs.getInt(7));
                c.setId(rs.getInt(1));
                c.setName(rs.getString(4));
                c.setDescription(rs.getString(5));
                c.setImage(rs.getString(2));
                c.setStatus(rs.getBoolean(3));
                c.setFeatured(rs.getBoolean(6));
                cat.setName(rs.getString(9));
                c.setCategory(cat);
                c.setUsersTeach(new UserDBContext().getExpert(c.getId()));          
                c.setPricePackages(new PricePackageDBContext().getAllPricePackage(c.getId()));     
                list.add(c);
            }
        } catch (Exception e) {
        }
        return list;
    }
    public List<Course> getAllCourseByCateIDandUserID(String cateID, String UserID) {
        List<Course> list = new ArrayList<>();
        String query = "select * from Course c join Category cate on c.CategoryId = cate.Id join Register r on c.Id = r.CourseId where UserId = ? and CategoryId = ?";
        try {
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
             ps.setString(2, cateID);
             ps.setString(1, UserID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Course c = new Course();
                Category cat = new Category();
                cat.setId(rs.getInt(7));
                c.setId(rs.getInt(1));
                c.setName(rs.getString(4));
                c.setDescription(rs.getString(5));
                c.setImage(rs.getString(2));
                c.setStatus(rs.getBoolean(3));
                c.setFeatured(rs.getBoolean(6));
                cat.setName(rs.getString(9));
                c.setCategory(cat);
                c.setUsersTeach(new UserDBContext().getExpert(c.getId()));          
                c.setPricePackages(new PricePackageDBContext().getAllPricePackage(c.getId()));     
                list.add(c);
            }
        } catch (Exception e) {
        }
        return list;
    }
    public String getCourseIdByTopicId(String topicId) {
        String tId ="";
        String sql = "  select [CourseId]  from Topic where Id =?";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, topicId);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                tId = rs.getString(1);
            }
        } catch (Exception e) {

        }
        return tId;
    }
     public ArrayList<Course> loadCourseByExpert(int userid) {
        ArrayList<Course> cLst = new ArrayList<>();
        String sql = " select * from Teach t, Course c\n"
                + " where t.CourseId=c.Id and t.UserId=?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, userid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

                Category category = new CategoryDBContext().getCategory(rs.getInt("categoryid"));
                int id = rs.getInt("CourseId");
                ArrayList<User> expertList = new UserDBContext().getExpert(id);
                ArrayList<User> customerList = new UserDBContext().getCustomer(id);
                ArrayList<Topic> topicList = new TopicDBContext().getTopics(id);
                ArrayList<PricePackage> pricePackages = new PricePackageDBContext().getAllPricePackage(id);
                Course course = new Course(rs.getInt("CourseId"), rs.getString("name"), rs.getString("description"), rs.getString("image"), rs.getBoolean("status"), rs.getBoolean("featured"), category, expertList, customerList, topicList, pricePackages);
                cLst.add(course);
            }
        } catch (Exception e) {
            System.out.println("Error at loadCourseByExpert " + e);
        }
        return cLst;
    }

}
