package Utility;


import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import java.io.File;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Dell 5510
 */
public class ConvertToImage {
    public String convert(HttpServletRequest request,String image){
        if(image.startsWith("https")){
            return image;
        }
        String filename = request.getContextPath() + "/assets/upload/" + image;
        return filename;
    }
}
