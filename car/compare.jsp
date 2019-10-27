<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>CAR</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  		<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  		<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
		<link type="text/css" rel="stylesheet" href="css/graph.css">
		<link type="text/css" rel="stylesheet" href="css/bootstrap.css">
  		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
		<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
		<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
   		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 		<script src="https://d3js.org/d3.v3.min.js" charset="utf-8"></script>
   		<script type="text/javascript" src="js/graph.js"></script>
   		<script type="text/javascript" src="js/compare.js"></script>
        <script>var imgpath = new Array();</script>

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
        				<li><a href="compare.do" style="text-decoration:underline;">Compare</a></li>
        				<li><a href="recommend.do">Recommend</a></li>
        				
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
			 <img src="images/maincar2.jpg" width = 100%>
		</header>
	
		 <aside id ="sidebar">
            <div  align="center" style="font-size:20px;">SELECT</div>
            <br>
            <div id="car" align="center" ></div><br>
            <div id="selectbtn" align="center" ><button class= "btn btn-padding2" onclick="sidebarSave();">select</button></div>
      	 </aside>  

	
		<div class="text-center compare">
			<div class="container">

				<form action ="search_compare.do" class ="container" style="padding-bottom:40px;">
					<select name ="search" class = "search">
						<option value = "car_name">차 이름</option>
						<option value = "company_name">제조사</option>
					</select>
			
					<input type ="text" name="searchtext" class = "search">

					<div class = "btn_submit">				
						<input type="image" name="submit" src="images/search.png" width = "35px" height ="35px"/>
					</div>
				</form>
				
				<%! int cnt = 0; %><%cnt = 0; %>
				
				<div class="card">
					<c:forEach items="${list}" var="dto" varStatus="i">
						<c:set var="img" value="imglist${i.index}" />  
						<%cnt++; %>
					
 						<div class="col-lg-4 carditem">
  						<button class="btn" data-toggle="modal" data-target=".${dto.car_name}" style="width:337px;" data-backdrop="static" data-keyboard="false" onclick="scrollOnn();">
  						<img src="${dto.path}" height="150"> </button> <br><p>${dto.car_name}</p> </div>
						
						<!-- Modal -->
						<div class="modal fade ${dto.car_name}" role="dialog">
						  <div class="modal-dialog" id="mymodal">
						    
						    <!-- Modal content-->
						    <div class="modal-content" style="min-width:566px;">
						      <div class="modal-header">
						        <button type="button" class="close" data-dismiss="modal" onclick="scrollOff();">&times;</button>
						        <h4 class="modal-title">${dto.car_name} by ${dto.companyName}</h4>
						        <h3>${dto.kind_of}</h3>
						      </div>
						      <div class="modal-body">
						      	<div id="${dto.car_name}Carousel" class="carousel" data-ride="carousel">
						
									<div class='carousel-inner text-center' role='listbox'>
									<script>var slidecount = 0;</script>
									
						      		<c:forEach items="${requestScope[img]}" var="imgd">	
						      			<script>
						    			if(slidecount == 0) {
						      				document.write("<div class='item active' style='height:200px;'>");
						      				document.write("<img src='${imgd.path}'>");
						      				document.write("</div>");
						      			}
						      			else {
						      				document.write("<div class='item' style='height:200px;'>");
										    document.write("<img src='${imgd.path}'>");
										    document.write("</div>");
						      			}
						      			slidecount++;
						      			</script>
									</c:forEach>
									</div>
											<!-- Left and right controls -->
										  <a class="left mycarousel-control" href="#${dto.car_name}Carousel" role="button" data-slide="prev">
										    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
										    <span class="sr-only">Previous</span>
										  </a>
										  <a class="right mycarousel-control" href="#${dto.car_name}Carousel" role="button" data-slide="next">
										    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
										    <span class="sr-only">Next</span>
										  </a>
									</div>
								<table border ="1">
									<tr>
										<td><div id = "car_${dto.car_name}1" style="width:250px;"></div></td>
										<td><div id = "car_${dto.car_name}2" style="width:280px;"></div></td>
									</tr>
									<tr>
										<td ><div id = "car_${dto.car_name}3" style="width:250px;"></div></td>
										<td style="padding-left:20px;"><div id = "car_${dto.car_name}4" style="width:280px;"></div></td>
									</tr>
								</table>
								<script>
									price('${dto.price}',"car_"+'${dto.car_name}'+"1");
									maintenence('${dto.maintenance_expenses}',"car_"+'${dto.car_name}'+"3");
									carlength('${dto.overall_length}', '${dto.overall_width}', '${dto.overall_height}', '${dto.weight}', '${dto.displacement}', "car_"+'${dto.car_name}'+"2");
									gauge('${dto.fuelefficiency}', "car_"+'${dto.car_name}'+"4");
								</script>
								
						      </div>
						      <div class="modal-footer">
						      	<button type="button" class="btn btn-default btn-padding2" data-dismiss="modal" onclick="showimg('${dto.car_name}', '${dto.path}','${dto.price}','${dto.maintenance_expenses}','${dto.overall_length}','${dto.overall_width}','${dto.overall_height}','${dto.weight}','${dto.displacement}','${dto.fuelefficiency}');">select</button>
						        <button type="button" class="btn btn-default btn-padding2" data-dismiss="modal" onclick="scrollOff();">Close</button>
						      </div>
						    </div>
						      
						    </div>
						  </div>
				
					</c:forEach>
	
				</div>
				
				<br>
				
				<button type="button" onclick ="up();" class="btn btn-padding up">▲</button>
				<button type="button" onclick ="down();" class="btn btn-padding down">▼</button> 
				
				<br>
				<br>
			</div>
		</div>
		
	<footer>	
		<p>gudfo19950@naver.com <br>
		kjhtree4@naver.com	<br>
		pcounter200@naver.com</p>
	</footer>
	<script>
	var t = 0;
	var cnt = <%=cnt%> * $('.carditem').outerHeight();
	var cntt = <%=cnt%>;

	var cntt2;
	if(cntt%2 == 0)
		cntt2 = parseInt(cntt/2);
	else
		cntt2 = parseInt(cntt/2)+1;
		
	var cntt3;
	if(cntt%3 == 0)
		cntt3 = parseInt(cntt/3);
	else
		cntt3 = parseInt(cntt/3)+1;
		
	switch ($('.card').width()) {
		case 1170: cnt = cnt*cntt3/cntt; break;
		case 970 : cnt = cnt*cntt2/cntt; break;
		default : cnt; break;
	}


	function down() {
		if(t > -(cnt - $('.carditem').outerHeight())){	
			t = t - $('.carditem').outerHeight();
			$('.carditem').animate({top: t + 'px'}).dequeue();
		}
	}

	function up() {
		if(t < 0){
	    	t = t + $('.carditem').outerHeight();
	    	$('.carditem').animate({top: t + 'px'}).dequeue();
		}
	}

	var lastwidth = $('.card').width();

	$(window).resize(function(){  //한 줄에 나오는 아이템 개수가 바뀌어도 가장 위에 위치하던 아이템들이 계속 위에 위치하도록 유지
		if($('.card').width() > lastwidth){	//한줄에 나오는 아이템 개수가 줄어들떄
			if($('.card').width() == 970) {  //1에서 2로
				t = t*(cntt2/cntt);
				cnt = cnt*(cntt2/cntt);
			}
			else if($('.card').width() >= 1170) {
				switch (lastwidth) {
					case 970 : 	t = t*(cntt3/cntt2); 
								cnt = cnt*(cntt3/cntt2); 
								break; 			//2에서 3으로
					default :	t = t*(cntt3/cntt);
								cnt = cnt*(cntt3/cntt);
								break;          //1에서 3으로
				}
			}
		}
		else if($('.card').width() < lastwidth){  //개수가 늘어날때
			if($('.card').width() <= 750) {
				switch (lastwidth) {
					case 1170 : t = t*(cntt/cntt3); cnt = cnt*(cntt/cntt3); break;  //3에서 1로
					case 970 : t = t*(cntt/cntt2); cnt = cnt*(cntt/cntt2); break;  //2에서 1로
				}
			}
			else if($('.card').width() <= 970) {	//3에서 2로
				t = t*(cntt2/cntt3);
				cnt = cnt*(cntt2/cntt3);
			}
		}
		lastwidth = $('.card').width();
		if(t%$('.carditem').outerHeight() !=0 )
			t = parseInt(t/$('.carditem').outerHeight())*$('.carditem').outerHeight();
		if(t < -(cnt-$('.carditem').outerHeight())){	
			t = -(cnt-$('.carditem').outerHeight());
		}
		$('.carditem').animate({top: t + 'px'}).dequeue();
	});
	
	
	window.onscroll = function() { movesidebar()};

	var sidebar = document.getElementById("sidebar");
	var header = document.getElementById("header");
	var sticky = header.offsetTop + header.offsetHeight;

	function movesidebar() {
		if (window.pageYOffset >= sticky) {
			sidebar.classList.add("sticky");
		}
		else {
			sidebar.classList.remove("sticky");
		}
	}
	
	$('.card').on('mousewheel DOMMouseScroll', function(e) {
		e.preventDefault();
		e.stopPropagation();
		if (e.originalEvent.wheelDelta < 0 && scrollvar == 0) { 
			down();  
		} 
		else if(e.originalEvent.wheelDelta > 0 && scrollvar == 0){
			up(); 
		}	
	});


	var carImageArray=new Array();//to show
	var car_nameArray=new Array();//to show

	var car_priceArray=new Array();//to save
	var car_maintenenceArray=new Array();//to save
	var car_lengthArray=new Array();//to save
	var car_widthArray=new Array();//to save
	var car_heightArray=new Array();//to save
	var car_weightArray=new Array();//to save
	var car_displacmentArray=new Array();//to save
	var car_fuelArray=new Array();//to save

	var restrict=0;
	var o = document.getElementById('car');


	function showimg(name, path,price,main,length,width,height,weight,dis,fuel){
	 
	   if(restrict==4){
	      alert("4개까지 검색하실 수 있습니다.")
	   }
	   else{
		
	   carImageArray.push(path);
	   car_nameArray.push(name);
	   car_priceArray.push(price);
	   car_maintenenceArray.push(main);
	   car_lengthArray.push(length);
	   car_widthArray.push(width);
	   car_heightArray.push(height);
	   car_weightArray.push(weight);
	   car_displacmentArray.push(dis);
	   car_fuelArray.push(fuel);
	   
	   
	   restrict++;
	   
	   
	   o.innerHTML="";//초기화
	   
	   for(var i=0; i<car_nameArray.length; i++){
	   
			
			scrollvar=0;
			
	      var btncar = document.createElement("BUTTON");
	      var img = document.createElement("img");
	      var textnodeddd= document.createTextNode(car_nameArray[i]);
	      
	      
	      selectbtn.text="select";
	      
	      img.src = carImageArray[i];
	      img.style.width='137px';

	      btncar.appendChild(img);
	      
	      btncar.style.border="1px";
	       btncar.setAttribute("class", "btn");
	       btncar.id=textnodeddd.nodeValue;
	       btncar.setAttribute("onclick", "showimg2(this.id);");
	       
	      o.appendChild(btncar);
	      o.appendChild(textnodeddd);
	      
	   
	      }
	   }

	}

	function showimg2(sid){
	    var rs= confirm('삭제하시겠습니까?');
	       if(rs==true){//삭제한다 누르면
	          restrict--;
	          for(var i=0; i<car_nameArray.length; i++){// 배열 다검사
	             
	             if(sid==car_nameArray[i]){// 지금 누른 버튼의 아이디와 배열의 아이디와 같은것이 있으면
	                car_nameArray.splice(i,1);// 배열에서 해당값 잘라내고 정렬
	                carImageArray.splice(i,1);// 배열에서 해당값 잘라내고 정렬
	                
	                
	                o.innerHTML="";//초기화
	                
	                for(var i=0; i<car_nameArray.length; i++){
	                
	                   var btncar = document.createElement("BUTTON");
	                   var img = document.createElement("img");
	                   var textnodeddd= document.createTextNode(car_nameArray[i]);
	                   img.src = carImageArray[i];
	                   img.style.width='137px';
	                   

	                   btncar.appendChild(img);
	                   btncar.style.border="1px";
	                   btncar.setAttribute("onclick", "showimg2(this.id);");
	                   
	                    btncar.setAttribute("class", "btn");
	                    btncar.id=textnodeddd.nodeValue;
	                    o.appendChild(btncar);
	                   o.appendChild(textnodeddd);
	                   
	                   
	                   }
	             }
	          }
	       }
	         
	}
	    
	var carkeyArray=new Array();
	carkeyArray.push("a_a");
	carkeyArray.push("a_b");
	carkeyArray.push("a_c");  
	carkeyArray.push("a_d"); 

	var imagekeyArray=new Array();
	imagekeyArray.push("b_a");
	imagekeyArray.push("b_b");
	imagekeyArray.push("b_c");  
	imagekeyArray.push("b_d"); 

	var pricekeyArray=new Array();
	pricekeyArray.push("c_a");
	pricekeyArray.push("c_b");
	pricekeyArray.push("c_c");  
	pricekeyArray.push("c_d");

	var maintenencekeyArray=new Array();
	maintenencekeyArray.push("d_a");
	maintenencekeyArray.push("d_b");
	maintenencekeyArray.push("d_c");  
	maintenencekeyArray.push("d_d");


	var fuelkeyArray=new Array();
	fuelkeyArray.push("e_a");
	fuelkeyArray.push("e_b");
	fuelkeyArray.push("e_c");  
	fuelkeyArray.push("e_d");


	var lengthkeyArray=new Array();
	lengthkeyArray.push("f_a");
	lengthkeyArray.push("g_a");
	lengthkeyArray.push("h_a");  
	lengthkeyArray.push("i_a");

	var widthkeyArray=new Array();
	widthkeyArray.push("f_b");
	widthkeyArray.push("g_b");
	widthkeyArray.push("h_b");  
	widthkeyArray.push("i_b");

	var heightkeyArray=new Array();
	heightkeyArray.push("f_c");
	heightkeyArray.push("g_c");
	heightkeyArray.push("h_c");  
	heightkeyArray.push("i_c");

	var weightkeyArray=new Array();
	weightkeyArray.push("f_d");
	weightkeyArray.push("g_d");
	weightkeyArray.push("h_d");  
	weightkeyArray.push("i_d");

	var displacementkeyArray=new Array();
	displacementkeyArray.push("f_e");
	displacementkeyArray.push("g_f");
	displacementkeyArray.push("h_e");  
	displacementkeyArray.push("i_e");



	    
	function sidebarSave(){		   
	    sessionStorage.clear(); 
	    	
	    var length=car_nameArray.length;
   
	    for(var i=0; i<length; i++){
	    	
	    	var carval= car_nameArray[i];
	    	var imageval=carImageArray[i];
	    	var priceval=car_priceArray[i];
	    	var maintenenceval=car_maintenenceArray[i];
	    	var lengthval=car_lengthArray[i];
	    	var widthval=car_widthArray[i];
	    	var heightval=car_heightArray[i];
	    	var weightval=car_weightArray[i];
	    	var displacementval=car_displacmentArray[i];
	    	var fuelval=car_fuelArray[i];
	    		
	    	sessionStorage[carkeyArray[i]] = carval;
	    	sessionStorage[lengthkeyArray[i]] = lengthval;
	    	sessionStorage[weightkeyArray[i]] = weightval; 
	    	sessionStorage[heightkeyArray[i]] = heightval;
	    	sessionStorage[widthkeyArray[i]] = widthval;
	    	sessionStorage[fuelkeyArray[i]] = fuelval;
	    	sessionStorage[maintenencekeyArray[i]] = maintenenceval;
	    	sessionStorage[displacementkeyArray[i]] = displacementval;
	    	sessionStorage[imagekeyArray[i]] = imageval;
	    	sessionStorage[pricekeyArray[i]] = priceval;  
	    	}	    
	    window.open("realcompare.jsp");
	}
	</script>

	</body>
</html>
