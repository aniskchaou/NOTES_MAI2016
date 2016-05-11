/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package iit.tn.entity;

import iit.tn.mapping.HibernateUtil;
import java.util.List;
import org.hibernate.Session;

/**
 *
 * @author Hsin
 */
public class NumCompostageDAO {

    public  static void add(String numcompostage) {
        Session session = null;
        HibernateUtil helper = null;
        try {
            session = helper.getSessionFactory().openSession();
            session.beginTransaction();

            NumCompostage comp = new NumCompostage();

            comp.setNum_compostage(numcompostage);

            session.save(comp);
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
        List<NumCompostage> liste = session.createCriteria(NumCompostage.class).list();
        return liste;
    }

}
