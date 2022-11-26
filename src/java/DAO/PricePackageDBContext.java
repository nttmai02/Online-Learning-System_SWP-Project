/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.PricePackage;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author ADMIN
 */
public class PricePackageDBContext extends DBContext {
    public ArrayList<PricePackage> getAllPricePackage(int courseId) {
        ArrayList<PricePackage> pp = null;
        String sql = "  select * \n" +
                    "  from PricePackage \n" +
                    "  where CourseId = ? \n" +
                    "  order by SalePrice";
        try{
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, courseId);
            ResultSet rs = stm.executeQuery();
            pp = new ArrayList<>();
            while(rs.next()) {
                pp.add(new PricePackage(rs.getInt("id"), 
                        rs.getInt("duration"), 
                        rs.getString("name"), 
                        rs.getFloat("listedprice"), 
                        rs.getFloat("saleprice"), 
                        rs.getBoolean("status")));
            }
        }
        catch(Exception e){
            
        }
        return pp;
    }
    public PricePackage getPricePackage(int id) {
        PricePackage pp = null;
        String sql = "  select * \n" +
                    "  from PricePackage \n" +
                    "  where id = ?";
        try{
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery();
            if(rs.next()) {
                pp = (new PricePackage(rs.getInt("id"), 
                        rs.getInt("duration"), 
                        rs.getString("name"), 
                        rs.getFloat("listedprice"), 
                        rs.getFloat("saleprice"), 
                        rs.getBoolean("status")));
            }
        }
        catch(Exception e){
            
        }
        return pp;
    }

    public void addPricePackage(PricePackage pp, int courseId) {
        String sql = "insert into pricepackage ([Name],[Duration],[ListedPrice],[SalePrice],[Status],[CourseId]) values( ? , ? , ? , ? , ? , ? )";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, pp.getName());
            ps.setInt(2, pp.getDuration());
            ps.setDouble(3, pp.getListedPrice());
            ps.setDouble(4, pp.getSalePrice());
            ps.setBoolean(5, pp.isStatus());
            ps.setInt(6, courseId);
            ps.execute();
        } catch (Exception e) {
            System.out.println("Error at addPricePackage " + e);
        }
    }

    public void editPricePackage(PricePackage pp) {
        String sql = "update pricepackage set [Name] = ?, [Duration] = ?, [ListedPrice] = ?, [SalePrice] = ?, [Status] = ? where id = ? ";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, pp.getName());
            ps.setInt(2, pp.getDuration());
            ps.setDouble(3, pp.getListedPrice());
            ps.setDouble(4, pp.getSalePrice());
            ps.setBoolean(5, pp.isStatus());
            ps.setInt(6, pp.getId());
            ps.execute();
        } catch (Exception e) {
            System.out.println("Error at editPricePackage " + e);
        }
    }
}
