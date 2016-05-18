<%-- 
    Document   : menu
    Created on : May 15, 2016, 4:14:08 PM
    Author     : Hsin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<ul class="nav nav-pills" style="margin: auto; width: 60%;padding: 10px;">
  <li role="presentation" class="active"><a   href="http://localhost:47032/projet_java/Index?action=list">Acceuil</a></li>
  <li role="presentation"><a    href="http://localhost:47032/projet_java/MatiereController?action=list">Matiere</a></li>
  <li role="presentation"><a   href="http://localhost:47032/projet_java/EnseignantController?action=list">Enseignant</a></li>
  <li role="presentation"><a  href="http://localhost:47032/projet_java/NiveauController?action=list">Niveau</a></li>
  <li role="presentation"><a  href="http://localhost:47032/projet_java/EtudiantController?action=list">Etudiant</a></li>
  <li role="presentation"><a  href="http://localhost:47032/projet_java/NoteController?action=list">Note</a></li>
  <li role="presentation"><a  href="http://localhost:47032/projet_java/GroupeController?action=list">Groupe</a></li>
</ul>