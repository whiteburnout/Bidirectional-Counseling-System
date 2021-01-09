package spms.dao;

// DBConnectionPool 적용
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.sql.Types;

import javax.sql.*;

import spms.util.DBConnectionPool;
import spms.vo.*;

public class UserDao {
	DataSource ds;

	public void setDataSource(DataSource ds) {
		this.ds = ds;
	}




	public List<User> te_SelectList(User user) throws Exception {
		Connection connection = null;
		Statement stmt = null;
		ResultSet rs = null;


		try {
			connection = ds.getConnection();
			stmt = connection.createStatement();
			rs = stmt.executeQuery("select name, e_mail, toeic, mydb.user.user_id " +
					"from mydb.user, mydb.lang " +
					"where (mydb.user.user_id = mydb.lang.user_id) && ("
					+ "900 <=mydb.lang.toeic) " + "&& mydb.user.user_id != " + user.getUser_id() +
					" order by rand() " +
					"limit 4;");
			ArrayList<User> users = new ArrayList<User>();

			while(rs.next()) {
				users.add(new User()
						.setName((rs.getString("name")))
						.setEmail(rs.getString("e_mail"))
						.setToeic(rs.getInt("toeic"))
						.setUser_id(rs.getInt("user_id")));
			}

			return users;

		} catch (Exception e) {
			throw e;

		} finally {
			try {if (rs != null) rs.close();} catch(Exception e) {}
			try {if (stmt != null) stmt.close();} catch(Exception e) {}
			try {if (connection != null) connection.close();} catch(Exception e) {}
		}
	}

	public List<User> to_SelectList(User user) throws Exception {
		Connection connection = null;
		Statement stmt = null;
		ResultSet rs = null;


		try {
			connection = ds.getConnection();
			stmt = connection.createStatement();
			rs = stmt.executeQuery("select name, e_mail, toefl, mydb.user.user_id " +
					"from mydb.user, mydb.lang " +
					"where (mydb.user.user_id = mydb.lang.user_id)"
					+ " && (" + user.getG_toefl() + "<=mydb.lang.toefl) " + "&& mydb.user.user_id != " + user.getUser_id() +
					" order by mydb.lang.toefl DESC " +
					"limit 4;");
			ArrayList<User> users = new ArrayList<User>();


			while(rs.next()) {
				users.add(new User()
						.setName((rs.getString("name")))
						.setEmail(rs.getString("e_mail"))
						.setToefl(rs.getInt("toefl"))
						.setUser_id(rs.getInt("user_id")));
			}

			return users;

		} catch (Exception e) {
			throw e;

		} finally {
			try {if (rs != null) rs.close();} catch(Exception e) {}
			try {if (stmt != null) stmt.close();} catch(Exception e) {}
			try {if (connection != null) connection.close();} catch(Exception e) {}
		}
	}

	public List<User> h_SelectList(User user) throws Exception {
		Connection connection = null;
		Statement stmt = null;
		ResultSet rs = null;


		try {
			connection = ds.getConnection();
			stmt = connection.createStatement();
			rs = stmt.executeQuery("select name, e_mail, hsk, mydb.user.user_id " +
					"from mydb.user, mydb.lang " +
					"where (mydb.user.user_id = mydb.lang.user_id) &&"
					+ " (" + user.getG_hsk() + " <=mydb.lang.hsk) " + "&& mydb.user.user_id != " + user.getUser_id() +
					" order by mydb.lang.hsk DESC " +
					"limit 4;");
			ArrayList<User> users = new ArrayList<User>();

			while(rs.next()) {
				users.add(new User()
						.setName((rs.getString("name")))
						.setEmail(rs.getString("e_mail"))
						.setHsk(rs.getInt("hsk"))
						.setUser_id(rs.getInt("user_id")));
			}

			return users;

		} catch (Exception e) {
			throw e;

		} finally {
			try {if (rs != null) rs.close();} catch(Exception e) {}
			try {if (stmt != null) stmt.close();} catch(Exception e) {}
			try {if (connection != null) connection.close();} catch(Exception e) {}
		}
	}

