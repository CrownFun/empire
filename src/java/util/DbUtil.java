
package util;

import com.mchange.v2.c3p0.ComboPooledDataSource;
import java.beans.PropertyVetoException;
import java.sql.Connection;
import java.sql.SQLException;

public class DbUtil {

    private static DbUtil dbUtil;
    private ComboPooledDataSource connectionPool;

    private DbUtil() throws PropertyVetoException {
        connectionPool = new ComboPooledDataSource();
        connectionPool.setDriverClass("com.mysql.jdbc.Driver");
        connectionPool.setJdbcUrl("jdbc:mysql://localhost/osadnicy");
        connectionPool.setUser("root");
        connectionPool.setPassword("");
        connectionPool.setInitialPoolSize(5);
        connectionPool.setMinPoolSize(5);
        connectionPool.setMaxPoolSize(20);
        connectionPool.setAcquireIncrement(5);
        connectionPool.setMaxIdleTime(3600);
    }

    public Connection getConnection() throws SQLException {
        return connectionPool.getConnection();
    }

    public void close() {
        connectionPool.close();
    }

    public static DbUtil getInstance() {
        if (dbUtil == null) {
            try {
                dbUtil = new DbUtil();
            } catch (PropertyVetoException e) {
                e.printStackTrace();
            }
        }
        return dbUtil;
    }
}
