import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class PaperDao {

	
	private String jdbcURL;
    private String jdbcUsername;
    private String jdbcPassword;
    private Connection jdbcConnection;
     
public PaperDao(String jdbcURL, String jdbcUsername, String jdbcPassword) {
        this.jdbcURL = jdbcURL;
        this.jdbcUsername = jdbcUsername;
        this.jdbcPassword = jdbcPassword;	
    }
	protected void connect() throws SQLException {
        if (jdbcConnection == null || jdbcConnection.isClosed()) {
            try {
                Class.forName("oracle.jdbc.driver.OracleDriver");
            } catch (ClassNotFoundException e) {
                throw new SQLException(e);
            }
            jdbcConnection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","msr","123");
        }
    }
	protected void disconnect() throws SQLException {
        if (jdbcConnection != null &&!jdbcConnection.isClosed()) {
            jdbcConnection.close();
        }
    }
	
}
