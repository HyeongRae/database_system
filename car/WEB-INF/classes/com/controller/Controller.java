package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.service.*;

@SuppressWarnings("serial")
@WebServlet("*.do")
public class Controller extends HttpServlet {

   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      doPost(request, response);
   }

   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

      request.setCharacterEncoding("UTF-8");
      
      String requestURI = request.getRequestURI();
      String contextPath = request.getContextPath();
      String com = requestURI.substring(contextPath.length());
      Command command  = null;
      String nextPage = null;
      
      if(com.equals("/carView.do")){
         command = new SearchCarCommand();
         command.execute(request, response);
         nextPage = "carView.jsp";
      }
      
      if(com.equals("/compare.do")){
          command = new ViewAllCarCommand();
          command.execute(request, response);
          nextPage = "compare.jsp";
      }
      
      if(com.equals("/search_compare.do")){
          command = new SearchCarCommand();
          command.execute(request, response);
          nextPage = "compare.jsp";
      }
      
      if(com.equals("/recommend.do")){
          command = new RecommendCommand();
          command.execute(request, response);
          nextPage = "recommend.jsp";
      }
      
      if(com.equals("/recommendCarChoice.do")){
          command = new RecommendCarChoiceCommand();
          command.execute(request, response);
          nextPage = "recommend.jsp";
      }
      if(com.equals("/recommendCompanyChoice.do")){
          command = new RecommendCompanyChoiceCommand();
          command.execute(request, response);
          nextPage = "recommend.jsp";
      }
      RequestDispatcher dis = request.getRequestDispatcher(nextPage);
      dis.forward(request, response);
   }

}