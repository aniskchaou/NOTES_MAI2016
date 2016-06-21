/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tn.iit.controller;

import iit.tn.entity.Enseignant;
import iit.tn.entity.EnseignantDAO;
import iit.tn.entity.EtudiantDAO;
import iit.tn.entity.Matiere;
import iit.tn.entity.MatiereDAO;
import iit.tn.entity.Matiere;
import iit.tn.entity.MatiereDAO;
import iit.tn.entity.Matiere;
import iit.tn.entity.Niveau;
import iit.tn.entity.NumCompostage;
import iit.tn.entity.NumCompostageDAO;
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
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Hsin
 */
@WebServlet(name = "MatiereController", urlPatterns = {"/MatiereController"})
public class MatiereController extends HttpServlet {

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
            rd = getServletContext().getRequestDispatcher("/listeMatiere.jsp");
            List<Matiere> matieres = MatiereDAO.getAll();
            HttpSession ses = request.getSession();
            ses.setAttribute("matieres", matieres);
            rd.forward(request, response);

            if (rd == null) {
                response.sendError(404);
            }

            rd.forward(request, response);
        } else if (request.getParameter("action").equals("show")) {
            RequestDispatcher rd;
            rd = getServletContext().getRequestDispatcher("/showMatiere.jsp");
            Matiere matiere = MatiereDAO.getMatiereById(request.getParameter("id"));
            HttpSession ses = request.getSession();
            ses.setAttribute("matiere", matiere);

            if (rd == null) {
                response.sendError(404);
            }

            rd.forward(request, response);
        } else if (request.getParameter("action").equals("edit")) {

            RequestDispatcher rd;
            rd = getServletContext().getRequestDispatcher("/editerMatiere.jsp");
            Matiere matiere = MatiereDAO.getMatiereById(request.getParameter("id"));
            HttpSession ses = request.getSession();
            ses.setAttribute("matiere_edit", matiere);
            List<NumCompostage>    num_compostages=NumCompostageDAO.getAll();
            ses.setAttribute("num_compostages", num_compostages);
            List<Enseignant>   enseignants=EnseignantDAO.getAll();
            ses.setAttribute("enseignants", enseignants);
            if (rd == null) {
                response.sendError(404);
            }

            rd.forward(request, response);

        } else if (request.getParameter("action").equals("delete")) {
            MatiereDAO.delete(request.getParameter("id"));

            RequestDispatcher rd;
            rd = getServletContext().getRequestDispatcher("/listeMatiere.jsp");
            List<Matiere> matieres = MatiereDAO.getAll();
            HttpSession ses = request.getSession();
            ses.setAttribute("matieres", matieres);
            rd.forward(request, response);

            if (rd == null) {
                response.sendError(404);
            }

            rd.forward(request, response);
        } else if (request.getParameter("action").equals("add")) {
            RequestDispatcher rd;
            rd = getServletContext().getRequestDispatcher("/addMatiere.jsp");
            if (rd == null) {
                response.sendError(404);
            }
                List<NumCompostage>    num_compostages=NumCompostageDAO.getAll();
                HttpSession   ses=request.getSession();
            ses.setAttribute("num_compostages", num_compostages);
            List<Enseignant>   enseignants=EnseignantDAO.getAll();
            ses.setAttribute("enseignants", enseignants);
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
       
    
        
        
         if (request.getParameter("action").equals("update")) {

            MatiereDAO.update(request.getParameter("id") ,request.getParameter("libelle") , request.getParameter("volumec") , request.getParameter("volumetd") , request.getParameter("volumetp") , request.getParameter("coef") , request.getParameter("credit") ,Integer.parseInt(request.getParameter("id_enseignant")));
            
            
            RequestDispatcher rd;
            rd = getServletContext().getRequestDispatcher("/listeMatiere.jsp");
            if (rd == null) {
                response.sendError(404);
            }
                
            List<Matiere> matieres = MatiereDAO.getAll();
            HttpSession ses = request.getSession();
            ses.setAttribute("matieres", matieres);
            rd.forward(request, response);

        } else if (request.getParameter("action").equals("ajouter_matiere")) {
            MatiereDAO. add(request.getParameter("libelle") , request.getParameter("volumec") , request.getParameter("volumetd") , request.getParameter("volumetp") , request.getParameter("coef") , request.getParameter("credit")   ,request.getParameter("id_enseignant") );
    
            
            RequestDispatcher rd;
            rd = getServletContext().getRequestDispatcher("/listeMatiere.jsp");
            if (rd == null) {
                response.sendError(404);
            }
            List<Matiere> matieres = MatiereDAO.getAll();
            HttpSession ses = request.getSession();
            ses.setAttribute("matieres", matieres);
            rd.forward(request, response);
        }
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
