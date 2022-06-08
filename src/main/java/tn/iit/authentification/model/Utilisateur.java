package tn.iit.authentification.model;

public class Utilisateur {
	private int id;
	private String nom = "";
	private String prenom = "";
	private String login = "";
	private String pwd = "";

	public Utilisateur() {
		super();
	}

	public Utilisateur(int id, String nom, String prenom, String login, String pwd) {
		super();
		this.setId(id);
		this.nom = nom;
		this.prenom = prenom;
		this.login = login;
		this.pwd = pwd;
	}

	public Utilisateur(Utilisateur copie) {
		super();
		this.id = copie.id;
		this.nom = copie.nom;
		this.prenom = copie.prenom;
		this.login = copie.login;
		this.pwd = copie.pwd;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

}
