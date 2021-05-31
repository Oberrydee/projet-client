/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

/**
 *
 * @author ADZOH-VINYO DIANA
 */
@WebServlet(name = "Games", urlPatterns = {"/games"})
public class Games extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Games</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Games at " + request.getContextPath() + "</h1>");
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
        RequestDispatcher pageToDisplay; 
        pageToDisplay = request.getRequestDispatcher("/WEB-INF/game_index.jsp"); 
        pageToDisplay.forward(request, response);
        /*
                int [] test_attribute = (int[])request.getAttribute("coords"); 
        if (test_attribute == null){
            RequestDispatcher pageToDisplay; 
            pageToDisplay = request.getRequestDispatcher("/WEB-INF/game_index.jsp"); 
            pageToDisplay.forward(request, response);
        }
        else {            
            RequestDispatcher pageToDisplay; 
            pageToDisplay = request.getRequestDispatcher("/WEB-INF/game_scene1.jsp"); 
            pageToDisplay.forward(request, response);
        }
        */
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
        String coords = request.getParameter("coord");
        String [] test0 = coords.split(",", 0);
        int int_test0 = Integer.parseInt(test0[0]);
        int int_test1 = Integer.parseInt(test0[1]);
        
        HttpSession session = request.getSession(); 
        session.setAttribute("character_x", int_test0);
        session.setAttribute("character_y", int_test1);
        RequestDispatcher pageToDisplay; 
        pageToDisplay = request.getRequestDispatcher("/WEB-INF/game_scene1.jsp?x="+int_test0+
                "&y="+int_test1);
        pageToDisplay.forward(request, response);
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
