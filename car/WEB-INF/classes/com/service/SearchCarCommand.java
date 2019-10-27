package com.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.CarDAO;
import com.DAO.CarImageDAO;
import com.DTO.CarDTO;
import com.DTO.CarImageDTO;
import com.DAO.Search_carDAO;
import com.DAO.Search_companyDAO;

public class SearchCarCommand implements Command {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String search = request.getParameter("search");
		String searchtext = request.getParameter("searchtext");
		HttpSession session=request.getSession();
		String userID = (String)session.getAttribute("userID");
		CarDAO dao = new CarDAO();
		Search_carDAO sdao = new Search_carDAO();
		Search_companyDAO scdao = new Search_companyDAO();
		CarImageDAO imgdao = new CarImageDAO();
		
		if(search.equals("car_name") && userID != null) {
			sdao.insert(userID, searchtext);
		}
		else if(search.equals("company_name") && userID != null) {
			scdao.insert(userID, searchtext);
		}
		
		ArrayList<CarDTO> list = dao.search(search, searchtext);
		for(int i =0; i < list.size(); i++) {
			ArrayList<CarImageDTO> imglist = imgdao.search(list.get(i).getCar_name());
			request.setAttribute("imglist" + i, imglist);
		}
		request.setAttribute("list" , list);
	}
}
