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

    public static void add(    int id_matiere,int id_etudiant,int nodetp,int nodeds,int noteexaman,int notepresecielle,int id_compostage) {
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
           n.setNoteexaman(noteexaman);
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

  
/*
    public static void update(String id, String libelle, String volumec, String volumetd, String volumetp, String coefficient, String credit, int id_num_compostage, int id_enseignant) {
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
        h.setId_compostage(id_num_compostage);
        h.setId_enseignant(id_enseignant);

        session.update(h); //Update to the database table
        session.getTransaction().commit();

    }
*/
   
}
