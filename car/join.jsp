<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>CAR</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  		<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  		<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
		<link type="text/css" rel="stylesheet" href="css/bootstrap.css">
  		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    	
		<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
		<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
   		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
   
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
      				<a class="navbar-brand" href="index.jsp" >CAR</a>
    			</div>
    			<div class="collapse navbar-collapse" id="myNavbar">
     				 <ul class="nav navbar-nav navbar-right">
        				<li><a href="compare.do">Compare</a></li>
        				<li><a href="recommend.do">Recommend</a></li>
        				
        				<% 
							if(userID ==null){
						%>
        				
        				<li><a href="login.jsp" style="text-decoration:underline;">login</a></li>
        				
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
		
		 
			 <img src="images/maincar.jpg" width = 100%>
			 <div style="position: absolute; top:100px; left:50%; transform:translateX(-50%); width:400px">
			  
         			  <div class="login-box well">
         			  
              			      <form class="form-horizontal" method="post" action="joinAction.jsp">
                 			       	 <h3>Sign Up</h3>
                 			       
                   			         <label for="userID" >ID</label>
                            		 <input placeholder="ID" type="ID" class="form-control input-md" name="userID" required/>

                			         <label for="password">Password</label>
                			         <input placeholder="Password" type="password" class="form-control input-md" name="userPassword" required/>     
                			    
                			    <br>
                			    	 <label for="sex">Gender</label><br>
                			            <input type="radio" value="man" name="sex" required>man
                			            <br>
                			        	<input type="radio" value="woman" name="sex">woman
                			        	
                			     <br><br>
                			        
                			          <label for="age">Age</label>
                			          <input type="number" class="form-control"  name="age" placeholder="Age" min="1" max="100" required/> 
                			     
                			     <br>
                    			 
                 					 <div class="text-center">
                   			         <input class="btn btn-default btn-block m-t-md" type="submit" name="submit" id="submit" value="Create New Account">
                   			         </div>
                  			  </form>
                  			  
            			</div>
        			</div>
        			
		</header>

	<footer>	
		<p>gudfo19950@naver.com <br>
		kjhtree4@naver.com	<br>
		pcounter200@naver.com</p>
	</footer>
	
	</body>
</html>