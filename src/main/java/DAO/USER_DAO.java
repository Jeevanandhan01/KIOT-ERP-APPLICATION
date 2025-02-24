package DAO;

import DBCONNECTION.DataBaseConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class USER_DAO {
    public boolean checkUser(String username, String password) {
        try {
            Connection conn = DataBaseConnection.provideConnection();
            String query = "SELECT * FROM users WHERE username = ? AND password = ?";
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);

            return ps.executeQuery().next();
        }
        catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public String getRole(String username) {
        try {
            Connection conn = DataBaseConnection.provideConnection();
            String query = "SELECT role FROM users WHERE username = ?";
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ResultSet resultSet = ps.executeQuery();
            if(resultSet.next()) {
                return resultSet.getString("role");
            }
        }
        catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
