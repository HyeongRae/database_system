function gauge(value, sel){
	var name = value;
	var gaugeMaxValue = 10.9;
	value -= 7.2;
	if(value > 10.9) value = 10.9;
	else if(value < 0) value = 0;
	
	var percentValue = value / gaugeMaxValue; 
	var needleClient;	
	var barWidth, chart, chartInset, degToRad, repaintGauge,
	    height, margin, numSections, padRad, percToDeg, percToRad, 
	    percent, radius, sectionIndx, svg, totalPercent, width;

	  percent = percentValue;
	  numSections = 1;
	  sectionPerc = 1 / numSections / 2;
	  padRad = 0.025;
	  chartInset = 10;
	    
	  totalPercent = .75;
	
	  el = d3.select("#"+sel);
	
	  margin = {
	    top: 150,
	    right: 20,
	    bottom: 0,
	    left: 20
	  };
	
	  width = 200 - margin.left - margin.right;
	  height = width;
	  radius = Math.min(width, height) / 2;
	  barWidth = 40 * width / 300;
	
	  
	  percToDeg = function(perc) {
	    return perc * 360;
	  };
	
	  percToRad = function(perc) {
	    return degToRad(percToDeg(perc));
	  };
	
	  degToRad = function(deg) {
	    return deg * Math.PI / 180;
	  };
	

	  svg = el.append('svg').attr('width', width + margin.left + margin.right).attr('height', height + margin.top + margin.bottom);
	  

	  chart = svg.append('g').attr('transform', "translate(" + ((width + margin.left) / 2) + ", " + ((height + margin.top) / 2) + ")");
	
	  chart.append('path').attr('class', "arc chart-first");
	  chart.append('path').attr('class', "arc chart-second");
	  chart.append('path').attr('class', "arc chart-third");
	  chart.append('path').attr('class', "arc chart-four");
	  chart.append('path').attr('class', "arc chart-five");
	  
	  arc5 = d3.svg.arc().outerRadius(radius - chartInset).innerRadius(radius - chartInset - barWidth)
	  arc4 = d3.svg.arc().outerRadius(radius - chartInset).innerRadius(radius - chartInset - barWidth)
	  arc3 = d3.svg.arc().outerRadius(radius - chartInset).innerRadius(radius - chartInset - barWidth)
	  arc2 = d3.svg.arc().outerRadius(radius - chartInset).innerRadius(radius - chartInset - barWidth)
	  arc1 = d3.svg.arc().outerRadius(radius - chartInset).innerRadius(radius - chartInset - barWidth)
	
	  repaintGauge = function () 
	  {
	    perc = 0.5;
	    var next_start = totalPercent;
	    
	    arcStartRad = percToRad(next_start);
	    arcEndRad = arcStartRad + percToRad(perc / 5);
	    next_start += perc / 5;
	
	    arc1.startAngle(arcStartRad).endAngle(arcEndRad);
	
	    arcStartRad = percToRad(next_start);
	    arcEndRad = arcStartRad + percToRad(perc / 5);
	    next_start += perc / 5;
	
	    arc2.startAngle(arcStartRad + padRad).endAngle(arcEndRad);
	
	    arcStartRad = percToRad(next_start);
	    arcEndRad = arcStartRad + percToRad(perc / 5);
	    next_start += perc / 5;
	    
	    arc3.startAngle(arcStartRad + padRad).endAngle(arcEndRad);
	
	    arcStartRad = percToRad(next_start);
	    arcEndRad = arcStartRad + percToRad(perc / 5);
	    next_start += perc / 5;
	
	    arc4.startAngle(arcStartRad + padRad).endAngle(arcEndRad);
	    
	    arcStartRad = percToRad(next_start);
	    arcEndRad = arcStartRad + percToRad(perc / 5);
	    next_start += perc / 5;
	
	    arc5.startAngle(arcStartRad + padRad).endAngle(arcEndRad);
	    
	    chart.select(".chart-first").attr('d', arc1);
	    chart.select(".chart-second").attr('d', arc2);
	    chart.select(".chart-third").attr('d', arc3);
	    chart.select(".chart-four").attr('d', arc4);
	    chart.select(".chart-five").attr('d', arc5);
	
	  }
	
	    var dataset = [{metric:name, value: value}]
	
	    var texts = svg.selectAll("text")
	                .data(dataset)
	                .enter();
	     
	    texts.append("text")
	         .text(function(){
	              return name;
	         })
	         .attr('id', "name")
	         .attr('transform', "translate(" + ((width + margin.left) / 2.1) + ", " + ((height + margin.top) / 1.5) + ")")
	         .attr("font-size",20)
	         .style("fill", "#000000");
	      
	
	var trX = 180 - 210 * Math.cos(percToRad(percent / 2)) +20; 
	var trY = 195 - 210 * Math.sin(percToRad(percent / 2)) +20;
	
	  
	    texts.append("text")
	        .text(function(){
	            return 5;
	        })
	        .attr('id', 'scale0')
	        .attr('transform', "translate(" + ((width + margin.left) / 100 +27) + ", " + ((height + margin.top) / 2 - 12) + ")")
	        .attr("font-size", 20)
	        .style("fill", "#5D5D5D")
	        .style("font-weight", "bold");
	    
	    texts.append("text")
	    .text(function(){
	        return 4;
	    })
	    .attr('id', 'scale10')
	    .attr('transform', "translate(" + ((width + margin.left) / 3.6) + ", " + (((height + margin.top) / 3.8)+31) + ")")
	    .attr("font-size", 20)
	    .style("fill", "#5D5D5D")
	    .style("font-weight", "bold");
	    
	    
	    texts.append("text")
	        .text(function(){
	            return 3;
	        })
	        .attr('id', 'scale20')
	        .attr('transform', "translate(" + ((width + margin.left) / 2.1 ) + ", " + (((height + margin.top) / 4.8)+37) + ")")
	        .attr("font-size", 20)
	        .style("fill", "#5D5D5D")
	    	.style("font-weight", "bold");   
	                    
	    texts.append("text")
		    .text(function(){
		        return 2;
		    })
		    .attr('id', 'scale30')
		    .attr('transform', "translate(" + ((width + margin.left) / 1.5) + ", " + (((height + margin.top) / 3.8)+33) + ")")
		    .attr("font-size", 20)
		    .style("fill", "#5D5D5D")
		    .style("font-weight", "bold");
	    
	    texts.append("text")
		    .text(function(){
		        return 1;
		    })
		    .attr('id', 'scale40')
		    .attr('transform', "translate(" + ((width + margin.left) / 1.28) + ", " + ((height + margin.top) / 2 - 12) + ")")
		    .attr("font-size", 20)
		    .style("fill", "#5D5D5D")
		    .style("font-weight", "bold");
	    
		svg.append("text")
	     .text(function(){
	          return "연비";
	     })
	     .attr("x", 70)
	     .attr("y", 55)
	     .attr("font-size", 19)
	     .style("fill", "#5D5D5D");
	    
	  var Needle = (function() {
	
	    var recalcPointerPos = function(perc) {
	      var centerX, centerY, leftX, leftY, rightX, rightY, thetaRad, topX, topY;
	      thetaRad = percToRad(perc / 2);
	      centerX = 0;
	      centerY = 0;
	      topX = centerX - this.len * Math.cos(thetaRad);
	      topY = centerY - this.len * Math.sin(thetaRad);
	      leftX = centerX - this.radius * Math.cos(thetaRad - Math.PI / 2);
	      leftY = centerY - this.radius * Math.sin(thetaRad - Math.PI / 2);
	      rightX = centerX - this.radius * Math.cos(thetaRad + Math.PI / 2);
	      rightY = centerY - this.radius * Math.sin(thetaRad + Math.PI / 2);
	     
	        
	      return "M " + leftX + " " + leftY + " L " + topX + " " + topY + " L " + rightX + " " + rightY;
	    };
	
	    function Needle(el) {
	      this.el = el;
	      this.len = width / 2.5;
	      this.radius = this.len / 8;
	    }
	
	    Needle.prototype.render = function() {
	      this.el.append('circle').attr('class', 'needle-center').attr('cx', 0).attr('cy', 0).attr('r', this.radius);
	
	      return this.el.append('path').attr('class', 'needle').attr('id', 'client-needle').attr('d', recalcPointerPos.call(this, 0));     
	    };
	
	    Needle.prototype.moveTo = function(perc) {
	      var self,
	          oldValue = this.perc || 0;
	
	      this.perc = perc;
	      self = this;
	
	      // Reset pointer position
	      this.el.transition().delay(100).ease('quad').duration(200).select('.needle').tween('reset-progress', function() {
	        return function(percentOfPercent) {
	          var progress = (1 - percentOfPercent) * oldValue;

	          repaintGauge(progress);
	          return d3.select(this).attr('d', recalcPointerPos.call(self, progress));
	        };
	      });
	
	      this.el.transition().delay(300).ease('bounce').duration(1500).select('.needle').tween('progress', function() {
	        return function(percentOfPercent) {
	          var progress = percentOfPercent * perc;
	          
	          repaintGauge(progress);
	          return d3.select(this).attr('d', recalcPointerPos.call(self, progress));
	        };
	      });
	
	    };
	    
	    return Needle;

	  })();
	    
	  needle = new Needle(chart);
	  needle.render();
	  needle.moveTo(percent);
}


