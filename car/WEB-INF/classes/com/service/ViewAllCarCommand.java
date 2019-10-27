package com.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.CarDAO;
import com.DAO.CarImageDAO;
import com.DTO.CarDTO;
import com.DTO.CarImageDTO;

public class ViewAllCarCommand implements Command {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
			CarDAO dao = new CarDAO();
			CarImageDAO imgdao = new CarImageDAO();
			
			ArrayList<CarDTO> list = dao.carList();
			for(int i =0; i < list.size(); i++) {
				ArrayList<CarImageDTO> imglist = imgdao.search(list.get(i).getCar_name());
				request.setAttribute("imglist" + i, imglist);
			}
			request.setAttribute("list", list);
	}
}
