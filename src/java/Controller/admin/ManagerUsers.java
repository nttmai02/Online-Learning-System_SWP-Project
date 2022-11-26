/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package Controller.admin;

import DAO.UserDBContext;
import Model.Page;
import Model.Role;
import Model.User;
import Utility.ConvertToImage;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;

/**
 *
 * @author Dell 5510
 */
@WebServlet(name = "ManagerUsers", urlPatterns = {"/ManagerUsers"})
public class ManagerUsers extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String Rid = request.getParameter("rId");
        UserDBContext user = new UserDBContext();
        List<User> list = user.getAllUser();
        List<User> list1 = user.getAllUserByRoleId(Rid);
        List<Role> listRole = user.getAllRole();
        if(Rid==null){
        request.setAttribute("listUser", list);
         int nrpp = 10;
            int cp = 1;
            if (request.getParameter("cp") != null) {
                try {
                    cp = Integer.parseInt(request.getParameter("cp"));
                } catch (Exception e) {
                    System.out.println(e);
                }
            }
            Page page = new Page(nrpp, cp, list.size());
            page.process();
            request.setAttribute("page", page);
        }
        else{
        request.setAttribute("listUser", list1);
         int nrpp = 10;
            int cp = 1;
            if (request.getParameter("cp") != null) {
                try {
                    cp = Integer.parseInt(request.getParameter("cp"));
                } catch (Exception e) {
                    System.out.println(e);
                }
            }
            Page page = new Page(nrpp, cp, list1.size());
            page.process();
            request.setAttribute("page", page);
        }
        request.setAttribute("listRole", listRole);
        request.getRequestDispatcher("view/admin/ManagerUser.jsp").forward(request, response);
        
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
