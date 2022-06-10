package tn.iit.authentification.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import tn.iit.authentification.model.Impression;

import tn.iit.util.JDBCUtil;

public class ImpressionDAO {

	public List<Impression> getAll() {
        Statement st = JDBCUtil.getStatement();
        String req = "select * from matiere;";

        List<Impression> list = new ArrayList<Impression>();
        try {
            ResultSet rs = st.executeQuery(req);

            while (rs.next()) {
            	Impression a = new Impression(rs.getInt("id"), rs.getInt("id_utilisateur"),rs.getInt("nbr_copie"),rs.getDate("rec_date"),rs.getString("cours"));
                list.add(a);
            }

        } catch (SQLException ex) {
            Logger.getLogger(ImpressionDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
	
}
