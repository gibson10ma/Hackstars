// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
$(function(){
	$('.btn').click(function(event){
		event.preventDefault();
		var stateObj = { foo: "bar" };
		var hackstar_url = $(this).attr("href");
		$.get(hackstar_url,function(data){
			console.log(data)
			$('#name').html(data.name)
		})
		history.pushState(stateObj, "page 2", hackstar_url);
	});
})