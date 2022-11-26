/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller.admin;

import DAO.PricePackageDBContext;
import Model.PricePackage;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author Mai
 */
@WebServlet(name = "EditPricePackage", urlPatterns = {"/EditPricePackage"})
public class EditPricePackage extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet EditPricePackage</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EditPricePackage at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        processRequest(request, response);

//        try {
        int courseId = Integer.parseInt(request.getParameter("courseId"));
        request.setAttribute("courseId", courseId);
        int ppId = Integer.parseInt(request.getParameter("ppId"));
        PricePackage pp = new PricePackageDBContext().getPricePackage(ppId);
//            if (pp == null) {
//                throw new Exception();
//            }
        request.setAttribute("ppId", ppId);
        request.setAttribute("pricePackage", pp);
        request.getRequestDispatcher("view/admin/EditPricePackage.jsp").forward(request, response);
//        } catch (Exception e) {
//            System.out.println("Loi ppId ko ton tai "+e);
//            response.sendRedirect("CoursesManagement");
//        }

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        processRequest(request, response);
//        try {

        int ppId = Integer.parseInt(request.getParameter("ppId"));
        String name = request.getParameter("name");
        int duration = Integer.parseInt(request.getParameter("duration"));
        double listedPrice = Double.parseDouble(request.getParameter("listedPrice"));
        double salePrice = listedPrice;
        String sp = request.getParameter("salePrice");
        if (!sp.equals("")) {
            salePrice = Double.parseDouble(sp);
        }
        boolean status = request.getParameter("status").equals("1");
        PricePackage pp = new PricePackage(ppId, duration, name, (float) listedPrice, (float) salePrice, status);
        new PricePackageDBContext().editPricePackage(pp);
        int courseId = Integer.parseInt(request.getParameter("courseId"));
        response.sendRedirect("ManagePricePackage?courseId=" + courseId);
//        } catch (Exception e) {
//            System.out.println(e);
//        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
