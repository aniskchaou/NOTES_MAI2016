/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package iit.tn.entity;

import iit.tn.mapping.HibernateUtil;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Hsin
 */
public class MatiereDAO {

    public static void add(String libelle, String volumec, String volumetd, String volumetp, String coefficient, String credit, String id_enseignant) {
        Session session = null;
        HibernateUtil helper = null;
        try {
            session = helper.getSessionFactory().openSession();
            session.beginTransaction();

            Matiere m = new Matiere();
            m.setLibelle(libelle);
            m.setVolumec(volumec);
            m.setVolumetd(volumetd);
            m.setVolumetp(volumetp);
            m.setCoeficient(coefficient);
            m.setCredit(credit);
            m.setId_compostage(0);
            m.setId_enseignant(Integer.parseInt(id_enseignant));

            session.save(m);
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
        List<Matiere> liste = session.createCriteria(Matiere.class).list();
        return liste;
    }

    public static Matiere getMatiereById(String id) {
        Session session = null;
        HibernateUtil helper = null;
        session = helper.getSessionFactory().openSession();
        session.beginTransaction();
        Criteria criteria = session.createCriteria(Matiere.class);
        criteria.add(Restrictions.eq("id", Integer.parseInt(id)));
        Matiere member = (Matiere) criteria.uniqueResult();

        return member;
    }

    public static void update(String id, String libelle, String volumec, String volumetd, String volumetp, String coefficient, String credit, int id_enseignant) {
        Session session = null;
        HibernateUtil helper = null;
        session = helper.getSessionFactory().openSession();
        session.beginTransaction();
        Matiere h = (Matiere) session.get(Matiere.class, Integer.parseInt(id)); //Retrieving object which we want to update
        h.setLibelle(libelle);
        h.setVolumec(volumec);
        h.setVolumetd(volumetd);
        h.setVolumetp(volumetp);
        h.setCoeficient(coefficient);
        h.setCredit(credit);
        h.setId_compostage(0);
        h.setId_enseignant(id_enseignant);

        session.update(h); //Update to the database table
        session.getTransaction().commit();

    }

    public static void delete(String id) {
        Session session = null;
        HibernateUtil helper = null;
        session = helper.getSessionFactory().openSession();
        session.beginTransaction();

        Matiere h = (Matiere) session.createCriteria(Matiere.class)
                .add(Restrictions.eq("id", Integer.parseInt(id))).uniqueResult();
        session.delete(h);
        session.getTransaction().commit();
    }
    
    public static List getMatiereByEnseignant(String id)
    {
        Session session = null;
        HibernateUtil helper = null;
        session = helper.getSessionFactory().openSession();
        session.beginTransaction();
        Criteria criteria = session.createCriteria(Matiere.class);
        criteria.add(Restrictions.eq("id_enseignant", Integer.parseInt(id)));
        List<Matiere> member =  criteria.list();

        return member;
    }
}
