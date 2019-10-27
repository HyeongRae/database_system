<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
	<head>
		<title>CAR</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  		<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  		<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
		<link type="text/css" rel="stylesheet" href="css/piechart.css">
		<link type="text/css" rel="stylesheet" href="css/bootstrap.css">
  		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
		<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
		<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
   		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 		<script src="https://d3js.org/d3.v3.min.js" charset="utf-8"></script>
   		<script type="text/javascript" src="js/graph.js"></script>
   
	</head>
	
	<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">
		<%
			String userID=null;
			if(session.getAttribute("userID")!=null){
			userID=(String)session.getAttribute("userID");
			}
		%>
		
		
		
		<nav class="navbar navbar-default navbar-fixed-top">
  			<div class="container-fluid">
    			<div class="navbar-header">
     				 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
       					 <span class="icon-bar"></span>
       					 <span class="icon-bar"></span>
       					 <span class="icon-bar"></span>                        
      				</button>
      				<a class="navbar-brand" href="index.jsp">CAR</a>
    			</div>
    			<div class="collapse navbar-collapse" id="myNavbar">
     				 <ul class="nav navbar-nav navbar-right">
        				<li><a href="compare.do">Compare</a></li>
        				<li><a href="recommend.do" style="text-decoration:underline;">Recommend</a></li>
        				
        				<% 
							if(userID ==null){
						%>
        				
        				<li><a href="login.jsp">login</a></li>
        				
        				<%
							}else{
						%>
						
						<li><a href="logoutAction.jsp">logout</a></li>
						
						<%
							}
						%>
      				</ul>
    			</div>
  			</div>
		</nav>

		<header id ="header">
			 <img src="images/maincar3.jpg" width = 100%>
		</header>
	
		
		<div class="recommand text-center">	
			<script> var dataset = new Array(); var dataname = new Array();</script>
			<c:forEach items="${searchlist}" var="dto">
				<script>
					dataset.push('${dto.count}');
					dataname.push('${dto.search}');
				</script>
			</c:forEach>
			
			<div class = "rounddiv" style="margin-top : 30px;">
				<form action="recommendCarChoice.do">
					<p>차</p>
					<div class = "rounddiv">
						<span>나이   </span>
						<input type="checkbox" id ="check1" name = "age" value = "10"><label for="check1"></label>
						<input type="checkbox" id ="check2" name = "age" value = "20"><label for="check2"></label>
						<input type="checkbox" id ="check3" name = "age" value = "30"><label for="check3"></label>
						<input type="checkbox" id ="check4" name = "age" value = "40"><label for="check4"></label>
						<input type="checkbox" id ="check5" name = "age" value = "50"><label for="check5"></label>
					</div>
					<br>
					<div class = "rounddiv" style="margin-top : 30px;">
					<span>성별 </span>
						<input type="radio" class = "disable" id ="radio1" name = "gender" value = "man"><label for="radio1">남</label>
						<input type="radio" class = "disable" id ="radio2" name = "gender" value = "woman"><label for="radio2">여</label>
					</div>
					<input type="submit" value ="전송" class ="btn btn-padding" style="margin-left : 10px">
				</form>
			</div>
			
			
			
			<div class = "rounddiv" style="margin-top : 30px;">
				<form action="recommendCompanyChoice.do">
					<p>제조사</p>
					<div class = "rounddiv">
						<span>나이   </span>
						<input type="checkbox" id ="check6" name = "age" value = "10"><label for="check6"></label>
						<input type="checkbox" id ="check7" name = "age" value = "20"><label for="check7"></label>
						<input type="checkbox" id ="check8" name = "age" value = "30"><label for="check8"></label>
						<input type="checkbox" id ="check9" name = "age" value = "40"><label for="check9"></label>
						<input type="checkbox" id ="check10" name = "age" value = "50"><label for="check10"></label>
					</div>
					<br>
					<div class = "rounddiv" style="margin-top : 30px;">
					<span>성별 </span>
						<input type="radio" class = "disable" id ="radio3" name = "gender" value = "man"><label for="radio3">남</label>
						<input type="radio" class = "disable" id ="radio4" name = "gender" value = "woman"><label for="radio4">여</label>
					</div>
					<input type="submit" value ="전송" class ="btn btn-padding" style="margin-left : 10px">
				</form>
			</div>
			
			<div id="piechart"></div>
			
		</div>
	
  

	<footer>	
		<p>gudfo19950@naver.com <br>
		kjhtree4@naver.com	<br>
		pcounter200@naver.com</p>
	</footer>
	
	<script>
		piechart(dataname, dataset, "piechart");
	</script>

	</body>
</html>

