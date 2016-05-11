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
public class EnseignantDAO {
    
     
    
        public static  List getAll()
    {
         Session session=null;
    HibernateUtil helper=null;
        session=helper.getSessionFactory().openSession();
        session.beginTransaction();
        List<Enseignant> liste = session.createCriteria(Enseignant.class).list();
        return liste;
    }
        
           public static  Enseignant  getEnseignantById(String id) {
               Session session=null;
    HibernateUtil helper=null;
         session=helper.getSessionFactory().openSession();
        session.beginTransaction();
    Criteria criteria = session.createCriteria(Enseignant.class);
criteria.add(Restrictions.eq("id", Integer.parseInt(id)));
Enseignant  member=(Enseignant)criteria.uniqueResult();
        
        return member ;
    }
           
           
        public static void update(String id,String nom,String prenom,String adresse,String matricule,String tel,String id_groupe,String id_matiere )
  {
                         Session session=null;
    HibernateUtil helper=null;
       session=helper.getSessionFactory().openSession();
        session.beginTransaction();
     Enseignant  e= (Enseignant) session.get(Enseignant.class, Integer.parseInt(id)); //Retrieving object which we want to update
          
     e.setNom(nom);
            e.setPrenom(prenom);
            e.setAdresse(adresse);
            e.setMatricule_fiscale(matricule);
            e.setTel(Integer.parseInt(tel));
            e.setId_groupe(Integer.parseInt(id_groupe));
            e.setId_matiere(Integer.parseInt(id_matiere));

 
      
      session.update(e); //Update to the database table
        session.getTransaction().commit();
         

}
}
