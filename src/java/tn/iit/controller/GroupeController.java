/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tn.iit.controller;

import iit.tn.entity.Etudiant;
import iit.tn.entity.EtudiantDAO;
import iit.tn.entity.Groupe;
import iit.tn.entity.GroupeDAO;
import iit.tn.entity.Matiere;
import iit.tn.entity.Niveau;
import iit.tn.entity.NiveauDAO;
import iit.tn.mapping.HibernateUtil;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.annotation.ManagedBean;
import javax.faces.bean.SessionScoped;
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
@ManagedBean
@SessionScoped
@WebServlet(name = "GroupeController", urlPatterns = {"/GroupeController"})
public class GroupeController extends HttpServlet {

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
            rd = getServletContext().getRequestDispatcher("/listeGroupe.jsp");
            List<Groupe> groupes = GroupeDAO.getAll();
            HttpSession ses = request.getSession();
            ses.setAttribute("groupes", groupes);
            rd.forward(request, response);

            if (rd == null) {
                response.sendError(404);
            }

            rd.forward(request, response);
        } else if (request.getParameter("action").equals("show")) {
            RequestDispatcher rd;
            rd = getServletContext().getRequestDispatcher("/showGroupe.jsp");
            Groupe groupe = GroupeDAO.getGroupeById(request.getParameter("id"));
            HttpSession ses = request.getSession();
            ses.setAttribute("groupe", groupe);

            if (rd == null) {
                response.sendError(404);
            }

            rd.forward(request, response);
        } else if (request.getParameter("action").equals("edit")) {

            RequestDispatcher rd;
            rd = getServletContext().getRequestDispatcher("/editerGroupe.jsp");
            Groupe groupe = GroupeDAO.getGroupeById(request.getParameter("id"));
            HttpSession ses = request.getSession();
            List<Niveau> niveaux=NiveauDAO.getAll();
            ses.setAttribute("groupe_edit", groupe);
           ses.setAttribute("niveaux", niveaux);
            if (rd == null) {
                response.sendError(404);
            }

            rd.forward(request, response);

        } else if (request.getParameter("action").equals("delete")) {
            GroupeDAO.delete(request.getParameter("id"));

            RequestDispatcher rd;
            rd = getServletContext().getRequestDispatcher("/listeGroupe.jsp");
            List<Groupe> groupes = GroupeDAO.getAll();
            HttpSession ses = request.getSession();
            ses.setAttribute("groupes", groupes);
            rd.forward(request, response);

            if (rd == null) {
                response.sendError(404);
            }

            rd.forward(request, response);
        } else if (request.getParameter("action").equals("add")) {
            RequestDispatcher rd;
            rd = getServletContext().getRequestDispatcher("/addGroupe.jsp");
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

            GroupeDAO.update(request.getParameter("id"), request.getParameter("nom"), request.getParameter("id_niveau"));
            RequestDispatcher rd;
            rd = getServletContext().getRequestDispatcher("/listeGroupe.jsp");
            if (rd == null) {
                response.sendError(404);
            }
            List<Groupe> groupes = GroupeDAO.getAll();
            HttpSession ses = request.getSession();
            ses.setAttribute("groupes", groupes);
            List<Niveau> niveaux=NiveauDAO.getAll();
            ses.setAttribute("niveaux", niveaux);
            rd.forward(request, response);

        } else if (request.getParameter("action").equals("ajouter_groupe")) {
            GroupeDAO.add(request.getParameter("nom"), request.getParameter("id_niveau"));
            RequestDispatcher rd;
            rd = getServletContext().getRequestDispatcher("/listeGroupe.jsp");
            if (rd == null) {
                response.sendError(404);
            }
            List<Groupe> groupes = GroupeDAO.getAll();
            HttpSession ses = request.getSession();
            ses.setAttribute("groupes", groupes);
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
