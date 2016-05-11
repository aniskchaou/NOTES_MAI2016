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
public class Matiere {
    public int id;
    public String libelle;
    public String  volumec;
    public  String volumetd;
    public  String volumetp;
    public String coeficient;
    public String credit;
    public int id_enseignant;
    public int id_compostage;
    

    public Matiere() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getLibelle() {
        return libelle;
    }

    public void setLibelle(String libelle) {
        this.libelle = libelle;
    }

    public String getVolumec() {
        return volumec;
    }

    public void setVolumec(String volumec) {
        this.volumec = volumec;
    }

    public String getVolumetd() {
        return volumetd;
    }

    public void setVolumetd(String volumetd) {
        this.volumetd = volumetd;
    }

    public String getVolumetp() {
        return volumetp;
    }

    public void setVolumetp(String volumetp) {
        this.volumetp = volumetp;
    }

    public String getCoeficient() {
        return coeficient;
    }

    public void setCoeficient(String coeficient) {
        this.coeficient = coeficient;
    }

    public String getCredit() {
        return credit;
    }

    public void setCredit(String credit) {
        this.credit = credit;
    }

    public int getId_enseignant() {
        return id_enseignant;
    }

    public void setId_enseignant(int id_enseignant) {
        this.id_enseignant = id_enseignant;
    }

    public int getId_compostage() {
        return id_compostage;
    }

    public void setId_compostage(int id_compostage) {
        this.id_compostage = id_compostage;
    }

    
    
    
}
