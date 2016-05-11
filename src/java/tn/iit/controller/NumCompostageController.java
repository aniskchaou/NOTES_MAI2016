/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tn.iit.controller;

import iit.tn.entity.NumCompostage;
import iit.tn.entity.NumCompostageDAO;
import iit.tn.entity.Niveau;
import iit.tn.entity.NumCompostage;
import iit.tn.mapping.HibernateUtil;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.hibernate.Session;

/**
 *
 * @author Hsin
 */
@WebServlet(name = "NumCompostageController", urlPatterns = {"/NumCompostageController"})
public class NumCompostageController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
     


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
         if (request.getParameter("action").equals("list")) {
            RequestDispatcher rd;
            rd = getServletContext().getRequestDispatcher("/listeCompostage.jsp");
            List<NumCompostage> numcompostages = NumCompostageDAO.getAll();
            HttpSession ses = request.getSession();
            ses.setAttribute("numcompostages", numcompostages);
            rd.forward(request, response);

            if (rd == null) {
                response.sendError(404);
            }

            rd.forward(request, response);
        }else if (request.getParameter("action").equals("add")) {
            RequestDispatcher rd;
            rd = getServletContext().getRequestDispatcher("/addnumCompostage.jsp");
            if (rd == null) {
                response.sendError(404);
            }
           NumCompostageDAO.add(request.getParameter("numcompostage"));
            rd.forward(request, response);

        }
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
     
        
    
            NumCompostageDAO. add(request.getParameter("numcompostage"));
            
            RequestDispatcher rd;
            rd = getServletContext().getRequestDispatcher("/listeCompostage.jsp");
            if (rd == null) {
                response.sendError(404);
            }
            List<NumCompostage> numcompostages = NumCompostageDAO.getAll();
            HttpSession ses = request.getSession();
            ses.setAttribute("numcompostages", numcompostages);
            rd.forward(request, response);
        
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
