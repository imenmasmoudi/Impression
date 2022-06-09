package tn.iit.authentification.model;

public class Cours {
	private int id;
	private String nom = "";
	private String id_utilisateur = "";
	private int nbr_etudiant ;

	public Cours() {
		super();
	}

	public Cours(int id, String nom, String id_utilisateur, int nbr_etudiant ) {
		super();
		this.setId(id);
		this.nom = nom;
		this.id_utilisateur = id_utilisateur;
		this.nbr_etudiant = nbr_etudiant;

	}

	
	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getId_utilisateur() {
		return id_utilisateur;
	}

	public void setId_utilisateur(String id_utilisateur) {
		this.id_utilisateur = id_utilisateur;
	}

	public int getNbr_etudiant() {
		return nbr_etudiant;
	}

	public void setNbr_etudiant(int nbr_etudiant) {
		this.nbr_etudiant = nbr_etudiant;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

}
