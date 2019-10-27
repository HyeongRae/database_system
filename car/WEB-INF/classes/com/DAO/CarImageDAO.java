package com.DAO;

import java.sql.*;
import java.util.ArrayList;

import com.DTO.CarImageDTO;

public class CarImageDAO {
	String jdbc_driver = "com.mysql.jdbc.Driver";
	String jdbc_url = "jdbc:mysql://127.0.0.1/cardb?useSSL=false";
	Connection conn = null;
	public CarImageDAO(){
        try{
           Class.forName(jdbc_driver);
           conn = DriverManager.getConnection(jdbc_url, "root", "961025r");
        }catch(Exception e){ e.printStackTrace();}
	}
	
	public ArrayList<CarImageDTO> search(String searchtext) {

		ArrayList<CarImageDTO> list = new ArrayList<CarImageDTO>();
		Connection conn = null; // DB접속 객체
		PreparedStatement pstmt = null; // SQL실행객체
		ResultSet rs = null; // 결과셋 처리 객체

		try {
			conn = DriverManager.getConnection(jdbc_url, "root", "961025r");
            String query = "SELECT * FROM image_tbl WHERE car_name like ?";
            
            pstmt = conn.prepareStatement( query );
            pstmt.setString(1, searchtext);
            rs = pstmt.executeQuery();

			while (rs.next()) {                    //결과셋.next(); 다음 레코드가 있으면 true
				CarImageDTO dto = new CarImageDTO();
				dto.setCar_name(rs.getString("car_name"));
				dto.setPath(rs.getString("path"));

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
}
