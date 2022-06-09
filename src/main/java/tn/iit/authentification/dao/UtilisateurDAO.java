package tn.iit.authentification.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.cj.xdevapi.Result;

import tn.iit.authentification.model.Utilisateur;
import tn.iit.util.JDBCUtil;

public class UtilisateurDAO {
	public static void save(Utilisateur u) {
		String query = "insert into Utilisateur(nom,prenom,login,motdepasse) values ('" + u.getNom() + "', '"
				+ u.getPrenom() + "', '" + u.getLogin() + "','" + u.getPwd() + "')";
		try {
			JDBCUtil.getStatement().executeUpdate(query);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public static Utilisateur findByLoginPwd(String login, String pwd) {
		Utilisateur u = null;
		String query = "select * from Utilisateur where login='"+u.getLogin()+"' and motdepasse='"+u.getPwd()+"'";
		try {
			ResultSet rs= JDBCUtil.getStatement().executeQuery(query);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		ResultSet rs;
		
		return u;
	}
}
