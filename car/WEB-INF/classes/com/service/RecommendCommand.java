package com.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DTO.Search_carDTO;
import com.DAO.Search_carDAO;
public class RecommendCommand implements Command{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session=request.getSession();
		String userID = (String)session.getAttribute("userID");
		
		Search_carDAO sdao = new Search_carDAO();
		
		ArrayList<Search_carDTO> searchlist = sdao.SearchCarListf(userID);
		request.setAttribute("searchlist" , searchlist);
	}
}
