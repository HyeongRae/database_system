<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.DAO.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="user" class="com.DTO.UserDTO" scope="page"/>
<jsp:setProperty name="user" property="userID"/>
<jsp:setProperty name="user" property="userPassword"/>
<jsp:setProperty name="user" property="sex"/>
<jsp:setProperty name="user" property="age"/>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP 게시판 웹사이트</title>

</head>
<body>
	<%
	String userID = null;
	if(session.getAttribute("userID") != null){
		userID= (String) session.getAttribute("userID") ;
	}//세션아이디를 변수에 부여
	if(userID!=null){
		PrintWriter script= response.getWriter();
		script.println("<script>");
		script.println("alert('이미 로그인이 되어있습니다.')");
		script.println("location.href = 'index.jsp'");
		script.println("</script>");
	}
		
	if(user.getUserID() == null || user.getUserPassword()== null || user.getAge() == 0){
			
			PrintWriter script= response.getWriter();
			script.println("<script>");
			script.println("alert('입력이 안 된 사항이 있습니다.')");
			script.println("history.back()");
			script.println("</script>");
			
		}else{
			
			UserDAO userDAO = new UserDAO();
			int result = userDAO.join(user);
			
			if(result==-1){
				PrintWriter script= response.getWriter();
				script.println("<script>");
				script.println("alert('이미 존재하는 아이디입니다.')");
				script.println("history.back()");
				script.println("</script>");
			}
			else{
				session.setAttribute("userID", user.getUserPassword());//세션부여하는거
				PrintWriter script= response.getWriter();
				script.println("<script>");
				script.println("location.href = 'index.jsp'");
				script.println("</script>");
			}
		}
		
	
		
	%>

</body>
</html>