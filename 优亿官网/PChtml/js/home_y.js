window.addEventListener("load", function() {
	var banner = document.getElementsByClassName("banner")[0];
	var oFix = document.getElementsByClassName("fix")[0];
	var eNav = document.getElementsByClassName("e_nav")[0];
	var oLis = document.querySelectorAll(".nav li");
	var oA = document.querySelectorAll("a");

	banner && carousel(banner);
	imgAsynLoad("img[oper='asyn']");

	if (oLis.length){
		for (var i = 0; i < oLis.length; i++){
			(function(dom){
				var oDiv = dom.querySelector("div");
				if (!oDiv) return;

				dom.height = oDiv.offsetHeight;
				oDiv.style.height = "0";

				dom.addEventListener("mouseenter", function(){
					oDiv.style.height = this.height + "px";
					oDiv.style.opacity = "1";
				}, false)

				dom.addEventListener("mouseleave", function(){
					oDiv.style.height = "0";
					oDiv.style.opacity = "0";
				}, false)

				dom.addEventListener("click", function(){
					var dom = document.querySelector("#replace");
					dom.setAttribute("href", "#"+this.getAttribute("link"))
					var e = document.createEvent("MouseEvent");
					e.initEvent("click", false, false);
					dom.dispatchEvent(e);
				})
			})(oLis[i]);
		}
	}

	if (oFix){
		var top = oFix.offsetTop;
		(function(){
			window.onscroll = function(){
				if (this.scrollY > top) {
					oFix.className = "dir_info";
				} else { 
					oFix.className = "fix";
				}
			}
		})();
	}

	if (oA.length){
		for (var i = 0; i < oA.length; i++){
			(function(dom){
				var id = dom.getAttribute("href");
				if (!id || id.substring(0, 1) != "#") return;
				dom.addEventListener("click", function(ev){
					if (ev.preventDefault) {
	                    ev.preventDefault();
	                } else {
	                    ev.returnValue = false;
	                }
					var id = dom.getAttribute("href");
					var top = document.querySelector(id).offsetTop;
					var sTop = window.scrollY || document.documentElement.scrollTop;
					var sleep = top > sTop ? 50 : -50;


					clearInterval(window.inter)
					window.inter =  setInterval(function(){
						window.scrollTo(0, sTop);
						sTop = sTop + sleep;
						if ((sleep > 0 && sTop >= top) || (sleep < 0 && sTop <= top)){
							window.scrollTo(0, top);
							clearInterval(window.inter);
						}
					}, 1)
				}, false);
			})(oA[i]);
		}
	}
	
	if (eNav){
		var oImgs = eNav.querySelectorAll(".layout > a");
		var maxLen = 0;
		var href = location.href;
		var ret = false;
		var prevDOM = eNav.querySelector(".prev");
		
		if (prevDOM){

			eNav.querySelector(".prev").addEventListener("click", function(){
				sliceNav(-1);
			});

			eNav.querySelector(".next").addEventListener("click", function(){
				sliceNav(1);
			});

			eNav = eNav.querySelector(".layout");
			eNav.left = 0;
			eNav.count = -1;
			href = href.substring(href.lastIndexOf("/")+1);
			maxLen = Number(href.substring(href.indexOf("_")+1, href.indexOf(".")));
			if (maxLen <= 6){
				maxLen = 2	
			} else {
				maxLen = 2;
			}
		}

		function sliceNav(icount){
			var len = icount + eNav.count;
			if (len >= maxLen || len < -1) return;
			var width = oImgs[icount < 0 ? eNav.count : len].offsetWidth;
			eNav.left += icount < 0 ? -width : width;
			eNav.style.marginLeft = -eNav.left + "px"

			eNav.count = len;
		}


		for (var i = 0; i < oImgs.length; i++){
			(function(oImg){
				if (!oImg) return;
				console.log(oImg);
				var parent = oImg.parentNode;
				parent.addEventListener("mouseenter", function(){
					if (parent.className == "active") return;
					var XY = document.defaultView.getComputedStyle(oImg,null)["backgroundPosition"].split(" ");
					XY[0] = "-106px";
					oImg.style.backgroundPosition = XY.join(" ");
					parent.querySelector("p").style.color = "#3DB5FF";
				});
				parent.addEventListener("mouseleave", function(){
					if (parent.className == "active") return;
					var XY = document.defaultView.getComputedStyle(oImg,null)["backgroundPosition"].split(" ");
					XY[0] = "-18px";
					oImg.style.backgroundPosition = XY.join(" ");
					parent.querySelector("p").style.color = "#808080";
				})

				if (ret) return;
				if (parent.className == "active"){
					var XY = document.defaultView.getComputedStyle(oImg,null)["backgroundPosition"].split(" ");
					XY[0] = "-107px";
					oImg.style.backgroundPosition = XY.join(" ");
					return ret = true;
				}
				prevDOM && sliceNav(1);
			})(oImgs[i].querySelector("span"))
		}
		
	}

}, false);



