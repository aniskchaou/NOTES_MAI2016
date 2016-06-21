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
import iit.tn.entity.Matiere;
import iit.tn.entity.MatiereDAO;
import iit.tn.entity.Niveau;
import iit.tn.entity.NiveauDAO;
import iit.tn.entity.Note;
import iit.tn.entity.NoteDAO;
import iit.tn.entity.NumCompostage;
import iit.tn.entity.NumCompostageDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Random;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Hsin
 */
public class NoteController extends HttpServlet {

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
            rd = getServletContext().getRequestDispatcher("/listeNote.jsp");
         List<Note> notes = NoteDAO.getAll();
              HttpSession ses = request.getSession();
                ses.setAttribute("notes", notes);
          
    
 
            if (rd == null) {
                response.sendError(404);
            }

            rd.forward(request, response);
        }  else if (request.getParameter("action").equals("edit")) {

            RequestDispatcher rd;
            rd = getServletContext().getRequestDispatcher("/editerNiveau.jsp");
            Niveau niveau = NiveauDAO.getNiveauById(request.getParameter("id"));
            HttpSession ses = request.getSession();
            ses.setAttribute("niveau", niveau);

            if (rd == null) {
                response.sendError(404);
            }

            rd.forward(request, response);

        } else if (request.getParameter("action").equals("add")) {
            RequestDispatcher rd;
            rd = getServletContext().getRequestDispatcher("/addNote.jsp");
            if (rd == null) {
                response.sendError(404);
            }
         List<Matiere> matieres=MatiereDAO.getAll();
            List<NumCompostage> numcompostages=NumCompostageDAO.getAll();
            List<Etudiant>  etudiants=EtudiantDAO.getAll(); 
            
            
            HttpSession ses = request.getSession();
           ses.setAttribute("etudiants", etudiants);
            ses.setAttribute("matieres", matieres);
            
            rd.forward(request, response);

        }else  if (request.getParameter("action").equals("showall")){
                     RequestDispatcher rd;
            rd = getServletContext().getRequestDispatcher("/listNoteComplet.jsp");
         List<Note> notes = NoteDAO.getAll();
              HttpSession ses = request.getSession();
                ses.setAttribute("notes", notes);
          
    
 
            if (rd == null) {
                response.sendError(404);
            }

            rd.forward(request, response);
        }else if (request.getParameter("action").equals("imprimer")){
          
       
              List<Note> notess = NoteDAO.getAll();
                HttpSession ses = request.getSession();
                ses.setAttribute("notes", notess);
               RequestDispatcher rd;
            rd = getServletContext().getRequestDispatcher("/imprimerNote.jsp");
            if (rd == null) {
                response.sendError(404);
            }
           
      rd.forward(request, response);
        
        }else if(request.getParameter("action").equals("delete"))
        {
            NoteDAO.delete(request.getParameter("id"));
               RequestDispatcher rd;
            rd = getServletContext().getRequestDispatcher("/listeNote.jsp");
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
        if (request.getParameter("action").equals("create")) {
            int max=10000;
            int min=1;
             Random rand = new Random();
             int randomNum = rand.nextInt((max - min) + 1) + min;
            NoteDAO. add( Integer.parseInt(request.getParameter("id_matiere")),
                   Integer.parseInt(request.getParameter("id_etudiant")) ,
                   Integer.parseInt(request.getParameter("notetp")) , 
                  Integer.parseInt(request.getParameter("noteds"))  ,
                  Integer.parseInt( request.getParameter("notepresencielle")) ,
                  randomNum  );

            
            
           List<Note> notess = NoteDAO.getAll();
                HttpSession ses = request.getSession();
                ses.setAttribute("note", notess);
               RequestDispatcher rd;
            rd = getServletContext().getRequestDispatcher("/addNoteExamen.jsp");
            if (rd == null) {
                response.sendError(404);
            }
           
      rd.forward(request, response);
        }else if (request.getParameter("action").equals("setnoteexaman")){
           NoteDAO.update(Integer.parseInt(request.getParameter("id")), Integer.parseInt(request.getParameter("id_compostage") ),Integer.parseInt(request.getParameter("noteexaman")));
       
              List<Note> notess = NoteDAO.getAll();
                HttpSession ses = request.getSession();
                ses.setAttribute("notes", notess);
               RequestDispatcher rd;
            rd = getServletContext().getRequestDispatcher("/addNoteExamen.jsp");
            if (rd == null) {
                response.sendError(404);
            }
           
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
