window.addEventListener("load", function() {
	var banner = document.getElementsByClassName("banner")[0];
	var oFix = document.getElementsByClassName("fix")[0];
	var eNav = document.getElementsByClassName("e_nav")[0];
	var oA = document.querySelectorAll("a");

	banner && carousel(banner);
	imgAsynLoad("img[oper='asyn']");

	(function(){
		var head = document.querySelector(".header");
		var nav = head.querySelector(".nav");
		var content = document.querySelector(".content");
		var footer = document.querySelector(".footer");

		document.querySelector(".logo > div").addEventListener("touchend", function(){
			if (head.show){
				head.className = "header";
				head.show = false;
				nav.style.height = "0";
				footer.style.display = content.style.display = "block";
			} else {
				head.className = "header show";
				head.show = true;
				nav.style.height = window.screen.availHeight + "px";
				footer.style.display = content.style.display = "none";

			}
		})
	})();


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
					var sleep = Math.round(Math.abs(sTop - top) / 100);
					sleep = top > sTop ? sleep : -sleep;


					clearInterval(window.inter);
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
		var layout = eNav.querySelector(".layout");
		var oImgs = layout.querySelectorAll("a");
		var maxLeft = document.body.offsetWidth - layout.offsetWidth;

		for (var i = 0; i < oImgs.length; i++){
			(function(oImg){
				var parent = oImg.parentNode;
				if (parent.className == "active"){
					var XY = document.defaultView.getComputedStyle(oImg,null)["backgroundPosition"].split(" ");
					XY[0] = "-107px";
					oImg.style.backgroundPosition = XY.join(" ");
					
					if (maxLeft > 0) return;
					
					var zMoveX = -parent.offsetLeft;
					if (zMoveX < maxLeft){
						zMoveX = maxLeft;
					} else if (zMoveX > 0) {
						zMoveX = 0;
					}
					layout.style.marginLeft = zMoveX + "px";
				}
			})(oImgs[i].querySelector("span"))
		}

		if (maxLeft > 0) return;
		
		layout.addEventListener("touchstart", function(event){

			var startX = event.touches[0].pageX;
			var zMoveX = 0;
			var domX = layout.offsetLeft;

			document.body.addEventListener("touchmove", move, false);
			document.body.addEventListener("touchend", touchend, false);

			function move(event){
				zMoveX = domX +(event.touches[0].pageX - startX);
				layout.style.marginLeft = zMoveX + "px";
			}

			function touchend(){
				this.removeEventListener("touchmove", move, false);
				this.removeEventListener("touchend", touchend, false);
				if (zMoveX < maxLeft){
					layout.style.marginLeft = maxLeft + "px";
				} else if (zMoveX > 0) {
					layout.style.marginLeft = 0;
				}
			}
		}, false);
		
	}

}, false);



function carousel(dom) {

	var oDiv = document.createElement("div");
	var layout = document.createElement("div");
	var child = dom.children;
	var imgs = [];
	var spans = [];
	var width = document.body.offsetWidth;

	dom.style.cssText = "width: 100%; overflow: hidden; position: relative; z-index: 9";
	oDiv.style.cssText = "background-color: rgba(0,0,0,0.5); left: 0; bottom: 0; width: 100%; height: 25px;" +
		"position: absolute; padding: 6px 20px;z-index:9999; cursor: pointer";
	layout.style.cssText = "width: " + 10 +"00%;"

	
	for (var i = 0; i < child.length; i++) {
		var oSpan = document.createElement("span");

		oSpan.style.cssText = "width: 12px; height: 12px; border-radius: 50%; background-color: rgba(255, 255, 255, 0.7);" +
			"float: right; margin-left: 5px;"
		oSpan.index = child.length - i - 1;
		oSpan.addEventListener("touchend", function() {
			clearInterval(dom.interval);
			dom.increasing(this.index);
			dom.effectShow();
			dom.initialCarousel();
		});

		imgs.push(child[i]);
		oDiv.appendChild(oSpan);
		spans.push(oSpan);
	}

	for (var i = 0; i < imgs.length; i++){
		layout.appendChild(imgs[i]);
		imgs[i].addEventListener("touchstart", function(event){
			var link = this.getAttribute("link");
			var startX = this.offsetLeft;

			this.addEventListener("touchend", function(event){
				if(Math.abs(this.offsetLeft - startX) < 5){
					location.href = link;
				}
			}, false)
		}, false);
		imgs[i].style.cssText = "width:"+width+"px; float: left;";
	}


	spans.reverse();
	dom.appendChild(layout);
	dom.appendChild(oDiv);
	dom.cursor = dom.index = 0;
	dom.jx = true;

	oDiv.addEventListener("touchstart", function(ev){
		ev.cancelBubble = true;
	}, false);
	
	dom.initialCarousel = function() {
		clearInterval(dom.interval);
		dom.interval = setInterval(function() {
			dom.increasing();
			dom.effectShow();
		}, 8000)
	}

	dom.addEventListener("touchstart", function(event){
		if (!dom.jx) return;

		var touch = event.touches[0];
		var startX = touch.pageX;
		var domX = layout.offsetLeft;
		var zMoveX = 0;

		clearInterval(dom.interval);
		document.body.addEventListener("touchmove", move, false);
		document.body.addEventListener("touchend", touchend, false);

		function move(event){
			zMoveX = event.touches[0].pageX - startX;
			if (Math.abs(zMoveX) < 10) return;
			layout.style.marginLeft = domX + zMoveX + "px";
		}

		function touchend(){
			this.removeEventListener("touchmove", move, false);
			this.removeEventListener("touchend", touchend, false);
			var index = zMoveX / width;
			index = index > 0.3 ? -1 : index < -0.3 ? 1 : 0;
			dom.increasing(null, index);
			dom.effectShow();
		}
	}, false);

	dom.increasing = function(index, moveIndex) {
		if (!dom.jx) return;
		dom.cursor = dom.index;

		if (index || index == 0) {
			dom.index = index;
		} else if(typeof moveIndex != "undefined"){
			dom.index = dom.index + moveIndex;
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
		
		startMove(layout, {"margin-left": -width*dom.index}, callback);

		function callback(oper) {
			dom.cursor = dom.index;
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
		var sTop = (window.scrollY || document.documentElement.scrollTop) + window.screen.availHeight*2;

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