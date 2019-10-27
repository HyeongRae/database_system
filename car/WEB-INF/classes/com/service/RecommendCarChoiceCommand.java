package com.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.Search_carDAO;
import com.DTO.Search_carDTO;

public class RecommendCarChoiceCommand implements Command{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String[] age = request.getParameterValues("age");
		String gender = request.getParameter("gender");
		
		Search_carDAO sdao = new Search_carDAO();
		
		ArrayList<Search_carDTO> searchlist = sdao.SearchCarList(age, gender);
		request.setAttribute("searchlist" , searchlist);
	}
}
