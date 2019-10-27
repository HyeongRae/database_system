package com.DAO;

//jdbc import
import java.sql.*;
import java.util.ArrayList;

import com.DTO.CarDTO;

public class CarDAO {
	String jdbc_driver = "com.mysql.jdbc.Driver";
	String jdbc_url = "jdbc:mysql://127.0.0.1/cardb?useSSL=false";
	Connection conn = null;
	public CarDAO(){
        try{
           Class.forName(jdbc_driver);
           conn = DriverManager.getConnection(jdbc_url, "root", "961025r");
        }catch(Exception e){ e.printStackTrace();}
	}
	public ArrayList<CarDTO> carList() {

		ArrayList<CarDTO> list = new ArrayList<CarDTO>();
		Connection conn = null; // DB접속 객체
		PreparedStatement pstmt = null; // SQL실행객체
		ResultSet rs = null; // 결과셋 처리 객체

		try {
			conn = DriverManager.getConnection(jdbc_url, "root", "961025r");
            String query = "SELECT * FROM carinfo_tbl AS car, image_tbl AS img, kind_of_car_tbl AS k WHERE car.car_name = img.car_name AND car.KIND_OF like k.CORD group by car.car_name";
            
            pstmt = conn.prepareStatement( query );
            rs = pstmt.executeQuery();

			while (rs.next()) {                    //결과셋.next(); 다음 레코드가 있으면 true
				CarDTO dto = new CarDTO();
				dto.setCar_name(rs.getString("car_name"));
				dto.setWeight(rs.getInt("weight"));
				dto.setFuelefficiency(rs.getFloat("fuelefficiency"));
				dto.setOverall_length(rs.getInt("overall_length"));
				dto.setOverall_width(rs.getInt("overall_width"));
				dto.setOverall_height(rs.getInt("overall_height"));
				dto.setDisplacement(rs.getInt("displacement"));
				dto.setMaintenance_expenses(rs.getInt("maintenance_expenses"));
	            dto.setPrice(rs.getInt("price"));
	            dto.setCompanyName(rs.getString("company_name"));
	            dto.setKind_of(rs.getString("k.kind_of"));
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
	
	public ArrayList<CarDTO> search(String search, String searchtext) {

			ArrayList<CarDTO> list = new ArrayList<CarDTO>();
			Connection conn = null; // DB접속 객체
			PreparedStatement pstmt = null; // SQL실행객체
			ResultSet rs = null; // 결과셋 처리 객체

			try {
				conn = DriverManager.getConnection(jdbc_url, "root", "961025r");
	            String query = "SELECT * FROM carinfo_tbl AS car, image_tbl AS img, kind_of_car_tbl AS k ";
	            if(search.equals("car_name")){
	                query += "    WHERE car.car_name = img.car_name AND car.KIND_OF like k.CORD AND car.car_name LIKE  ?";
	            }
	           
	            else if(search.equals("company_name")){
	                query += "    WHERE car.car_name = img.car_name AND car.KIND_OF like k.CORD AND car.company_name LIKE ?";
	            }
	            query += " group by car.car_name";
	            pstmt = conn.prepareStatement( query );
	            pstmt.setString(1, "%"+searchtext+"%" );
	            rs = pstmt.executeQuery();

				while (rs.next()) {                    //결과셋.next(); 다음 레코드가 있으면 true
					CarDTO dto = new CarDTO();
					dto.setCar_name(rs.getString("car_name"));
					dto.setWeight(rs.getInt("weight"));
					dto.setFuelefficiency(rs.getFloat("fuelefficiency"));
					dto.setOverall_length(rs.getInt("overall_length"));
					dto.setOverall_width(rs.getInt("overall_width"));
					dto.setOverall_height(rs.getInt("overall_height"));
					dto.setDisplacement(rs.getInt("displacement"));
					dto.setMaintenance_expenses(rs.getInt("maintenance_expenses"));
		            dto.setPrice(rs.getInt("price"));
		            dto.setCompanyName(rs.getString("company_name"));
		            dto.setKind_of(rs.getString("k.kind_of"));
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