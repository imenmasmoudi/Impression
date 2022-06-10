package tn.iit.authentification.model;

import java.sql.Date;

public class Impression {
	private int id;
	private int id_utilisateur;
	private int nbr_copie;
	private Date rec_date;
	private String cours;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getId_utilisateur() {
		return id_utilisateur;
	}
	public void setId_utilisateur(int id_utilisateur) {
		this.id_utilisateur = id_utilisateur;
	}
	public int getNbr_copie() {
		return nbr_copie;
	}
	public void setNbr_copie(int nbr_copie) {
		this.nbr_copie = nbr_copie;
	}
	public Date getRec_date() {
		return rec_date;
	}
	public void setRec_date(Date rec_date) {
		this.rec_date = rec_date;
	}
	public String getCours() {
		return cours;
	}
	public void setCours(String cours) {
		this.cours = cours;
	}
	public Impression(int id, int id_utilisateur, int nbr_copie, Date rec_date, String cours) {
		super();
		this.id = id;
		this.id_utilisateur = id_utilisateur;
		this.nbr_copie = nbr_copie;
		this.rec_date = rec_date;
		this.cours = cours;
	}
	

}
