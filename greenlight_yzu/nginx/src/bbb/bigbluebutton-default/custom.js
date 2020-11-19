$(document).ready(function(){
	let scriptElement=document.createElement("script");
	$(scriptElement).attr("src", "/custom.main.js?timestamp="+Date.now());
	document.body.appendChild(scriptElement);
});