function carousel(dom) {

	var oDiv = document.createElement("div");
	var child = dom.children;
	var imgs = [];
	var spans = [];

	dom.style.cssText = "width: 100%; overflow: hidden; position: relative; z-index: 9";
	oDiv.style.cssText = "background-color: rgba(0,0,0,0.5); left: 0; bottom: 0; width: 100%; height: 25px;" +
		"position: absolute; padding: 6px 20px;z-index:9999; cursor: pointer";

	for (var i = 0; i < child.length; i++) {
		var oSpan = document.createElement("span");

		oSpan.style.cssText = "width: 12px; height: 12px; border-radius: 50%; background-color: rgba(255, 255, 255, 0.7);" +
			"float: right; margin-left: 5px;"
		oSpan.index = child.length - i - 1;
		oSpan.addEventListener("click", function() {
			clearInterval(dom.interval);
			dom.increasing(this.index);
			dom.effectShow();
			dom.initialCarousel();
		});

		imgs.push(child[i]);
		oDiv.appendChild(oSpan);
		spans.push(oSpan);

		child[i].addEventListener("click", function(){
			location.href = this.getAttribute("link");
		}, false);
	}

	spans.reverse();

	var lastSpan = document.createElement("span");
	var lowerSpan = document.createElement("span");

	lastSpan.className = "last";
	lowerSpan.className = "lower";
	lastSpan.addEventListener("click", function() {
		clearInterval(dom.interval);
		dom.increasing(dom.cursor - 1);
		dom.effectShow();
		dom.initialCarousel();
	});

	lowerSpan.addEventListener("click", function() {
		clearInterval(dom.interval);
		dom.increasing();
		dom.effectShow();
		dom.initialCarousel();
	})

	dom.appendChild(oDiv);
	dom.appendChild(lastSpan);
	dom.appendChild(lowerSpan);
	dom.cursor = dom.index = 0;
	dom.jx = true;
	dom.initialCarousel = function() {
		clearInterval(dom.interval);
		dom.interval = setInterval(function() {
			dom.increasing();
			dom.effectShow();
		}, 6000)
	}

	dom.increasing = function(index) {
		if (!dom.jx) return;


		dom.cursor = dom.index;
		if (index || index == 0) {
			dom.index = index;
		} else {
			dom.index++;
		}

		if (dom.index >= imgs.length) {
			dom.index = 0;
		} else if (dom.index < 0) {
			dom.index = imgs.length - 1;
		}
		dom.showIndex();
	}

	dom.showIndex = function() {
		spans[dom.cursor].style.backgroundColor = "rgba(255, 255, 255, 0.7)";
		spans[dom.index].style.backgroundColor = "#2d3c59";
	}

	dom.effectShow = function() {

		if (!dom.jx) return;

		dom.jx = false;

		var showIndex = Math.round(Math.random() * 4);
		var width = imgs[dom.index].offsetWidth;
		var height = imgs[dom.index].offsetHeight;
		var url = imgs[dom.index].getAttribute("src");
		var div = document.createElement("div");
		var cen = 0;
		dom.appendChild(div);

		if (showIndex == 0) {
			var childDivs = [];

			oper = 0;
			cen = 8;

			div.style.cssText = "position: absolute; width: 100%; height: 100%; left: 0; top: 0";

			for (var i = 0; i < cen; i++) {
				var ochildDiv = document.createElement("div");
				ochildDiv.style.cssText = "position: absolute; width:100%; height: " + height / cen + "px; top: " + (height / cen * i) + "px;" +
					"background: url(" + url + ") no-repeat 0 -" + (height / cen) * i + "px; background-size: 100% auto;left: " + (i % 2 ? "100%" : "-100%") + ";z-index:999";
				div.appendChild(ochildDiv);
				childDivs.push(ochildDiv);
			}
			dom.appendChild(div);

			for (var i = 0; i < childDivs.length; i++){
				startMove(childDivs[i], {left: 0}, function(){
					callback(++oper);
				})
			}
			// $(childDivs).animate({
			// 	left: 0
			// }, 600, "swing", function() {
			// 	callback(++oper);
			// });
		} else if (showIndex == 1) {
			var childDivs = [];

			oper = 0;
			cen = 18;

			div.style.cssText = "position: absolute; width: 100%; height: 100%; left: 0; top: 0";

			for (var i = 0; i < cen; i++) {
				var ochildDiv = document.createElement("div");
				ochildDiv.style.cssText = "position: absolute; height:100%; width: " + Math.round(width / cen) + "px; left: " + (width / cen * i) + "px;" +
					"background: url(" + url + ") no-repeat -" + (width / cen) * i + "px 0; background-size: auto 100%;top: " + (i % 2 ? "100%" : "-100%") + ";z-index:999";
				div.appendChild(ochildDiv);
				childDivs.push(ochildDiv);
			}
			dom.appendChild(div);

			for (var i = 0; i < childDivs.length; i++){
				startMove(childDivs[i], {top: 0}, function(){
					callback(++oper);
				})
			}

			// $(childDivs).animate({
			// 	top: 0
			// }, 500, "swing", function() {
			// 	callback(++oper);
			// });

		} else if (showIndex == 2) {

			var childDivs = [];
			var xcen = 6;
			var ycen = 4;
			oper = 0;
			cen = xcen * ycen;

			div.style.cssText = "position: absolute; width: 100%; height: 100%; left: 0; top: 0";


			for (var j = 0; j < ycen; j++) {
				for (var i = 0; i < xcen; i++) {
					var ochildDiv = document.createElement("div");
					ochildDiv.style.cssText = "position: absolute; height:0px; width: " + Math.round(width / xcen) + "px; left: " + (width / xcen * i) + "px;top: " + (height / ycen * j) + "px;opacity:0;" +
						"background: url(" + url + ") no-repeat -" + width / xcen * i + "px -" + (height / ycen) * j + "px; background-size: " + width + "px " + height + "px;z-index:999";
					div.appendChild(ochildDiv);
					childDivs.push(ochildDiv);
				}

			}

			dom.appendChild(div);
			var index = 0;
			var xiaArr = new Array();

			for (var i = 0; i < childDivs.length; i++) {
				xiaArr.push(i);
			}

			xiaArr.sort(function() {
				return Math.random() < Math.random();
			});

			(function animate() {
				if (index >= childDivs.length) return;
				
				startMove(childDivs[xiaArr[index]], {height: Math.round(height / ycen), opacity: 100}, function(){
					callback(++oper);
				})
				// $(childDivs[xiaArr[index]]).animate({
				// 	height: height / ycen,
				// 	opacity: 1
				// }, 100, "swing", function() {
				// 	callback(++oper);
				// });
				setTimeout(function() {
					animate(++index);
				}, 30)
			})()

		} else if (showIndex == 4) {

			var childDivs = [];

			oper = 0;
			cen = 18;

			div.style.cssText = "position: absolute; width: 100%; height: 100%; left: 0; top: 0";

			for (var i = 0; i < cen; i++) {
				var ochildDiv = document.createElement("div");
				ochildDiv.style.cssText = "position: absolute; height:100%; width: " + Math.round(width / cen) + "px; left: " + (width / cen * i) + "px;" +
					"background: url(" + url + ") no-repeat -" + (width / cen) * i + "px 0; background-size: auto 100%;top: -100%;z-index:999";
				div.appendChild(ochildDiv);
				childDivs.push(ochildDiv);
			}
			dom.appendChild(div);
			var index = 0;

			(function animate() {
				if (index >= childDivs.length) return;

				startMove(childDivs[index], {top: 0}, function(){
					callback(++oper);
				})

				// $(childDivs[index]).animate({
				// 	top: 0
				// }, 200, "swing", function() {
				// 	callback(++oper);
				// });
				setTimeout(function() {
					animate(++index);
				}, 50)
			})()

		} else if (showIndex == 3) {

			var childDivs = [];

			oper = 0;
			cen = 6;

			div.style.cssText = "position: absolute; width: 100%; height: 100%; left: 0; top: 0";

			for (var i = 0; i < cen; i++) {
				var ochildDiv = document.createElement("div");
				ochildDiv.style.cssText = "position: absolute; height:" + Math.round(height / cen) + "px; width: 100%; left: -100%;" +
					"background: url(" + url + ") no-repeat 0 -" + (height / cen) * i + "px; background-size: 100% auto;top: " + (height / cen * i) + "px;z-index:999";
				div.appendChild(ochildDiv);
				childDivs.push(ochildDiv);
			}
			dom.appendChild(div);
			var index = 0;

			(function animate() {
				if (index >= childDivs.length) return;

				startMove(childDivs[index], {left: 0}, function(){
					callback(++oper);
				})
				// $(childDivs[index]).animate({
				// 	left: 0
				// }, 300, "swing", function() {
				// 	callback(++oper);
				// });
				setTimeout(function() {
					animate(++index);
				}, 100)
			})()

		}

		function callback(oper) {
			if (oper != cen) return;
			imgs[dom.index].className = "active";
			imgs[dom.cursor].className = "";
			imgs[dom.cursor].removeAttribute("style");
			dom.cursor = dom.index;
			dom.removeChild(div);
			dom.jx = true;
		}
	}

	dom.showIndex();
	dom.initialCarousel();
}

