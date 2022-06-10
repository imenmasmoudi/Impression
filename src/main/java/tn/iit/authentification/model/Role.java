package tn.iit.authentification.model;


public class Role {
	  private int id_role;
	  private String libelle;

	public Role() {
		super();
	}

	public Role(int id_role, String libelle) {
		super();
		this.id_role =id_role;
		this.libelle = libelle;
	
	}

	public Role(Role copie) {
		super();
		this.id_role = copie.id_role;
		this.libelle = copie.libelle;
		
	}

	public int getId_role() {
		return id_role;
	}

	public void setId_role(int id_role) {
		this.id_role = id_role;
	}

	public String getLibelle() {
		return libelle;
	}

	public void setLibelle(String libelle) {
		this.libelle = libelle;
	}

	

}
