package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.DTO.Search_carDTO;

public class Search_carDAO {
	String jdbc_driver = "com.mysql.jdbc.Driver";
	String jdbc_url = "jdbc:mysql://127.0.0.1/cardb?useSSL=false";
	Connection conn = null;
	public Search_carDAO(){
        try{
           Class.forName(jdbc_driver);
           conn = DriverManager.getConnection(jdbc_url, "root", "961025r");
        }catch(Exception e){ e.printStackTrace();}
	}
	
	public ArrayList<Search_carDTO> SearchCarListf(String userID) {
		ArrayList<Search_carDTO> list = new ArrayList<Search_carDTO>();
		Connection conn = null; // DB접속 객체
		PreparedStatement pstmt = null; // SQL실행객체
		ResultSet rs = null; // 결과셋 처리 객체

		try {
			conn = DriverManager.getConnection(jdbc_url, "root", "961025r");
            String query = "SELECT s.car_name, COUNT(s.car_name) AS count FROM search_car AS s";
            if(userID != null) {
            	query +=", user_tbl AS u, user_tbl AS nowu " +
            			" WHERE s.user_id LIKE u.user_id and " + 
        				" nowu.user_id LIKE ? and " + 
        				" u.age between Floor(nowu.age/10)*10 and Floor(nowu.age/10)*10+9 and " + 
        				" u.sex LIKE nowu.sex ";
            } 		
            query += " GROUP BY s.car_name ORDER BY COUNT(s.car_name) DESC, s.car_name ASC LIMIT 10";
            
            pstmt = conn.prepareStatement( query );
            if(userID != null) {
            	pstmt.setString(1, userID);
            }
            rs = pstmt.executeQuery();

			while (rs.next()) {                    //결과셋.next(); 다음 레코드가 있으면 true
				Search_carDTO dto = new Search_carDTO();
				dto.setSearch(rs.getString("s.car_name"));
				dto.setCount(rs.getInt("count"));
	             //ArrayList에 추가
	            list.add(dto);
	       }

		 }catch( Exception e){ 
	            e.printStackTrace();
	     	}finally{
	              try {
	                 if( rs!= null) rs.close();
	                 if( pstmt!= null) pstmt.close();
	                 if( conn!= null) conn.close();
	              } catch (SQLException e) {
	                 // TODO Auto-generated catch block
	                 e.printStackTrace();
	              }
	           }
	     return list; 
	}
	public ArrayList<Search_carDTO> SearchCarList(String[] age, String gender) {
		ArrayList<Search_carDTO> list = new ArrayList<Search_carDTO>();
		Connection conn = null; // DB접속 객체
		PreparedStatement pstmt = null; // SQL실행객체
		ResultSet rs = null; // 결과셋 처리 객체

		try {
			conn = DriverManager.getConnection(jdbc_url, "root", "961025r");
            String query = "SELECT s.car_name, COUNT(s.car_name) AS count" + 
            		" FROM search_car as s, user_tbl as u" + 
            		" WHERE s.user_id = u.user_id";
            
            if(age != null || gender != null)
            	query += " AND ";
            
            if(age != null) {
            	query += " (u.age between ? and ? ";
            	for(int i=0; i < age.length - 1; i++){
                	query += " OR u.age between ? and ? ";
                }
            	query += ") ";
            	if(gender!= null)
            		query += " AND ";
            }
            
            if(gender!= null)
            	query += " u.sex = ? ";
            
            query +=" GROUP BY s.car_name" + 
            		" ORDER BY COUNT(s.car_name) DESC, s.car_name ASC LIMIT 10";
            
            pstmt = conn.prepareStatement( query );
            
            int count = 1;
            if(age != null) {
            	for(int i = 0; i<age.length; i++) {
            		pstmt.setInt(count++, Integer.parseInt(age[i]));
            		pstmt.setInt(count++, Integer.parseInt(age[i])+9);
            	}
            	if(gender != null)
            		pstmt.setString(count++, gender);              
            }
            else {
            	if(gender != null)
            		pstmt.setString(count++, gender);
            }
           
            rs = pstmt.executeQuery();

			while (rs.next()) {                    //결과셋.next(); 다음 레코드가 있으면 true
				Search_carDTO dto = new Search_carDTO();
				dto.setSearch(rs.getString("s.car_name"));
				dto.setCount(rs.getInt("count"));
	             //ArrayList에 추가
	            list.add(dto);
	       }

		 }catch( Exception e){ 
	            e.printStackTrace();
	     	}finally{
	              try {
	                 if( rs!= null) rs.close();
	                 if( pstmt!= null) pstmt.close();
	                 if( conn!= null) conn.close();
	              } catch (SQLException e) {
	                 // TODO Auto-generated catch block
	                 e.printStackTrace();
	              }
	           }
	     return list; 
	}
	public void insert(String userID, String searchtext) {
		Connection conn = null; // DB접속 객체
		PreparedStatement pstmt = null; // SQL실행객체
		
		try {
			conn = DriverManager.getConnection(jdbc_url, "root", "961025r");
            String query = "INSERT INTO search_car (user_id, car_name) VALUES(?, ?)";
            pstmt = conn.prepareStatement( query );
           
			pstmt.setString(1, userID);
			pstmt.setString(2, searchtext);
			pstmt.executeUpdate();
		 }catch( Exception e){ 
	            e.printStackTrace();
	     	}finally{
	              try {
	                 if( pstmt!= null) pstmt.close();
	                 if( conn!= null) conn.close();
	              } catch (SQLException e) {
	                 // TODO Auto-generated catch block
	                 e.printStackTrace();
	              	}
	         } 
	}
}
