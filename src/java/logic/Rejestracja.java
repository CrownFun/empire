
package logic;

import model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import util.DbUtil;


public class Rejestracja {

    public static void zarejestruj(String nick, String pass, String email) throws ClassNotFoundException, SQLException {

        User newUser = new User();

        newUser.setLogin(nick);
        newUser.setPassword(pass);
        newUser.setEmail(email);

        String sqlQuery = "INSERT INTO uzytkownicy VALUES(NULL,?,?,?,100,100,100,14,50,50,5)";
        try (Connection conn = DbUtil.getInstance().getConnection();
                PreparedStatement ps = conn.prepareStatement(sqlQuery);) {

            ps.setString(1, newUser.getLogin());
            ps.setString(2, newUser.getPassword());
            ps.setString(3, newUser.getEmail());
            ps.executeUpdate();
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static boolean emailValidation(String email) throws ClassNotFoundException, SQLException {

        boolean isOk = true;
        String sqlQuery = "Select id from uzytkownicy WHERE email=?";
        try (Connection conn = DbUtil.getInstance().getConnection();
                PreparedStatement ps = conn.prepareStatement(sqlQuery);) {

            ps.setString(1, email);
            ResultSet result = ps.executeQuery();

            if (result.next()) {
                isOk = false;
            }
            conn.close();
            result.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return isOk;
    }

    public static boolean nicknameValidation(String nick) throws ClassNotFoundException, SQLException {
        boolean exist = true;

        String SqlQuery = "Select id from uzytkownicy where user=?";

        try (Connection conn = DbUtil.getInstance().getConnection();
                PreparedStatement ps = conn.prepareStatement(SqlQuery);) {

            ps.setString(1, nick);

            ResultSet result = ps.executeQuery();
            if (result.next()) {
                exist = false;
            }

            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return exist;
    }

    public static boolean passCorrect(String pass) {

        boolean isOK = false;

        if (pass.length() > 8 && pass.length() < 20) {
            isOK = true;
        }

        return isOK;

    }

}