function imgAsynLoad(term) {
	var oImgs = document.querySelectorAll(term);
	var loadDOM = [];
	var e = document.createEvent("MouseEvent");
	e.initEvent("asynload", false, false);

	for (var i = 0; i < oImgs.length; i++){
		oImgs[i].addEventListener("asynload", imgLoad, false);

		var top = (function calScrollTop(dom){
			if (document == dom) return 0;
			var top = calScrollTop(dom.offsetParent || dom.parentNode);
			return top + dom.offsetTop;
		})(oImgs[i]);
		loadDOM.push({
			top: top,
			dom: oImgs[i]
		});
	}

	loadDOM.sort(function(a, b){
		return a.top - b.top;
	})


	function imgLoad(){
		var src = this.getAttribute("asyn-src");
		var _this = this;
		var img = new Image();

		img.src = src;
		img.onload = function(){
			_this.setAttribute("src", src);
			_this.removeAttribute("oper");
			_this.removeAttribute("asyn-src");
			_this.removeEventListener("asynload", imgLoad, false);
		}
	};

	function triggerLoad(){
		var sTop = (window.scrollY || document.documentElement.scrollTop) + window.screen.availHeight;

		for (var i = 0; i < loadDOM.length; i++){
			if (loadDOM[i].top >= sTop) break;
			loadDOM[i].dom.dispatchEvent(e);
			loadDOM.splice(i--, 1);
		}

		if (loadDOM.length == 0) window.removeEventListener("scroll", triggerLoad, false);
	}

	window.addEventListener("scroll", triggerLoad, false);

	triggerLoad();

}



function getStyle(obj, name) {
	if (obj.currentStyle) {
		return obj.currentStyle[name];
	} else {
		return getComputedStyle(obj, false)[name];
	}
}




function startMove(obj, json, fnEnd)
{
	clearInterval(obj.timer);
	obj.timer = setInterval(function() {

		var bStop = true;


		for (var attr in json)
		{

			var cur = 0;

			if (attr == 'opacity') {
				cur = Math.round(parseFloat(getStyle(obj, attr)) * 100);
			} else {
				cur = parseInt(getStyle(obj, attr));
			}

			var speed = (json[attr] - cur) / 6;

			speed = speed > 0 ? Math.ceil(speed) : Math.floor(speed);

			if (cur != json[attr])
				bStop = false;

			if (attr == 'opacity') {
				obj.style.filter = 'alpha(opacity:' + (cur + speed) + ')';
				obj.style.opacity = (cur + speed) / 100;

			} else {
				obj.style[attr] = cur + speed + 'px';
			}


		}

		if (bStop)
		{
			clearInterval(obj.timer);
			if (fnEnd) fnEnd();
		}

	}, 30);
}