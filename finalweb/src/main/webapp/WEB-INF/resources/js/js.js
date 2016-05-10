/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


/*******
 * 
 * Javascript code for Google Map API
 */
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

/*****Function to display "Casino" location on Google Maps *****/
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

/*****Function to display "Bar 13" location on Google Maps *****/
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

/*****Function to display "Tickled Ivory" location on Google Maps *****/
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

/***** onclick function for the 3 buttons to show on map ***/
function Button1_onclick() {
       Casino();
    }
    
    function Button2_onclick() {
       bar13();
    }
function Button3_onclick() {
       tickledivory();
    }
    
/*****Generates a random number as a confirmation
 *    once a user has purchased a ticket for an event
 ******/
    function Button4_onclick() {
       alert("This is your ticket " + Math.random());
    }
    
$(function () {
                $('#view_Cart_form').submit(function () {
                    // show a hidden div to indicate progression
                    $('#hideSuccessfulPayment').show();
                    $('#hideConfirm').show();
                    $('#hideCheckout').hide();
                    // kick off AJAX
                    $.ajax({
                        url: this.action,
                        type: this.method,
                        data: $(this).serialize(),
                        success: function () {
                            // AJAX request finished, handle the results and hide progress
                            $('#hideSuccessfulPayment').hide();
                            $('#hideConfirm').hide();
                        }
                    });
                    return false;
                });
            });

google.maps.event.addDomListener(window, 'load', initialize);

