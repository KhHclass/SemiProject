package semi.member;

import java.sql.*;
import java.util.*;

public class MemberDAO {

	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;

	public static final int NOT_ID = 1;
	public static final int NOT_PWD = 2;
	public static final int LOGIN_OK = 3;

	public static final int ERROR = -1;

	public MemberDAO() {
	}

	public int memberJoin(MemberDTO dto) {
		try {
			conn = semi.db.SemiDb.getConn();
			String sql = "insert into customer values(customer_idx.nextval, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			ps = conn.prepareStatement(sql);
			ps.setString(1, dto.getName());
			ps.setString(2, dto.getPassword());
			ps.setString(3, dto.getAsk());
			ps.setString(4, dto.getAns());
			ps.setString(5, dto.getId());
			ps.setString(6, dto.getAddress());
			ps.setString(7, dto.getAddress2());
			ps.setString(8, dto.getEmail());
			ps.setString(9, dto.getTel());
			return ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			return -1;
		} finally {
			try {
				if (ps != null)
					ps.close();
				if (conn != null)
					conn.close();
			} catch (Exception e2) {
			}
		}
	}
	
	public int ceoJoin(MemberDTO dto) {
		try {
			conn = semi.db.SemiDb.getConn();
			String sql = "insert into ceo values(ceo_idx.nextval, ?, ?, ?, ?, ?, ?)";
			ps = conn.prepareStatement(sql);
			ps.setString(1, dto.getName());
			ps.setString(2, dto.getPassword());
			ps.setString(3, dto.getAsk());
			ps.setString(4, dto.getAns());
			ps.setString(5, dto.getEmail());
			ps.setString(6, dto.getId());
			return ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			return -1;
		} finally {
			try {
				if (ps != null)
					ps.close();
				if (conn != null)
					conn.close();
			} catch (Exception e2) {
			}
		}
	}

	public void close2() {
		try {
			if (rs != null)
				rs.close();
			if (ps != null)
				ps.close();
			if (conn != null)
				conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public Boolean idCheck(String id) {
		try {
			conn = semi.db.SemiDb.getConn();
			String sql = "select * from customer where id = ?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			rs = ps.executeQuery();
			return rs.next();
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		} finally {
			try {
				close2();
			} catch (Exception e2) {
			}
		}
	}
	
	public Boolean ceoCheck(String id) {
		try {
			conn = semi.db.SemiDb.getConn();
			String sql = "select * from ceo where id = ?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			rs = ps.executeQuery();
			return rs.next();
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		} finally {
			try {
				close2();
			} catch (Exception e2) {
			}
		}
	}

	/** 로그인 검증 관련 메소드 */
	public int loginCheck(String userid, String userpwd) {
		try {
			conn = semi.db.SemiDb.getConn();
			String sql = "select password from customer where id = ?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, userid);
			rs = ps.executeQuery();

			if (rs.next()) {
				if (rs.getString(1).equals(userpwd)) {
					return LOGIN_OK;
				} else {
					return NOT_PWD;
				}
			} else {
				return NOT_ID;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return ERROR;
		} finally { // 에러 발생 시, 아닐 시 상관 없이 파이널리 안에 있는 것 실행
			try {
				close2();
			} catch (Exception e2) {

			}
		}
	}
	
	/** 로그인 검증 관련 메소드 */
	public int loginceoCheck(String userid, String userpwd) {
		try {
			conn = semi.db.SemiDb.getConn();
			String sql = "select password from ceo where id = ?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, userid);
			rs = ps.executeQuery();

			if (rs.next()) {
				if (rs.getString(1).equals(userpwd)) {
					return LOGIN_OK;
				} else {
					return NOT_PWD;
				}
			} else {
				return NOT_ID;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return ERROR;
		} finally { // 에러 발생 시, 아닐 시 상관 없이 파이널리 안에 있는 것 실행
			try {
				close2();
			} catch (Exception e2) {

			}
		}
	}

	/** 사용자정보 추출 관련 메소드 */
	public String getUserInfo(String userid) {

		try {
			conn = semi.db.SemiDb.getConn();
			String sql = "select name from customer where id = ?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, userid);
			rs = ps.executeQuery();
			rs.next();
			return rs.getString(1);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			try {
				close2();
			} catch (Exception e2) {

			}
		}
	}
	
	public String getCeoInfo(String userid) {

		try {
			conn = semi.db.SemiDb.getConn();
			String sql = "select name from ceo where id = ?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, userid);
			rs = ps.executeQuery();
			rs.next();
			return rs.getString(1);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			try {
				close2();
			} catch (Exception e2) {

			}
		}
	}
}
