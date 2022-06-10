package tn.iit.authentification.model;

public class Cours {
	private int id;
	private String nom = "";
	private String idUtilisateur = "";
	private int nbrEtudiant;

	public Cours() {
		super();
	}

	public Cours(int id, String nom, String idUtilisateur, int nbrEtudiant) {
		super();
		this.setId(id);
		this.nom = nom;
		this.idUtilisateur = idUtilisateur;
		this.nbrEtudiant = nbrEtudiant;

	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getdUtilisateur() {
		return idUtilisateur;
	}

	public void setIdUtilisateur(String idUtilisateur) {
		this.idUtilisateur = idUtilisateur;
	}

	public int getNbrEtudiant() {
		return nbrEtudiant;
	}

	public void setNbrEtudiant(int nbrEtudiant) {
		this.nbrEtudiant = nbrEtudiant;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

}