	public List<User> j_SelectList(User user) throws Exception {
		Connection connection = null;
		Statement stmt = null;
		ResultSet rs = null;


		try {
			connection = ds.getConnection();
			stmt = connection.createStatement();
			rs = stmt.executeQuery("select name, e_mail, jlpt, mydb.user.user_id " +
					"from mydb.user, mydb.lang " +
					"where (mydb.user.user_id = mydb.lang.user_id) && (" + user.getG_jlpt() + " >= mydb.lang.jlpt) " 
					+ "and (mydb.lang.jlpt > 0) " + "&& mydb.user.user_id != " + user.getUser_id() +
					" order by mydb.lang.jlpt " +
					"limit 4;");
			System.out.println(user.getG_jlpt());
			ArrayList<User> users = new ArrayList<User>();

			while(rs.next()) {
				users.add(new User()
						.setName((rs.getString("name")))
						.setEmail(rs.getString("e_mail"))
						.setJlpt(rs.getInt("jlpt"))
						.setUser_id(rs.getInt("user_id")));
			}

			return users;

		} catch (Exception e) {
			throw e;

		} finally {
			try {if (rs != null) rs.close();} catch(Exception e) {}
			try {if (stmt != null) stmt.close();} catch(Exception e) {}
			try {if (connection != null) connection.close();} catch(Exception e) {}
		}
	}

	public List<User> certi_SelectList(User user) throws Exception {
		Connection connection = null;
		Statement stmt = null;
		ResultSet rs = null;


		try {
			connection = ds.getConnection();
			stmt = connection.createStatement();
			rs = stmt.executeQuery("select name, e_mail, certification1, certification2, certification3, certification4, mydb.user.user_id " +
					"from mydb.user, mydb.certi " +
					"where (mydb.user.user_id = mydb.certi.user_id) &&"
					+ " ('" + user.getG_certification() + "' = mydb.certi.certification1)"
					+ " || ('" + user.getG_certification() + "' = mydb.certi.certification2)"
					+ " || ('" + user.getG_certification() + "' = mydb.certi.certification3)"
					+ " || ('" + user.getG_certification() + "' = mydb.certi.certification4) "
					+ "&& mydb.user.user_id != " + user.getUser_id() +
					" order by certification1 desc, certification2 desc, certification3 desc, certification4 desc " +
					"limit 4;");
			ArrayList<User> users = new ArrayList<User>();

			while(rs.next()) {
				users.add(new User()
						.setName((rs.getString("name")))
						.setEmail(rs.getString("e_mail"))
						.setCertification1(rs.getString("certification1"))
						.setCertification2(rs.getString("certification2"))
						.setCertification3(rs.getString("certification3"))
						.setCertification4(rs.getString("certification4"))
						.setUser_id(rs.getInt("user_id")));
			}

			return users;

		} catch (Exception e) {
			throw e;

		} finally {
			try {if (rs != null) rs.close();} catch(Exception e) {}
			try {if (stmt != null) stmt.close();} catch(Exception e) {}
			try {if (connection != null) connection.close();} catch(Exception e) {}
		}
	}

	public List<User> career_SelectList(User user) throws Exception {
		Connection connection = null;
		Statement stmt = null;
		ResultSet rs = null;


		try {
			connection = ds.getConnection();
			stmt = connection.createStatement();
			rs = stmt.executeQuery("select name, e_mail, field, mydb.user.user_id " +
					"from mydb.user, mydb.career " +
					"where (mydb.user.user_id = mydb.career.user_id) &&"
					+ " ('" + user.getG_field() + "' = mydb.career.field) "
					+ "&& mydb.user.user_id != " + user.getUser_id()
					+ "&& (mydb.career.field != '선택')" +
					"order by rand() " +
					"limit 4;"
					);
			ArrayList<User> users = new ArrayList<User>();

			while(rs.next()) {
				users.add(new User()
						.setName((rs.getString("name")))
						.setEmail(rs.getString("e_mail"))
						.setField(rs.getString("field"))
						.setUser_id(rs.getInt("user_id")));
			}

			return users;

		} catch (Exception e) {
			throw e;

		} finally {
			try {if (rs != null) rs.close();} catch(Exception e) {}
			try {if (stmt != null) stmt.close();} catch(Exception e) {}
			try {if (connection != null) connection.close();} catch(Exception e) {}
		}
	}

