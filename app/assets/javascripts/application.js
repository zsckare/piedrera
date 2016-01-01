// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

 function getDate() {
	var f = new Date();
	fecha= f.getFullYear() + "-"+(f.getMonth() +1)+ "-"+f.getDate() ;
	ver = $("#liquidation_fecha").val();
	console.log(fecha)

		$("#liquidation_fecha").val(fecha);	

 }

var puerto =window.location.port;
var url="http://" + window.location.hostname+":"+puerto;
 function getDrivers () {
 	$("#buscar").empty();
 	var txt = "";
 	txt = '<select name="q" id="">';
 	uri = "";
	
//    $("#buscar").html(txt);
	uri = url+"/drivers.json";
	console.log("url="+uri);
	$.getJSON(uri,function(datos){
		console.log("Ejecutando getJson");
		$.each(datos, function(i, item){	
			txt+='<option value="'+item.id+'">'+item.nombre+" "+item.paterno+" "+item.materno+'</option>';		
		});
	
		txt+='</select>';
		$("#buscar").html(txt);
	});
 }