package semi.db;

import javax.naming.*;
import java.sql.*;
import javax.sql.*;

public class SemiDb {

	static DataSource ds;

	static {
		try {
			Context initContext = new InitialContext(); // 서버의 전반적인 정보
			Context envContext = (Context) initContext.lookup("java:/comp/env"); // env카테고리의정보
			ds = (DataSource) envContext.lookup("jdbc/myoracle"); // DS의 정보

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public static Connection getConn() throws Exception {
		return ds.getConnection();
	}

}