	public void insert(User user) throws Exception  {
		Connection connection = null;
		PreparedStatement stmt = null;

		try {
			connection = ds.getConnection();
			stmt = connection.prepareStatement(
					"INSERT INTO USER(e_mail,password,name,phonenumber,birth)"
							+ " VALUES (?,?,?,?,?)"); 
			stmt.setString(1, user.getEmail());
			stmt.setString(2, user.getPassword());
			stmt.setString(3, user.getName());
			stmt.setString(4, user.getPhonenumber());
			stmt.setDate(5, user.getBirth());
			stmt.executeUpdate();

			stmt = connection.prepareStatement("INSERT INTO CAREER(field,f_start,f_end,f_period)"
					+ " VALUES (?,NOW(),NOW(),?)");

			stmt.setString(1, "선택");
			stmt.setInt(2, 0);
			stmt.executeUpdate();

			stmt = connection.prepareStatement(
					"INSERT INTO CERTI(certification1,certification2,certification3,certification4)"
							+ " VALUES (?,?,?,?)");

			stmt.setString(1, "선택");
			stmt.setString(2, "선택");
			stmt.setString(3, "선택");
			stmt.setString(4, "선택");
			stmt.executeUpdate();

			stmt = connection.prepareStatement("INSERT INTO EDU(education,major)"
					+ " VALUES (?,?)");            

			stmt.setString(1, "선택");
			stmt.setString(2, "선택");
			stmt.executeUpdate();

			stmt = connection.prepareStatement("INSERT INTO LANG(toeic,toefl,hsk,jlpt)"
					+ " VALUES (?,?,?,?)");    

			stmt.setInt(1, 0);
			stmt.setInt(2, 0);
			stmt.setInt(3, 0);
			stmt.setInt(4, 0);
			stmt.executeUpdate();

			stmt = connection.prepareStatement("INSERT INTO INTRODUCTION(introduction)"
					+ "VALUES(?)");

			stmt.setString(1, "");
			stmt.executeUpdate();

			stmt = connection.prepareStatement("INSERT INTO G_CAREER(g_field, g_field_date)"
					+ " VALUES (?,NOW())");

			stmt.setString(1, "선택");
			stmt.executeUpdate();

			stmt = connection.prepareStatement(
					"INSERT INTO G_CERTI(g_certification, g_certification_date)"
							+ " VALUES (?,NOW())");

			stmt.setString(1, "선택");
			stmt.executeUpdate();

			stmt = connection.prepareStatement("INSERT INTO G_EDU(g_education,g_education_date)"
					+ " VALUES (?,NOW())");            

			stmt.setString(1, "선택");
			stmt.executeUpdate();

			stmt = connection.prepareStatement("INSERT INTO G_LANG(g_toeic,g_toefl,g_hsk,g_jlpt)"
					+ " VALUES (?,?,?,?)");    

			stmt.setInt(1, 0);
			stmt.setInt(2, 0);
			stmt.setInt(3, 0);
			stmt.setInt(4, 0);
			stmt.executeUpdate();

			stmt = connection.prepareStatement("INSERT INTO MYGOAL(mygoal)"
					+ "VALUES(?)");

			stmt.setString(1, "");
			stmt.executeUpdate();

		} catch (Exception e) {
			throw e;

		} finally {
			try {if (stmt != null) stmt.close();} catch(Exception e) {}
			try {if (connection != null) connection.close();} catch(Exception e) {}
		}
	}


	public int delete(int user_id) throws Exception {  
		Connection connection = null;
		Statement stmt = null;

		try {
			connection = ds.getConnection();
			stmt = connection.createStatement();
			return stmt.executeUpdate(
					"DELETE FROM user WHERE user_id=" + user_id);

		} catch (Exception e) {
			throw e;

		} finally {
			try {if (stmt != null) stmt.close();} catch(Exception e) {}
			try {if (connection != null) connection.close();} catch(Exception e) {}
		}
	}

