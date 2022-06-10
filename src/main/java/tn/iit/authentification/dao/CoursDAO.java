/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tn.iit.authentification.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import tn.iit.authentification.model.Cours;
import tn.iit.util.JDBCUtil;

/**
 *
 * @author tunin
 */
public class CoursDAO {
    
    public List<Cours> getCours(int id) {
        Statement st = JDBCUtil.getStatement();

        String req = "select * from cours where id_utilisateur='" + id +"';";

        List<Cours> list = new ArrayList<Cours>();
        try {
            ResultSet rs = st.executeQuery(req);

            while (rs.next()) {
            	Cours a = new Cours(rs.getInt("id"), rs.getString("nom"),rs.getString("id_utilisateur"),rs.getInt("nbr_etudiant"));
                list.add(a);
            }

        } catch (SQLException ex) {
            Logger.getLogger(CoursDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    
    
}