function carlength(xlen, ylen, zlen, weight, dis, sel) {
	xlen = (xlen/1000 - xlen%100/1000).toFixed(2);
	ylen = (ylen/1000 - ylen%100/1000).toFixed(2);
	zlen = (zlen/1000 - zlen%100/1000).toFixed(2);
	var perdis = dis/8000*127;
	
	var svg = d3.select("#"+sel).append("svg")
	                             .attr("width", 300)
	                             .attr("height",300);
	
	var rect = svg.append('rect')
				  .attr("x", 1)
				  .attr("y", 157 - perdis)
				  .attr("width", 198)
				  .attr("height", perdis)
				  .attr("fill", "#6B66FF");
	
	var img = svg.append('svg:image')
				 .attr("xlink:href", "images/car_icon.png")
				 .attr("x", 0)
				 .attr("y", 30)
				 .attr("width", "200")
				 .attr("height", "127");
	
	var x = svg.append("line")
	           .attr("x1", 5)
	           .attr("y1", 130)
	           .attr("x2", 100)
	           .attr("y2", 175)
	           .attr("stroke-width", 2)
		           .attr("stroke", "#5D5D5D");
	
	var y = svg.append("line")
    		   .attr("x1", 100)
   			   .attr("y1", 175)
    		   .attr("x2", 200)
    		   .attr("y2", 145)
   			   .attr("stroke-width", 2)
    		   .attr("stroke", "#5D5D5D");
	
	var z = svg.append("line")
    		   .attr("x1", 100)
    		   .attr("y1", 175)
   			   .attr("x2", 100)
   			   .attr("y2", 25)
   			   .attr("stroke-width", 2)
   			   .attr("stroke", "#5D5D5D");
	
	svg.append("text")
         .text(function(){
              return xlen +"m";
         })
         .attr('id', "xlen")
         .attr("x", 25)
         .attr("y", 173)
         .attr("font-size", 20)
         .style("fill", "#5D5D5D");
    
	svg.append("text")
         .text(function(){
              return ylen +"m";
         })
         .attr('id', "ylen")
         .attr("x", 145)
         .attr("y", 178)
         .attr("font-size",20)
         .style("fill", "#5D5D5D");
    
	svg.append("text")
         .text(function(){
              return zlen +"m";
         })
         .attr('id', "zlen")
         .attr("x", 80)
         .attr("y", 20)
         .attr("font-size",20)
         .style("fill", "#5D5D5D");
	
	var img = svg.append('svg:image')
				 .attr("xlink:href", "images/scale.png")
				 .attr("x", 30)
				 .attr("y", 200)
				 .attr("width", "60")
				 .attr("height", "60");
	
	svg.append("text")
       .text(function(){
            return weight/1000 + "t";
       })
       .attr('id', "weight")
       .attr("x", 100)
       .attr("y", 240)
       .attr("font-size",20)
       .style("fill", "#5D5D5D");
	
	svg.append("text")
	   .text(function(){
	        return dis+"cc";
	   })
	   .attr('id', "dis")
	   .attr("x", 200)
	   .attr("y", 85)
	   .attr("font-size",20)
	   .style("fill", "#5D5D5D");
}

