package util;

import java.sql.Connection;
import java.sql.SQLException;
import javax.sql.DataSource;
import com.mchange.v2.c3p0.ComboPooledDataSource;

public class DBHelp {
	 //
	public static ComboPooledDataSource ds = new ComboPooledDataSource();
   /*
    *
    */
	public static Connection getconn() {
		Connection con = null;
		try {
			con = ds.getConnection();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return con;
		
	}
	/*
	 *
	 */
	public static DataSource getDataSource() {
		return ds;
	}

}
