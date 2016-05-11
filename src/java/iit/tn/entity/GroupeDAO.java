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
public class GroupeDAO {

    public static void add(String nom, String id_niveau) {
        Session session = null;
        HibernateUtil helper = null;
        try {
            session = helper.getSessionFactory().openSession();
            session.beginTransaction();

            Groupe g = new Groupe();
            g.setId_niveau(Integer.parseInt(id_niveau));
            g.setNom(nom);

            session.save(g);
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
        List<Groupe> liste = session.createCriteria(Groupe.class).list();
        return liste;
    }

    public static void update(String id, String nom, String id_niveau) {
        Session session = null;
        HibernateUtil helper = null;
        session = helper.getSessionFactory().openSession();
        session.beginTransaction();
        Groupe h = (Groupe) session.get(Groupe.class, Integer.parseInt(id)); //Retrieving object which we want to update
        h.setId_niveau(Integer.parseInt(id_niveau));
        h.setNom(nom);

        session.update(h); //Update to the database table
        session.getTransaction().commit();

    }

    public static Groupe getGroupeById(String id) {
        Session session = null;
        HibernateUtil helper = null;
        session = helper.getSessionFactory().openSession();
        session.beginTransaction();
        Criteria criteria = session.createCriteria(Groupe.class);
        criteria.add(Restrictions.eq("id", Integer.parseInt(id)));
        Groupe member = (Groupe) criteria.uniqueResult();

        return member;
    }

    public static void delete(String id) {
        Session session = null;
        HibernateUtil helper = null;
        session = helper.getSessionFactory().openSession();
        session.beginTransaction();

        Groupe g = (Groupe) session.createCriteria(Groupe.class)
                .add(Restrictions.eq("id", Integer.parseInt(id))).uniqueResult();
        session.delete(g);
        session.getTransaction().commit();
    }
}
