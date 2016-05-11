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
public class Niveau {
    public int id;
    public String nom;
    public int nb_groupe;

    public Niveau() {
    }

    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public int getNb_groupe() {
        return nb_groupe;
    }

    public void setNb_groupe(int nb_groupe) {
        this.nb_groupe = nb_groupe;
    }
    
    
}
