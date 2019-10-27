package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.DTO.UserDTO;

public class UserDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public UserDAO() {//데이터 접근 개체
		try {
			String dbURL="jdbc:mysql://127.0.0.1/cardb?useSSL=false";
			String dbID="root";
			String dbPassword="961025r";
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection(dbURL, dbID, dbPassword);
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public int login(String userID, String userPassword) {
		String SQL = "SELECT user_Password FROM USER_TBL WHERE user_ID = ?";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userID);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).equals(userPassword)) {
					return 1;
				}
				else
					return 0;//비밀번호 없다.
			}
			return -1;//아이디가 없다.
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return -2;//데이터베이스 오류
				
		
	}
	
	public int join(UserDTO user) {
		
		String SQL = "INSERT INTO USER_TBL VALUES (?, ?, ?,?)";
		try {
			pstmt=conn.prepareStatement(SQL);
			pstmt.setString(1, user.getUserID());
			pstmt.setString(2, user.getUserPassword());
			pstmt.setString(3, user.getSex());
			pstmt.setInt(4, user.getAge());
			return pstmt.executeUpdate();
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return -1;//데이터베이스 호출
	}
}