function barchart(value, standard, sel){
	
	var pervalue = value/standard*350;
	
	var svg = d3.select("#"+sel)
				.append("svg")
				.attr("width", 450)
				.attr("height", 100);
	
	var barbg = svg.append('rect')
					.attr("rx", 6)
				 	.attr("ry", 6)
					.attr("x", 8)
					.attr("y",8)
					.attr("width", 350)
					.attr("height", 29)
					.attr("fill", "#D5D5D5");
	
	var bar = svg.append('rect')
				 .attr("rx", 6)
				 .attr("ry", 6)
				 .attr("x", 10)
				 .attr("y", 10)
				 .attr("width", pervalue)
				 .attr("height", 25)
				 .attr("fill", "#6B66FF");
	
	svg.append("text")
       .text(function(){
            return value;
       })
       .attr('id', "value")
       .attr("x", pervalue/2 - 5)
       .attr("y", 29)
       .attr("font-size", 20)
       .style("fill", "#5D5D5D");
	
}



function price(price, sel){
	var alter_price=parseInt(((price)-945)/250);
	var blue=parseInt(255-alter_price);
	var red=parseInt(alter_price);
	
	var svg = d3.select("#"+sel).append("svg")
    .attr("width", 200)
    .attr("height",300);
	
	svg.append("text")
     .text(function(){
          return "가격";
     })
     .attr("x", 78)
     .attr("y", 48)
     .attr("font-size", 20)
     .style("fill", "#5D5D5D");
	
	var rect = svg.append('rect')
	  .attr("x", 37)
	  .attr("y", 50 )
	  .attr("width", 126)
	  .attr("height",100)
	  .attr("fill", "rgb(" + red +"," +  0 + "," + blue+ ")");
	
	var img = svg.append('svg:image')
	 .attr("xlink:href", "images/dollar.png")
	 .attr("x", 0)
	 .attr("y", 50)
	 .attr("width", 200)
	 .attr("height", 127);
	
	svg.append("text")
     .text(function(){
          return price +"만원";
     })
     .attr("x", 50)
     .attr("y", 200)
     .attr("font-size", 20)
     .style("fill", "#5D5D5D");
	

}


