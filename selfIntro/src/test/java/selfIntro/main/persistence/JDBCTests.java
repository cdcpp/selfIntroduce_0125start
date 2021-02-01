package selfIntro.main.persistence;

import static org.junit.Assert.fail;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

import lombok.extern.log4j.Log4j;

@Log4j
public class JDBCTests {
	
	static {
		try {
			Class.forName("org.mariadb.jdbc.Driver");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@Test
	public void testConnection() {
		try (Connection con = 
				DriverManager.getConnection(
						"jdbc:mariadb://database-ppdev.cmh4swumcvxu.us-east-2.rds.amazonaws.com:3306/selfIntro?user=admin&password=111qqq1!")) {
			if(con != null) {
				System.out.println("DB Connection Success!");
			}
		} catch (Exception e) {
			e.printStackTrace();
			fail(e.getMessage());
		}
	}
}