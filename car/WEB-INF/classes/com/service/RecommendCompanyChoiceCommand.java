package com.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.Search_companyDAO;
import com.DTO.Search_companyDTO;

public class RecommendCompanyChoiceCommand implements Command{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String[] age = request.getParameterValues("age");
		String gender = request.getParameter("gender");
		
		Search_companyDAO scdao = new Search_companyDAO();
		
		ArrayList<Search_companyDTO> searchlist = scdao.SearchCompanyList(age, gender);
		request.setAttribute("searchlist" , searchlist);
	}
}
