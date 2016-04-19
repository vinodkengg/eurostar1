/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

jQuery(document).ready(function($) {

	$('#msg').html("This is updated by jQuery");


});

hover = function() {
    if (!document.body.currentStyle) return;
    var DIVcomments = document.getElementById('comments');
    var DIVcomment_wrap = document.getElementById('comment-wrap');
    DIVcomments.onmouseover = function() {
        DIVcomment_wrap.style.display = 'block';
    }
    DIVcomments.onmouseout = function() {
        DIVcomment_wrap.style.display = 'none';
    }
}
window.onload = hover;