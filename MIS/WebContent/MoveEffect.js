/**
 * 
 */
var id=function(el){return document.getElementByld(el);},
c=id('photo-list');
if(c){
	var ul=id('scroll'),
	lis=ul.getElementsByTagName('li'),
},
itemCount=lis.length,
width-lis[0].offsetWidth,
marquee=function(){
	c.scrollLeft+=2;
	if(c.scrollLeft%width<=1{
		ul.appendChild(ul.getElementsByTagName('li')[0]);
		c.scrollLeft=0;
	};
},
speed=50;
ul.style.width=width*itemCount+'px';
var timer=setlnterval(marquee,speed);
c.conmousever=function(){
	clearlnterval(timer);
};
c.conmouseout=funtion(){
	timer=setlnterval(marquee,speed);
};