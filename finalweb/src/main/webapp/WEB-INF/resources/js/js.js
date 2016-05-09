/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

jQuery(document).ready(function($) {

	$('#msg').html("JQuery Workk");
});





function initialize()
{
    
var myCenter=new google.maps.LatLng(51.236267,-0.570405);;
var mapProp = {
  center:myCenter,
  zoom:12,
  mapTypeId:google.maps.MapTypeId.ROADMAP
  };
var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);
var marker=new google.maps.Marker({
  position:myCenter,
  });
marker.setMap(map);
}
function Casino() {
    
    var myCasino=new google.maps.LatLng(51.237071,-0.577611);;
    
    var mapProp = {
    center:myCasino,
    zoom:15,
    mapTypeId:google.maps.MapTypeId.ROADMAP
  };
  var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);
  
  var marker=new google.maps.Marker({
  position:myCasino,
  });
  
  marker.setMap(map);
}
function bar13() {
    var myBar13=new google.maps.LatLng(51.236714,-0.578114);;
    var mapProp = {
    center:myBar13,
    zoom:15,
    mapTypeId:google.maps.MapTypeId.ROADMAP
  };
  var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);
  
  var marker=new google.maps.Marker({
  position:myBar13,
  });
  
marker.setMap(map);
}
function tickledivory() {
    var myTickledivory=new google.maps.LatLng(51.237666,-0.577302);;
    var mapProp = {
    center:myTickledivory,
    zoom:15,
    mapTypeId:google.maps.MapTypeId.ROADMAP
  };
  var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);
  
  var marker=new google.maps.Marker({
  position:myTickledivory,
  });
  
  marker.setMap(map);
}
function Button1_onclick() {
       Casino();
    }
    
    function Button2_onclick() {
       bar13();
    }
function Button3_onclick() {
       tickledivory();
    }
    
    function Button4_onclick() {
       alert("This is your ticket " + Math.random());
    }
    
    function randomIntFromInterval()
{
    //return Math.floor(Math.random()*(max-min+1)+min);
    alert("hello");
}

google.maps.event.addDomListener(window, 'load', initialize);

