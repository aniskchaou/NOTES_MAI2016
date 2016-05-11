/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tn.iit.controller;

import iit.tn.entity.Enseignant;
import iit.tn.entity.Etudiant;
import iit.tn.entity.EtudiantDAO;
import static iit.tn.entity.EtudiantDAO.getAll;
import iit.tn.entity.Groupe;
import iit.tn.entity.GroupeDAO;
import iit.tn.entity.Matiere;
import iit.tn.entity.MatiereDAO;
import iit.tn.entity.Niveau;
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
@WebServlet(name = "EtudiantController", urlPatterns = {"/EtudiantController"})
public class EtudiantController extends HttpServlet {

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
            rd = getServletContext().getRequestDispatcher("/listeEtudiant.jsp");
            List<Etudiant> etudiants = EtudiantDAO.getAll();
            HttpSession ses = request.getSession();
            ses.setAttribute("etudiants", etudiants);
            List<Groupe>  groupes=GroupeDAO.getAll();
            ses.setAttribute("groupes", groupes);
           List<Matiere> matieres=MatiereDAO.getAll();
           ses.setAttribute("matieres", matieres);
           
            if (rd == null) {
                response.sendError(404);
            }

            rd.forward(request, response);
        } else if (request.getParameter("action").equals("show")) {
            RequestDispatcher rd;
            rd = getServletContext().getRequestDispatcher("/showEtudiant.jsp");
            Etudiant etudiant = EtudiantDAO.getEtudiantById(request.getParameter("id"));
            HttpSession ses = request.getSession();
            ses.setAttribute("etudiant", etudiant);

            if (rd == null) {
                response.sendError(404);
            }

            rd.forward(request, response);
        } else if (request.getParameter("action").equals("edit")) {
              
              RequestDispatcher rd;
            rd = getServletContext().getRequestDispatcher("/editerEtudiant.jsp");
            Etudiant etudiant = EtudiantDAO.getEtudiantById(request.getParameter("id"));
            HttpSession ses = request.getSession();
            ses.setAttribute("etudiant_edit", etudiant);

            if (rd == null) {
                response.sendError(404);
            }

            rd.forward(request, response);
            
            
        }else if  (request.getParameter("action").equals("delete"))
        {
            EtudiantDAO.delete(request.getParameter("id"));
            
            
            RequestDispatcher rd;
            rd = getServletContext().getRequestDispatcher("/listeEtudiant.jsp");
            List<Etudiant> etudiants = EtudiantDAO.getAll();
            HttpSession ses = request.getSession();
            ses.setAttribute("etudiants", etudiants);
             if (rd == null) {
                response.sendError(404);
            }

            rd.forward(request, response);
        }else if(request.getParameter("action").equals("add"))
        {
            RequestDispatcher rd;
            rd = getServletContext().getRequestDispatcher("/addEtudiant.jsp");
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
        // add(request.getParameter("nom") , request.getParameter("prenom"),  request.getParameter("numserie"), request.getParameter("tel"),  request.getParameter("id_groupe"), request.getParameter("id_matiere")) ;
        
        //out.print(request.getParameter("nom") +""+request.getParameter("prenom")+""+request.getParameter("tel")+""+request.getParameter("id_grouper"));

        if (request.getParameter("action").equals("update")) {
            
           EtudiantDAO.update(response,request.getParameter("id") ,request.getParameter("nom") , request.getParameter("prenom"),  request.getParameter("numserie"), request.getParameter("tel"),  request.getParameter("id_groupe"), request.getParameter("id_matiere"));
             RequestDispatcher rd;
            rd = getServletContext().getRequestDispatcher("/listeEtudiant.jsp");
            if (rd == null) {
                response.sendError(404);
            }
               List<Etudiant> etudiants = EtudiantDAO.getAll();
            HttpSession ses = request.getSession();
            ses.setAttribute("etudiants", etudiants);
            rd.forward(request, response);
            
        }else if(request.getParameter("action").equals("create"))
        {
            EtudiantDAO.add(request.getParameter("nom") , request.getParameter("prenom"),  request.getParameter("numserie"), request.getParameter("tel"),  request.getParameter("id_groupe"), request.getParameter("id_matiere"));
             RequestDispatcher rd;
            rd = getServletContext().getRequestDispatcher("/listeEtudiant.jsp");
            if (rd == null) {
                response.sendError(404);
            }
               List<Etudiant> etudiants = EtudiantDAO.getAll();
            HttpSession ses = request.getSession();
            ses.setAttribute("etudiants", etudiants);
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
