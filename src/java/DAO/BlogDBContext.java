/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.Blog;
import Model.Category;
import Model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public class BlogDBContext extends DBContext {
    public List<Blog> getTop6Blog(){
        List<Blog> list = new ArrayList<>();
        String query = "  select top 6 * from Blog order by date desc";
        try {
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {                
                Blog b = new Blog();                
                b.setId(rs.getInt(1));
                b.setName(rs.getString(2));
                b.setDate(rs.getTimestamp(3));
                b.setContent(rs.getString(4));

             
//                u.setId(rs.getInt(6));
                int UserId = rs.getInt(6);
                User u = new UserDBContext().getUser(UserId);
                int cateId = rs.getInt(5);
                Category c = new CategoryDBContext().getCategory(cateId);
                  b.setCategory(c);
                b.setUser(u);
                b.setImage(rs.getString(7));
                b.setStatus(rs.getBoolean(8));
                list.add(b);
            }
        } catch (Exception e) {
        }
        return list;
    }
}
