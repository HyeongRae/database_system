package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.DTO.Search_companyDTO;

public class Search_companyDAO {
	String jdbc_driver = "com.mysql.jdbc.Driver";
	String jdbc_url = "jdbc:mysql://127.0.0.1/cardb?useSSL=false";
	Connection conn = null;
	public Search_companyDAO(){
        try{
           Class.forName(jdbc_driver);
           conn = DriverManager.getConnection(jdbc_url, "root", "961025r");
        }catch(Exception e){ e.printStackTrace();}
	}
	public ArrayList<Search_companyDTO> SearchCompanyList(String[] age, String gender) {
		ArrayList<Search_companyDTO> list = new ArrayList<Search_companyDTO>();
		Connection conn = null; // DB접속 객체
		PreparedStatement pstmt = null; // SQL실행객체
		ResultSet rs = null; // 결과셋 처리 객체

		try {
			conn = DriverManager.getConnection(jdbc_url, "root", "961025r");
            String query = "SELECT s.company_name, COUNT(s.company_name) AS count" + 
            		" FROM search_company as s, user_tbl as u" + 
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
            
            query +=" GROUP BY s.company_name" + 
            		" ORDER BY COUNT(s.company_name) DESC, s.company_name ASC LIMIT 10";
            
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
				Search_companyDTO dto = new Search_companyDTO();
				dto.setSearch(rs.getString("s.company_name"));
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
            String query = "INSERT INTO search_company (user_id, company_name) VALUES(?, ?)";
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
