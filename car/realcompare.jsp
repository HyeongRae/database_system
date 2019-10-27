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
        

   </head>
<body style="background-color : rgba( 33, 33, 33, 0.5 );">
<!-- only being on chrome 크롬에서만 돌아갑니다 -->
<div class="center" style="background-color : white">
	<table border="1" class="text-center">
	   <tr>
	      <td colspan="2" height="40px" width="382px" id="car0" class="disable">
	      </td>
	      <td colspan="2" height="40px" width="382px" id="car1" class="disable">
	      </td>
	      <td colspan="2" height="40px" width="382px" id="car2" class="disable">
	      </td>
	      <td colspan="2" height="40px" width="382px" id="car3"  class="disable">
	      </td>
	   </tr>
	   <tr style ="border-width:2px 2px 10px 2px; border-style : solid solid double solid">
	      <td colspan="2" height="240px" width="382px" id="car4" class="disable">
	      </td>
	      <td colspan="2" height="240px" width="382px"id="car5" class="disable">
	      </td>
	      <td colspan="2" height="240px" width="382px" id="car6" class="disable">
	      </td>
	      <td  colspan="2" height="240px" width="382px"id="car7" class="disable">
	      </td>
	   </tr>
	   <tr>
	      <td height="150px" width="170px"  id="car8" >
	      </td>
	      <td id="car20" width="170px" class="disable">
	      </td>
	      <td id="car9" width="170px" class="disable">
	      </td>
	      <td id="car21" class="disable">
	      </td>
	      <td id="car10" width="170px" class="disable">
	      </td>
	      <td id="car22" class="disable">
	      </td>
	      <td id="car11" width="170px"  class="disable">
	      </td>
	      <td id="car23"  class="disable">
	      </td>
	   </tr>
	   <tr>
	      <td height="100px" width="170px" id="car12" class="disable">
	      </td>
	      <td id="car16" class="disable">
	      </td>
	      <td id="car13" class="disable">
	      </td>
	      <td id="car17" class="disable">
	      </td>
	      <td id="car14" class="disable"> 
	      </td>
	      <td id="car18" class="disable">
	      </td>
	      <td id="car15"  class="disable">
	      </td>
	      <td id="car19"  class="disable">
	      </td>
	   </tr>
	</table>
</div>
<script>
ShowStorage();


function ShowStorage() {
        
	
	var info = sessionStorage.length/10;
	
            
	for(var i=0; i<info; i++){
		var storage = document.getElementById('car'+i);
		var key = sessionStorage.key(i);  // 세션 스토리지에 키값을 얻는다
		storage.classList.remove("disable");
		storage.innerHTML =  sessionStorage[key];
		
	}//차이름
	
	for(var i=info; i<info*2; i++){
		var storage = document.getElementById('car'+(i+4-info));
		var key = sessionStorage.key(i);  // 세션 스토리지에 키값을 얻는다
		storage.classList.remove("disable");
		storage.innerHTML ='<img src="' + sessionStorage[key] +'" width="480px" height="230px">';
	}//차사진
	
 	for(var i=info*2; i<info*3; i++){
 		var storage = document.getElementById('car'+(i+8-(info*2)));
 		var key = sessionStorage.key(i);  // 세션 스토리지에 키값을 얻는다
 		storage.classList.remove("disable");
 		price(sessionStorage[key],'car'+(i+8-(info*2)));
 	}//차 값
 	
	for(var i=info*3; i<info*4; i++){
		var storage = document.getElementById('car'+(i+12-(info*3)));
		var key = sessionStorage.key(i);  // 세션 스토리지에 키값을 얻는다
		storage.classList.remove("disable");
		maintenence(sessionStorage[key],'car'+(i+12-(info*3)));
 	}//차 유지비용
 	
	for(var i=info*4; i<info*5; i++){
		var storage = document.getElementById('car'+(i+16-(info*4)));
		var key = sessionStorage.key(i);  // 세션 스토리지에 키값을 얻는다
		storage.classList.remove("disable");
		gauge(sessionStorage[key],'car'+(i+16-(info*4)) );
 	}//차 연비
 	
 	var temp=0;
 	var carid=20;
 	var spec=new Array();
 	
	for(var i=info*5; i<info*10; i++){
 		
		
 		var storage = document.getElementById('car'+ carid);
 		
		var key = sessionStorage.key(i);  // 세션 스토리지에 키값을 얻는다
		
		
		spec.push(sessionStorage[key]);
		
		temp++;
		
		if(temp%5==0){
			carid++;
			}
		
		}
	
	
	if(info==1){
		var storage = document.getElementById('car20');
		storage.classList.remove("disable");
		carlength(spec[0], spec[1], spec[2], spec[3], spec[4], "car20");
	}
	if(info==2){
		var storage = document.getElementById('car20');
		storage.classList.remove("disable");
		var storage = document.getElementById('car21');
		storage.classList.remove("disable");
		carlength(spec[0], spec[1], spec[2], spec[3], spec[4], "car20");
		carlength(spec[5], spec[6], spec[7], spec[8], spec[9], "car21");
	}
	if(info==3){
		var storage = document.getElementById('car20');
		storage.classList.remove("disable");
		var storage = document.getElementById('car21');
		storage.classList.remove("disable");
		var storage = document.getElementById('car22');
		storage.classList.remove("disable");
		carlength(spec[0], spec[1], spec[2], spec[3], spec[4], "car20");
		carlength(spec[5], spec[6], spec[7], spec[8], spec[9], "car21");
		carlength(spec[10], spec[11], spec[12], spec[13], spec[14], "car22");
	}
	if(info==4){
		var storage = document.getElementById('car20');
		storage.classList.remove("disable");
		var storage = document.getElementById('car21');
		storage.classList.remove("disable");
		var storage = document.getElementById('car22');
		storage.classList.remove("disable");
		var storage = document.getElementById('car23');
		storage.classList.remove("disable");
		carlength(spec[0], spec[1], spec[2], spec[3], spec[4], "car20");
		carlength(spec[5], spec[6], spec[7], spec[8], spec[9], "car21");
		carlength(spec[10], spec[11], spec[12], spec[13], spec[14], "car22");
		carlength(spec[15], spec[16], spec[17], spec[18], spec[19], "car23");
	}
	}
    

    

</script>
</body>
</html>