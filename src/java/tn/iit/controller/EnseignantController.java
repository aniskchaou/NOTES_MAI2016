/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tn.iit.controller;

import iit.tn.entity.Enseignant;
import iit.tn.entity.EnseignantDAO;
import iit.tn.entity.Etudiant;
import iit.tn.entity.EtudiantDAO;
import iit.tn.entity.Groupe;
import iit.tn.entity.GroupeDAO;
import iit.tn.entity.Matiere;
import iit.tn.entity.MatiereDAO;
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
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Hsin
 */
@WebServlet(name = "EnseignantController", urlPatterns = {"/EnseignantController"})
public class EnseignantController extends HttpServlet {

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
            rd = getServletContext().getRequestDispatcher("/listeEnseignant.jsp");
            List<Enseignant> enseignants= EnseignantDAO.getAll();
            HttpSession ses = request.getSession();
            ses.setAttribute("enseignants", enseignants);

            if (rd == null) {
                response.sendError(404);
            }

            rd.forward(request, response);
        } else if (request.getParameter("action").equals("show")) {
            RequestDispatcher rd;
            rd = getServletContext().getRequestDispatcher("/showEnseignant.jsp");
            Enseignant enseignant = EnseignantDAO.getEnseignantById(request.getParameter("id"));
            HttpSession ses = request.getSession();
            ses.setAttribute("enseignant", enseignant);

            if (rd == null) {
                response.sendError(404);
            }

            rd.forward(request, response);
        } else if (request.getParameter("action").equals("edit")) {
              
              RequestDispatcher rd;
            rd = getServletContext().getRequestDispatcher("/editerEnseignant.jsp");
            Enseignant enseignant = EnseignantDAO.getEnseignantById(request.getParameter("id"));
            HttpSession ses = request.getSession();
            ses.setAttribute("enseignant_edit", enseignant);
           List<Groupe>  groupes=GroupeDAO.getAll();
           List<Matiere> matieres=MatiereDAO.getAll();
           ses.setAttribute("groupes", groupes);
           ses.setAttribute("matieres", matieres);
            if (rd == null) {
                response.sendError(404);
            }

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
            
           EnseignantDAO.update(request.getParameter("id") , request.getParameter("nom"), request.getParameter("prenom") ,  request.getParameter("adresse"), request.getParameter("matricule"), request.getParameter("tel"),request. getParameter("id_groupe"),   request.getParameter("id_matiere"));
             RequestDispatcher rd;
            rd = getServletContext().getRequestDispatcher("/listeEnseignant.jsp");
            if (rd == null) {
                response.sendError(404);
            }
               List<Enseignant> enseignants = EnseignantDAO.getAll();
            HttpSession ses = request.getSession();
            ses.setAttribute("enseignants", enseignants);
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
