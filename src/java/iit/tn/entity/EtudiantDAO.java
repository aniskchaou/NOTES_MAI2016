/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package iit.tn.entity;

import iit.tn.mapping.HibernateUtil;
import java.io.IOException;
import java.util.List;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Hsin
 */
public class EtudiantDAO {

    public static void add(String nom, String prenom, String numserie, String tel, String id_groupe, String id_matiere) {
        Session session = null;
        HibernateUtil helper = null;
        try {
            session = helper.getSessionFactory().openSession();
            session.beginTransaction();

            Etudiant e = new Etudiant();
            e.setNom(nom);
            e.setPrenom(prenom);
            e.setNumserie(numserie);
            e.setTel(Integer.parseInt(tel));
            e.setId_groupe(Integer.parseInt(id_groupe));
            e.setId_matiere(Integer.parseInt(id_matiere));

            session.save(e);
            session.getTransaction().commit();
            session.flush();
            session.close();
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }
    }

    public static List getAll() {
        Session session = null;
        HibernateUtil helper = null;
        session = helper.getSessionFactory().openSession();
        session.beginTransaction();
        List<Etudiant> liste = session.createCriteria(Etudiant.class).list();
        return liste;
    }

    public static Etudiant getEtudiantById(String id) {
        Session session = null;
        HibernateUtil helper = null;
        session = helper.getSessionFactory().openSession();
        session.beginTransaction();
        Criteria criteria = session.createCriteria(Etudiant.class);
        criteria.add(Restrictions.eq("id", Integer.parseInt(id)));
        Etudiant member = (Etudiant) criteria.uniqueResult();

        return member;
    }

    public static void update(HttpServletResponse response, String id, String nom, String prenom, String numserie, String tel, String id_groupe, String id_matiere) throws IOException {
        Session session = null;
        HibernateUtil helper = null;
        session = helper.getSessionFactory().openSession();
        session.beginTransaction();
        Etudiant etu = (Etudiant) session.get(Etudiant.class, Integer.parseInt(id)); //Retrieving object which we want to update

        etu.setNom(nom);
        etu.setPrenom(prenom);
        etu.setNumserie(numserie);
        etu.setTel(Integer.parseInt(tel));
        etu.setId_groupe(Integer.parseInt(id_groupe));
        etu.setId_matiere(Integer.parseInt(id_matiere));

        session.update(etu); //Update to the database table
        session.getTransaction().commit();

    }

    public static void delete(String id) {
        Session session = null;
        HibernateUtil helper = null;
        session = helper.getSessionFactory().openSession();
        session.beginTransaction();
        
        Etudiant h = (Etudiant) session.createCriteria(Etudiant.class)
                .add(Restrictions.eq("id", Integer.parseInt(id))).uniqueResult();
        session.delete(h);
        session.getTransaction().commit();
    }
}
