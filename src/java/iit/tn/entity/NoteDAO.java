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
public class NoteDAO {

    
    public static void add(    int id_matiere,int id_etudiant,int nodetp,int nodeds,int notepresecielle,int id_compostage) {
        Session session = null;
        HibernateUtil helper = null;
        try {
            session = helper.getSessionFactory().openSession();
            session.beginTransaction();

           Note n=new Note();
           
           n.setId_etudiant(id_etudiant);
           n.setId_compostage(id_compostage);
           n.setId_matiere(id_matiere);
           n.setNotetp(nodetp);
           n.setNodeds(nodeds);
           
           n.setNotepresecielle(notepresecielle);

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
        List<Note> liste = session.createCriteria(Note.class).list();
       return liste;
    }

  

    public static void update(int id,int id_num_compostage, int noteexamen) {
        Session session = null;
        HibernateUtil helper = null;
        session = helper.getSessionFactory().openSession();
        session.beginTransaction();
        Note h = (Note) session.get(Note.class,id); //Retrieving object which we want to update
        h.setNoteexaman(noteexamen);
   
      

        session.update(h); //Update to the database table
        session.getTransaction().commit();

    }
    
    
    
    
       public static void delete(String id) {
        Session session = null;
        HibernateUtil helper = null;
        session = helper.getSessionFactory().openSession();
        session.beginTransaction();

        Note h = (Note) session.createCriteria(Note.class)
                .add(Restrictions.eq("id", Integer.parseInt(id))).uniqueResult();
        session.delete(h);
        session.getTransaction().commit();
    }

   
}
