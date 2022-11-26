/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.Role;
import Model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ADMIN
 */
public class UserDBContext extends DBContext {
    public User getUser(String email) {
        User user = null;
        String sql = "  select * \n"
                + "  from [user] \n"
                + "  where email = ? \n";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, email);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                user = new User(rs.getInt("id"),
                        rs.getString("password"),
                        rs.getString("fullname"),
                        rs.getString("email"),
                        rs.getString("phone"),
                        rs.getString("image"),
                        rs.getBoolean("gender"),
                        new Role(rs.getInt("roleid"))
                );
            }
        } catch (Exception e) {

        }
        return user;
    }
    //get customer register courses
    public ArrayList<User> getCustomer(int courseId) {
        ArrayList<User> users = null;
        String sql = "  select * \n" +
                    "  from register \n" +
                    "  where CourseId = ? \n";
        try{
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, courseId);
            ResultSet rs = stm.executeQuery();
            users = new ArrayList<>();
            while(rs.next()) {
                int userId = rs.getInt("userid");
                users.add(getUser(userId));
            }
        }
        catch(Exception e){
            
        }
        return users;
    }
    
    //get expert teach courses
    public ArrayList<User> getExpert(int courseId) {
        ArrayList<User> users = null;
        String sql = "  select * \n" +
                    "  from teach \n" +
                    "  where CourseId = ? \n";
        try{
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, courseId);
            ResultSet rs = stm.executeQuery();
            users = new ArrayList<>();
            while(rs.next()) {
                int userId = rs.getInt("userid");
                users.add(getUser(userId));
            }
        }
        catch(Exception e){
            
        }
        return users;
    }
    
    public User getUser(int id) {
        User user = null;
        String sql = "  select * \n" +
                    "  from [user] \n" +
                    "  where id = ? \n";
        try{
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery();
            if(rs.next()) {
                user = new User(rs.getInt("id"),
                                rs.getString("password"),
                                rs.getString("fullname"),
                                rs.getString("email"),
                                rs.getString("phone"),
                                rs.getString("image"),
                                rs.getBoolean("gender"),
                                new Role(rs.getInt("roleid"))
                                );
            }
        }
        catch(Exception e){
            
        }
        return user;
    }
    public User getUserAcc(String email, String pass) {
        User s = null;
        
        try {
            String sql = "select * from [User]"
                    + "where Email=? and [password] = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, email);
            stm.setString(2, pass);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Role r = new Role(rs.getInt(8));
                return new User(rs.getInt(1),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(2),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getBoolean(5),
                        r);
            }

        } catch (Exception e) {
        }
        return s;
    }
    public ArrayList<User> getUserByRole(int role) {
        ArrayList<User> users = null;
        String sql = "  select id \n" +
                    "  from [user] \n" +
                    "  where roleid = ? \n";
        try{
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, role);
            ResultSet rs = ps.executeQuery();
            users = new ArrayList<>();
            while(rs.next()) {
                int userId = rs.getInt("id");
                users.add(new UserDBContext().getUser(userId));
            }
        }
        catch(Exception e){
            System.out.println("Error at getUserByRole: "+e);
        }
        return users;
    }
    public boolean updatePasswordByEmail(String password, String email) {
        PreparedStatement stm = null;
        try {
            String sql = "UPDATE [User] SET [password] = ? WHERE email = ?";
            stm = connection.prepareStatement(sql);
            stm.setString(1, password);
            stm.setString(2, email);
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
    public boolean updateUser(String email, String name, String phone, String gender, String img) {
        String query = "  UPDATE [User] SET [fullname] = ?,[phone] =?,[gender] = ?,[image]=?\n"
                + "                WHERE [email] =?";
        try {
             Connection con = new DBContext().getConnection();
            PreparedStatement ps = con.prepareStatement(query);
            con = new DBContext().getConnection();// mo kn vs sql
            ps = con.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, phone);
            ps.setString(3, gender);
            ps.setString(4, img);
            ps.setString(5, email);

            ps.executeUpdate();
            return true;
        } catch (Exception e) {
        }
        return false;
    }
    public boolean getEmail(String email) {
        PreparedStatement stm = null;
        boolean check = false;
        try {
            String sql = "select * from [User] where email = ?";
            stm = connection.prepareStatement(sql);
            stm.setString(1, email);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                check = true;
            }
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
            return check;
        }
    }
    public boolean createUser(String email, String pass, String name, boolean gender, String phone) {
        PreparedStatement stm = null;
        try {
            String sql = "INSERT INTO [dbo].[User]\n"
                    + "           ([Email]\n"
                    + "           ,[PassWord]\n"
                    + "           ,[FullName]\n"
                    + "           ,[Gender]\n"
                    + "           ,[Phone]\n"
                    + "           ,[Image]\n"
                    + "           ,[RoleId])\n"
                    + "     VALUES\n"
                    + "           (?,?,?,?,?,null,1)";
            stm = connection.prepareStatement(sql);
            stm.setString(1, email);
            stm.setString(2, pass);
            stm.setString(3, name);
            stm.setBoolean(4, gender);
            stm.setString(5, phone);
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
    public void insertUser(String email, String passWord, String fullName, boolean gender, String phone, String image, String role) {
        String sql = "INSERT INTO [dbo].[User]\n"
                + "           ([Email]\n"
                + "           ,[PassWord]\n"
                + "           ,[FullName]\n"
                + "           ,[Gender]\n"
                + "           ,[Phone]\n"
                + "           ,[Image]\n"
                + "           ,[RoleId])\n"
                + "     VALUES\n"
                + "           (?,?,?,?,?,?,?)";
        try {
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            User u = new User();
            Role r = new Role();
            ps.setString(1, email);
            ps.setString(2, passWord);
            ps.setString(3, fullName);
            ps.setBoolean(4, gender);
            ps.setString(5, phone);
            ps.setString(6, image);
            ps.setString(7, role);
            ps.executeUpdate();

        } catch (Exception e) {
        }
    }
    public List<User> getAllUser() {
        List<User> list = new ArrayList<>();
        String sql = "  select*from [User] u  join [Role] r  on u.RoleId =r.ID";
        try {
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                User u = new User();
                Role r = new Role();
                u.setId(rs.getInt(1));
                u.setEmail(rs.getString(2));
                u.setPhone(rs.getString(6));
                u.setImage(rs.getString("image"));
                u.setFullName(rs.getString(4));
                u.setGender(rs.getBoolean(5));
                r.setName(rs.getString(10));
                r.setId(rs.getInt(9));
                u.setRole(r);
                list.add(u);

            }
        } catch (Exception e) {
        }
        return list;

    }
    public List<Role> getAllRole() {
        List<Role> list = new ArrayList<>();
        String sql = "select * from Role";
        try {
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Role role = new Role();
                role.setId(rs.getInt(1));
                role.setName(rs.getString(2));
                list.add(role);

            }
        } catch (Exception e) {
        }
        return list;
    }
    public List<User> getAllUserByRoleId(String id) {
        List<User> list = new ArrayList<>();
        String sql = "select*from [User] u join [Role] r on u.RoleId = r.ID where u.RoleId=?";
        try {
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                User u = new User();
                Role r = new Role();
                u.setId(rs.getInt(1));
                u.setEmail(rs.getString(2));
                u.setPhone(rs.getString(6));
                u.setImage(rs.getString("image"));
                u.setFullName(rs.getString(4));
                u.setGender(rs.getBoolean(5));
                r.setName(rs.getString(10));
                r.setId(rs.getInt(9));
                u.setRole(r);
                list.add(u);

            }
        } catch (Exception e) {
        }
        return list;
    }
}
