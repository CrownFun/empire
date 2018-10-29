
package logic;

import model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import util.DbUtil;


public class Logowanie {

    public static User zaloguj(String login, String password) throws ClassNotFoundException, SQLException {

        User user = null;
        String SqlQuery = "Select * FROM uzytkownicy where user=? and pass=?";

        try (Connection conn = DbUtil.getInstance().getConnection();
                PreparedStatement ps = conn.prepareStatement(SqlQuery);) {

            ps.setString(1, login);
            ps.setString(2, password);

            ResultSet result = ps.executeQuery();

            if (result.next()) {
                user = new User();
                user.setLogin(result.getString("user"));
                user.setZloto(result.getString("zloto"));
                user.setZelazo(result.getString("zelazo"));
                user.setDrewno(result.getString("drewno"));
                user.setRycerze(result.getString("rycerze"));
                user.setLucznicy(result.getString("lucznicy"));
                user.setMachiny(result.getString("machiny"));
                user.setEmail(result.getString("email"));
                user.setDniPremium(result.getString("dnipremium"));

            }

            result.close();
            conn.close();

        } catch (SQLException e) {

        }

        return user;
    }

}
