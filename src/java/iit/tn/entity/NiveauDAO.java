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
public class NiveauDAO {

    public static void add(String nom, String nbgroupe) {
        Session session = null;
        HibernateUtil helper = null;
        try {
            session = helper.getSessionFactory().openSession();
            session.beginTransaction();

            Niveau n = new Niveau();

            n.setNom(nom);
            n.setNb_groupe(Integer.parseInt(nbgroupe));

            session.save(n);
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
        List<Niveau> liste = session.createCriteria(Niveau.class).list();
        return liste;
    }

    public static Niveau getNiveauById(String id) {
        Session session = null;
        HibernateUtil helper = null;
        session = helper.getSessionFactory().openSession();
        session.beginTransaction();
        Criteria criteria = session.createCriteria(Niveau.class);
        criteria.add(Restrictions.eq("id", Integer.parseInt(id)));
        Niveau member = (Niveau) criteria.uniqueResult();

        return member;
    }

    public static void update(String id, String nom, String nb_groupe) {
        Session session = null;
        HibernateUtil helper = null;
        session = helper.getSessionFactory().openSession();
        session.beginTransaction();
        Niveau h = (Niveau) session.get(Niveau.class, Integer.parseInt(id)); //Retrieving object which we want to update
        h.setNom(nom);
        h.setNb_groupe(Integer.parseInt(nb_groupe));

        //session.update(h); //Update to the database table
        session.getTransaction().commit();

    }

    public static void delete(String id) {
        Session session = null;
        HibernateUtil helper = null;
        session = helper.getSessionFactory().openSession();
        session.beginTransaction();

        Niveau n = (Niveau) session.createCriteria(Niveau.class)
                .add(Restrictions.eq("id", Integer.parseInt(id))).uniqueResult();
        session.delete(n);
        session.getTransaction().commit();
    }
}
