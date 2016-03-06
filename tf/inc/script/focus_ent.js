
setInterval('autoiFocus()',4000); 
var atuokey = false; 
addLoadEvent(iFocusChange);
function get_id(id){
	return document.getElementById(id);
}
function addLoadEvent(func){
	var oldonload = window.onload;
	if (typeof window.onload != 'function') {
		window.onload = func;
	} else {
		window.onload = function(){
			oldonload();
			func();
		}
	}
}
function moveElement(elementID,final_x,final_y) {
	if (!document.getElementById) return false;
	if (!document.getElementById(elementID)) return false;
	var elem = document.getElementById(elementID);
	if (elem.movement){	clearTimeout(elem.movement);}
	if (!elem.style.left){elem.style.left = "0px";}
	if (!elem.style.top){elem.style.top = "0px";}
	var xpos = parseInt(elem.style.left);
	var ypos = parseInt(elem.style.top);
	if (xpos == final_x && ypos == final_y){return true;}
	if (xpos < final_x){
		var dist = Math.ceil((final_x - xpos)/10);
		xpos = xpos + dist;
	}
	if (xpos > final_x){
		var dist = Math.ceil((xpos - final_x)/10);
		xpos = xpos - dist;
	}
	if (ypos < final_y){
		var dist = Math.ceil((final_y - ypos)/10);
		ypos = ypos + dist;
	}
	if (ypos > final_y){
		var dist = Math.ceil((ypos - final_y)/10);
		ypos = ypos - dist;
	}
	elem.style.left = xpos + "px";
	elem.style.top = ypos + "px";
	var repeat = "moveElement('"+elementID+"',"+final_x+","+final_y+")";
	elem.movement = setTimeout(repeat,10); 
}
function classNormal(iFocusBtnID,iFocusTxID){
	var iFocusBtns= get_id(iFocusBtnID).getElementsByTagName('li');
	var iFocusTxs = get_id(iFocusTxID).getElementsByTagName('li');
	for(var i=0; i<iFocusBtns.length; i++) {
		iFocusBtns[i].className='normal';
		iFocusTxs[i].className='normal';
	}
}
function classCurrent(iFocusBtnID,iFocusTxID,n){
	var iFocusBtns= get_id(iFocusBtnID).getElementsByTagName('li');
	var iFocusTxs = get_id(iFocusTxID).getElementsByTagName('li');
	iFocusBtns[n].className='current';
	iFocusTxs[n].className='current';
}
function iFocusChange() {
	if(!get_id('ifocus')) return false;
	get_id('ifocus').onmouseover = function(){atuokey = true};
	get_id('ifocus').onmouseout = function(){atuokey = false};
	var iFocusBtns = get_id('ifocus_btn').getElementsByTagName('li');
	var listLength = iFocusBtns.length;
	iFocusBtns[0].onmouseover = function() {
		moveElement('ifocus_piclist',0,0);
		classNormal('ifocus_btn','ifocus_tx');
		classCurrent('ifocus_btn','ifocus_tx',0);
	}
	if (listLength>=2) {
		iFocusBtns[1].onmouseover = function() {
			moveElement('ifocus_piclist',0,-225);
			classNormal('ifocus_btn','ifocus_tx');
			classCurrent('ifocus_btn','ifocus_tx',1);
		}
	}
	if (listLength>=3) {
		iFocusBtns[2].onmouseover = function() {
			moveElement('ifocus_piclist',0,-450);
			classNormal('ifocus_btn','ifocus_tx');
			classCurrent('ifocus_btn','ifocus_tx',2);
		}
	}
	if (listLength>=4) {
		iFocusBtns[3].onmouseover = function() {
			moveElement('ifocus_piclist',0,-675);
			classNormal('ifocus_btn','ifocus_tx');
			classCurrent('ifocus_btn','ifocus_tx',3);
		}
	}
}
function autoiFocus() {
	if(!get_id('ifocus')) return false;
	if(atuokey) return false;
	var focusBtnList = get_id('ifocus_btn').getElementsByTagName('li');
	var listLength = focusBtnList.length;
	for(var i=0; i<listLength; i++) {
		if (focusBtnList[i].className == 'current') var currentNum = i;
	}
	if (currentNum==0&&listLength!=1 ){
		moveElement('ifocus_piclist',0,-225);
		classNormal('ifocus_btn','ifocus_tx');
		classCurrent('ifocus_btn','ifocus_tx',1);
	}
	if (currentNum==1&&listLength!=2 ){
		moveElement('ifocus_piclist',0,-450);
		classNormal('ifocus_btn','ifocus_tx');
		classCurrent('ifocus_btn','ifocus_tx',2);
	}
	if (currentNum==2&&listLength!=3 ){
		moveElement('ifocus_piclist',0,-675);
		classNormal('ifocus_btn','ifocus_tx');
		classCurrent('ifocus_btn','ifocus_tx',3);
	}
	if (currentNum==3 ){
		moveElement('ifocus_piclist',0,0);
		classNormal('ifocus_btn','ifocus_tx');
		classCurrent('ifocus_btn','ifocus_tx',0);
	}
	if (currentNum==1&&listLength==2 ){
		moveElement('ifocus_piclist',0,0);
		classNormal('ifocus_btn','ifocus_tx');
		classCurrent('ifocus_btn','ifocus_tx',0);
	}
	if (currentNum==2&&listLength==3 ){
		moveElement('ifocus_piclist',0,0);
		classNormal('ifocus_btn','ifocus_tx');
		classCurrent('ifocus_btn','ifocus_tx',0);
	}
}