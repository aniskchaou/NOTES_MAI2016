/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package iit.tn.entity;

/**
 *
 * @author Hsin
 */
public class Note {
    int id;

    public void setId(int id) {
        this.id = id;
    }

    public int getId() {
        return id;
    }
    int id_matiere;
    int id_etudiant;
    int nodeds;
    int noteexaman;
    int notepresecielle;
    int notetp;
    int id_compostage;
    

    public Note() {
    }

    public int getId_matiere() {
        return id_matiere;
    }

    public int getId_etudiant() {
        return id_etudiant;
    }



    public int getNodeds() {
        return nodeds;
    }

    public int getNoteexaman() {
        return noteexaman;
    }

    public int getNotepresecielle() {
        return notepresecielle;
    }

    public int getId_compostage() {
        return id_compostage;
    }

    public void setId_matiere(int id_matiere) {
        this.id_matiere = id_matiere;
    }

    public void setId_etudiant(int id_etudiant) {
        this.id_etudiant = id_etudiant;
    }

    public int getNotetp() {
        return notetp;
    }

    public void setNotetp(int notetp) {
        this.notetp = notetp;
    }



    public void setNodeds(int nodeds) {
        this.nodeds = nodeds;
    }

    public void setNoteexaman(int noteexaman) {
        this.noteexaman = noteexaman;
    }

    public void setNotepresecielle(int notepresecielle) {
        this.notepresecielle = notepresecielle;
    }

    public void setId_compostage(int id_compostage) {
        this.id_compostage = id_compostage;
    }
    
    
}