function maintenence(price,sel){
	var alter_price=parseInt(((price)-52)/3);
	var blue=parseInt(255-alter_price);
	var red=parseInt(alter_price);
	
	var svg = d3.select("#"+sel).append("svg")
    .attr("width", 200)
    .attr("height",300);
	
	svg.append("text")
     .text(function(){
          return "유지비용";
     })
     .attr("x", 58)
     .attr("y", 48)
     .attr("font-size", 20)
     .style("fill", "#5D5D5D");
	
	
	var rect = svg.append('rect')
	  .attr("x", 37)
	  .attr("y", 50 )
	  .attr("width", 126)
	  .attr("height",100)
	  .attr("fill", "rgb(" + red +"," +  0 + "," + blue+ ")");
	
	var img = svg.append('svg:image')
	 .attr("xlink:href", "images/dollar.png")
	 .attr("x", 0)
	 .attr("y", 50)
	 .attr("width", 200)
	 .attr("height", 127);
	
	svg.append("text")
     .text(function(){
          return price +"만원";
     })
     .attr("x", 50)
     .attr("y", 200)
     .attr("font-size", 20)
     .style("fill", "#5D5D5D");
	

}

function piechart(dataname, dataset, sel) {
	var svg = d3.select("#"+sel)
				.append("svg")
				.append("g")
			
	svg.append("g")
		.attr("class", "slices");
	svg.append("g")
		.attr("class", "labels");
	svg.append("g")
		.attr("class", "lines");
	
	if(dataset[0] == null) {
		svg.append("text")
	        .text("검색 결과가 없습니다")
	        .attr('id', "null")
	        .attr("x", 0)
	        .attr("y", 0)
	        .attr("font-size", 20)
	        .style("fill", "#000");
	}
	
	var width = $('#'+sel).width(),
    height = 450,
	radius = Math.min(width, height) / 2;
	
	var pie = d3.layout.pie()
		.sort(null)
		.value(function(d) {
			return d.value;
		});

	var arc = d3.svg.arc()
		.outerRadius(radius * 0.8)
		.innerRadius(radius * 0.4);

	var outerArc = d3.svg.arc()
		.innerRadius(radius * 0.9)
		.outerRadius(radius * 0.9);
	
	svg.attr("transform", "translate(" + width / 2 + "," + height / 2 + ")");

	var key = function(d){ return d.data.label; };

	var color = d3.scale.ordinal()
				  .domain(dataname.map(function(d){return d}))
				  .range(["#F15F5F", "#F29661", "#F2CB61", "#E5D85C", "#BCE55C", "#86E57F", "#5CD1E5","#6799FF", "#6B66FF", "#A566FF"]);
	
	var count = 0;
	function output() {
		return dataset[count++];
	}
	
	function inputData(){
		var labels = color.domain();
		return labels.map(function(label){
			return { label: label, value: output() }
		});
	}
	
	change(inputData());

	function change(data) {
		var slice = svg.select(".slices").selectAll("path.slice")
						.data(pie(data), key);

		slice.enter()
			 .insert("path")
			 .style("fill", function(d) { return color(d.data.label); })
			 .style("border", "1px solid black")
			 .attr("class", "slice");

		slice		
			.transition().duration(1000)
			.attrTween("d", function(d) {
				this._current = this._current || d;
				var interpolate = d3.interpolate(this._current, d);
				this._current = interpolate(0);
				return function(t) {
					return arc(interpolate(t));
				};
			})

		slice.exit()
			.remove();

		
		var text = svg.select(".labels").selectAll("text")
			.data(pie(data), key);

		text.enter()
			.append("text")
			.attr("font-size", 20)
			.text(function(d) {
				return d.data.label;
			});
		
		function midAngle(d){
			return d.startAngle + (d.endAngle - d.startAngle)/2;
		}

		text.transition().duration(1000)
			.attrTween("transform", function(d) {
				this._current = this._current || d;
				var interpolate = d3.interpolate(this._current, d);
				this._current = interpolate(0);
				return function(t) {
					var d2 = interpolate(t);
					var pos = outerArc.centroid(d2);
					pos[0] = radius * (midAngle(d2) < Math.PI ? 1 : -1);
					return "translate("+ pos +")";
				};
			})
			.styleTween("text-anchor", function(d){
				this._current = this._current || d;
				var interpolate = d3.interpolate(this._current, d);
				this._current = interpolate(0);
				return function(t) {
					var d2 = interpolate(t);
					return midAngle(d2) < Math.PI ? "start":"end";
				};
			});

		text.exit()
			.remove();

		
		var polyline = svg.select(".lines").selectAll("polyline")
							.data(pie(data), key);
		
		polyline.enter()
				.append("polyline");

		polyline.transition().duration(1000)
				.attrTween("points", function(d){
					this._current = this._current || d;
					var interpolate = d3.interpolate(this._current, d);
					this._current = interpolate(0);
					return function(t) {
						var d2 = interpolate(t);
						var pos = outerArc.centroid(d2);
						pos[0] = radius * 0.95 * (midAngle(d2) < Math.PI ? 1 : -1);
						return [arc.centroid(d2), outerArc.centroid(d2), pos];
					};			
				});
		polyline.exit()
				.remove();
	};
}
