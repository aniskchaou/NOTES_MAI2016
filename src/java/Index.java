/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import iit.tn.entity.Enseignant;
import iit.tn.entity.EnseignantDAO;
import iit.tn.entity.Matiere;
import iit.tn.entity.MatiereDAO;
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

/**
 *
 * @author Hsin
 */
@WebServlet(urlPatterns = {"/Index"})
public class Index extends HttpServlet {

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
            out.println("<title>Servlet Index</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<a href='http://localhost:47032/projet_java/addGroupe.jsp'> ajouter groupe</a>");
              out.println("<a href='http://localhost:47032/projet_java/addNiveau.jsp'> ajouter groupe</a>");
              out.println("<a href='http://localhost:47032/projet_java/addnumCompostage.jsp'> ajouter compostage</a>");
              out.println("<a href='http://localhost:47032/projet_java/addMatiere.jsp'> ajouter matiere</a>");
              out.println("<a href='http://localhost:47032/projet_java/addEtudiant.jsp'> ajouter etudiant</a>");
              out.println("<a href='http://localhost:47032/projet_java/listeMatiere.jsp'> liste matiere</a>");
              out.println("<a href='http://localhost:47032/projet_java/listeNiveau.jsp'> liste nivau</a>");
              out.println("<a href='http://localhost:47032/projet_java/listeGroupe.jsp'> liste groupe</a>");
              out.println("<a href='http://localhost:47032/projet_java/EtudiantController?action=list'> liste etudiant</a>");
              out.println("<a href='http://localhost:47032/projet_java/listeEnseignant.jsp'> liste enseignant</a>");
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
        RequestDispatcher rd;
            
            HttpSession ses = request.getSession();
            String      connexion;
        connexion = (String)ses.getAttribute("user_connection");
         if(connexion==null)
         {
             rd = getServletContext().getRequestDispatcher("/login.jsp");
         }else
         {
              rd = getServletContext().getRequestDispatcher("/index.jsp");
         }
            if (rd == null) {
                response.sendError(404);
            }

            rd.forward(request, response);
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
       Enseignant   log=EnseignantDAO.login(request.getParameter("matriculefiscale"));
       RequestDispatcher rd;
      if(log!=null)
      {
            rd = getServletContext().getRequestDispatcher("/index.jsp");
            HttpSession ses = request.getSession();
            ses.setAttribute("enseignant_connexion", log);
            List<Matiere> matieres=MatiereDAO.getMatiereByEnseignant(String.valueOf(log.getId()));
            ses.setAttribute("matieres", matieres);
      }else
      {
            rd = getServletContext().getRequestDispatcher("/login.jsp");
      }
      
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