	public User selectOne(int user_id) throws Exception { 
		Connection connection = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			connection = ds.getConnection();
			stmt = connection.createStatement();
			rs = stmt.executeQuery(
					"SELECT MYDB.career.user_id, field, f_start, f_end, f_period, certification1, certification2, certification3, certification4, education, major, toeic, toefl, hsk, jlpt,introduction FROM MYDB.career, MYDB.certi, MYDB.edu, MYDB.lang, MYDB.introduction WHERE (MYDB.career.user_id = MYDB.certi.user_id) && (MYDB.career.user_id = MYDB.certi.user_id) && (MYDB.career.user_id = MYDB.edu.user_id) && (MYDB.career.user_id = MYDB.lang.user_id) && (MYDB.career.user_id = MYDB.introduction.user_id) && (MYDB.certi.user_id = MYDB.edu.user_id) && (MYDB.certi.user_id = MYDB.introduction.user_id) &&(MYDB.edu.user_id = MYDB.lang.user_id) &&(MYDB.edu.user_id = MYDB.introduction.user_id) && (MYDB.career.user_id = " + user_id +")");    
			if (rs.next()) {
				return new User()
						.setField(rs.getString("field"))
						.setF_start(rs.getDate("f_start"))
						.setF_end(rs.getDate("f_end"))
						.setF_period(rs.getInt("f_period"))
						.setCertification1(rs.getString("certification1"))
						.setCertification2(rs.getString("certification2"))
						.setCertification3(rs.getString("certification3"))
						.setCertification4(rs.getString("certification4"))
						.setEducation(rs.getString("education"))
						.setMajor(rs.getString("major"))
						.setToeic(rs.getInt("toeic"))
						.setToefl(rs.getInt("toefl"))
						.setHsk(rs.getInt("hsk"))
						.setJlpt(rs.getInt("jlpt"))
						.setIntroduction(rs.getString("introduction"));

			} else {
				throw new Exception("해당 번호의 회원을 찾을 수 없습니다.");
			}

		} catch (Exception e) {
			throw e;
		} finally {
			try {if (rs != null) rs.close();} catch(Exception e) {}
			try {if (stmt != null) stmt.close();} catch(Exception e) {}
			try {if (connection != null) connection.close();} catch(Exception e) {}
		}
	}

	public User g_selectone(int user_id) throws Exception { 
		Connection connection = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			connection = ds.getConnection();
			stmt = connection.createStatement();
			rs = stmt.executeQuery(
					"SELECT MYDB.g_career.user_id, g_field, g_field_date, g_certification, g_certification_date, mygoal, g_education, g_education_date, g_toeic, g_toefl, g_hsk, g_jlpt FROM MYDB.g_career, MYDB.g_certi, MYDB.g_edu, MYDB.g_lang, MYDB.mygoal WHERE (MYDB.g_career.user_id = MYDB.g_certi.user_id)&& (MYDB.g_career.user_id = MYDB.g_edu.user_id) && (MYDB.g_career.user_id = MYDB.g_lang.user_id) && (MYDB.g_certi.user_id = MYDB.g_edu.user_id) &&(MYDB.g_edu.user_id = MYDB.g_lang.user_id) && (MYDB.mygoal.user_id = MYDB.g_career.user_id) && (MYDB.mygoal.user_id = MYDB.g_certi.user_id) && (MYDB.mygoal.user_id =MYDB.g_lang.user_id) && (MYDB.mygoal.user_id = MYDB.g_edu.user_id) && (MYDB.g_career.user_id = " + user_id +")");
			if (rs.next()) {
				return new User()
						.setG_field(rs.getString("g_field"))
						.setG_field_date(rs.getDate("g_field_date"))
						.setG_certification(rs.getString("g_certification"))
						.setG_certification_date(rs.getDate("g_certification_date"))
						.setMygoal(rs.getString("mygoal"))
						.setG_education(rs.getString("g_education"))
						.setG_education_date(rs.getDate("g_education_date"))
						.setG_toeic(rs.getInt("g_toeic"))
						.setG_toefl(rs.getInt("g_toefl"))
						.setG_hsk(rs.getInt("g_hsk"))
						.setG_jlpt(rs.getInt("g_jlpt"));  
			} else {
				throw new Exception("해당 번호의 회원을 찾을 수 없습니다.");
			}

		} catch (Exception e) {
			throw e;
		} finally {
			try {if (rs != null) rs.close();} catch(Exception e) {}
			try {if (stmt != null) stmt.close();} catch(Exception e) {}
			try {if (connection != null) connection.close();} catch(Exception e) {}
		}
	}
	
	public User userDetailSelect(int user_id) throws Exception { 
		Connection connection = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			connection = ds.getConnection();
			stmt = connection.createStatement();
			rs = stmt.executeQuery(
					"SELECT MYDB.career.user_id, name , field, f_start, f_end, f_period, certification1, certification2, certification3, certification4, education, major, toeic, toefl, hsk, jlpt,introduction FROM MYDB.user, MYDB.career, MYDB.certi, MYDB.edu, MYDB.lang, MYDB.introduction WHERE (MYDB.user.user_id = MYDB.career.user_id) && (MYDB.career.user_id = MYDB.certi.user_id) && (MYDB.career.user_id = MYDB.certi.user_id) && (MYDB.career.user_id = MYDB.edu.user_id) && (MYDB.career.user_id = MYDB.lang.user_id) && (MYDB.career.user_id = MYDB.introduction.user_id) && (MYDB.certi.user_id = MYDB.edu.user_id) && (MYDB.certi.user_id = MYDB.introduction.user_id) &&(MYDB.edu.user_id = MYDB.lang.user_id) &&(MYDB.edu.user_id = MYDB.introduction.user_id) && (MYDB.career.user_id = " + user_id +")");    
			if (rs.next()) {
				System.out.println(rs.getString("introduction"));
				return new User()
						.setField(rs.getString("field"))
						.setF_start(rs.getDate("f_start"))
						.setF_end(rs.getDate("f_end"))
						.setF_period(rs.getInt("f_period"))
						.setCertification1(rs.getString("certification1"))
						.setCertification2(rs.getString("certification2"))
						.setCertification3(rs.getString("certification3"))
						.setCertification4(rs.getString("certification4"))
						.setEducation(rs.getString("education"))
						.setMajor(rs.getString("major"))
						.setToeic(rs.getInt("toeic"))
						.setToefl(rs.getInt("toefl"))
						.setHsk(rs.getInt("hsk"))
						.setJlpt(rs.getInt("jlpt"))
						.setIntroduction(rs.getString("introduction"))
						.setName(rs.getString("name"));

			} else {
				throw new Exception("해당 번호의 회원을 찾을 수 없습니다.");
			}

		} catch (Exception e) {
			throw e;
		} finally {
			try {if (rs != null) rs.close();} catch(Exception e) {}
			try {if (stmt != null) stmt.close();} catch(Exception e) {}
			try {if (connection != null) connection.close();} catch(Exception e) {}
		}
	}

	public int update(User user) throws Exception { 
		Connection connection = null;
		PreparedStatement stmt = null;
		try {
			connection = ds.getConnection();
			stmt = connection.prepareStatement(
					"UPDATE mydb.career SET field=?,f_start=?,f_end=?,f_period=?"
							+ " WHERE user_id=?");
			stmt.setString(1, user.getField());
			stmt.setDate(2, user.getF_start());
			stmt.setDate(3, user.getF_end());
			stmt.setInt(4, user.getF_period());
			stmt.setInt(5, user.getUser_id());
			stmt.executeUpdate();

			stmt = connection.prepareStatement(
					"UPDATE mydb.certi SET certification1=?,certification2=?,certification3=?, certification4=?"
							+ " WHERE user_id=?");
			stmt.setString(1, user.getCertification1());
			stmt.setString(2, user.getCertification2());
			stmt.setString(3, user.getCertification3());
			stmt.setString(4, user.getCertification4());
			stmt.setInt(5, user.getUser_id());
			stmt.executeUpdate();

			stmt = connection.prepareStatement(
					"UPDATE mydb.edu SET education=?,major=?"
							+ " WHERE user_id=?");
			stmt.setString(1, user.getEducation());
			stmt.setString(2, user.getMajor());
			stmt.setInt(3, user.getUser_id());
			stmt.executeUpdate();

			stmt = connection.prepareStatement(
					"UPDATE mydb.lang SET toeic=?,toefl=?,hsk=?,jlpt=?"
							+ " WHERE user_id=?");
			stmt.setInt(1, user.getToeic());
			stmt.setInt(2, user.getToefl());
			stmt.setInt(3, user.getHsk());
			stmt.setInt(4, user.getJlpt());
			stmt.setInt(5, user.getUser_id());
			stmt.executeUpdate();

			stmt = connection.prepareStatement(
					"UPDATE mydb.introduction SET introduction=?"
							+ " WHERE user_id=?");
			stmt.setString(1, user.getIntroduction());
			stmt.setInt(2,  user.getUser_id());

			return stmt.executeUpdate();

		} catch (Exception e) {
			throw e;

		} finally {
			try {if (stmt != null) stmt.close();} catch(Exception e) {}
			try {if (connection != null) connection.close();} catch(Exception e) {}
		}
	}

	public int g_update(User user) throws Exception { 
		Connection connection = null;
		PreparedStatement stmt = null;
		try {
			connection = ds.getConnection();
			stmt = connection.prepareStatement(
					"UPDATE mydb.g_career SET g_field=?,g_field_date=?"
							+ " WHERE user_id=?");
			stmt.setString(1, user.getG_field());
			stmt.setDate(2, user.getG_field_date());
			stmt.setInt(3, user.getUser_id());
			stmt.executeUpdate();

			stmt = connection.prepareStatement(
					"UPDATE mydb.g_certi SET g_certification=?"
							+ " WHERE user_id=?");
			stmt.setString(1, user.getG_certification());
			stmt.setInt(2, user.getUser_id());
			stmt.executeUpdate();

			stmt = connection.prepareStatement(
					"UPDATE mydb.g_edu SET g_education=?"
							+ " WHERE user_id=?");
			stmt.setString(1, user.getG_education());
			stmt.setInt(2, user.getUser_id());
			stmt.executeUpdate();

			stmt = connection.prepareStatement(
					"UPDATE mydb.g_lang SET g_toeic=?,g_toefl=?,g_hsk=?,g_jlpt=?"
							+ " WHERE user_id=?");
			stmt.setInt(1, user.getG_toeic());
			stmt.setInt(2, user.getG_toefl());
			stmt.setInt(3, user.getG_hsk());
			stmt.setInt(4, user.getG_jlpt());
			stmt.setInt(5, user.getUser_id());
			stmt.executeUpdate();

			stmt = connection.prepareStatement(
					"UPDATE mydb.mygoal SET mygoal=?"
							+ " WHERE user_id=?");
			stmt.setString(1, user.getMygoal());
			stmt.setInt(2,  user.getUser_id());

			return stmt.executeUpdate();

		} catch (Exception e) {
			throw e;

		} finally {
			try {if (stmt != null) stmt.close();} catch(Exception e) {}
			try {if (connection != null) connection.close();} catch(Exception e) {}
		}
	}

	public User exist(String email, String password) throws Exception {
		Connection connection = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;

		try {
			connection = ds.getConnection();
			stmt = connection.prepareStatement(
					"SELECT name,e_mail,user_id FROM user"
							+ " WHERE e_mail=? AND password=?");
			stmt.setString(1, email);
			stmt.setString(2, password);
			rs = stmt.executeQuery();
			if (rs.next()) {
				return new User()
						.setName(rs.getString("name"))
						.setEmail(rs.getString("e_mail"))
						.setUser_id(rs.getInt("user_id"));
			} else {
				return null;
			}
		} catch (Exception e) {
			throw e;

		} finally {
			try {if (rs != null) rs.close();} catch (Exception e) {}
			try {if (stmt != null) stmt.close();} catch (Exception e) {}
			try {if (connection != null) connection.close();} catch(Exception e) {}
		}
	}

}
