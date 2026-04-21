function emailDisplay(){
	document.write(arguments[0]+"@");
	for(var i=1;i<arguments.length-1;i++){
		document.write(arguments[i]+".");
	}
	document.write(arguments[arguments.length-1]);
}

function Gol_D_Roger(){
	document.write("<p>");
	if(arguments[0]=="-1"){
	
	}
	else {
		document.write("若有使用張智星教授的 \
			「<a href=\"http://books.gotop.com.tw/v_AEL011900\">JavaScript程式設計與應用</a>」一書，\
			本篇對應的書中章節是 ");
		document.write(arguments[0]);
		for(var i=1;i<arguments.length-1;i++){
			document.write("、"+arguments[i]);
		}
		if(arguments.length>1){
			document.write("，以及" + arguments[arguments.length-1]);
		}
	}
	document.write("。</p>");
}