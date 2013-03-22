
/***************************************************
			Pretty Photo
***************************************************/

jQuery.noConflict()(function($){
	$(document).ready(function() {  
		$("a[rel^='prettyPhoto']").prettyPhoto({opacity:0.80,default_width:200,default_height:344,theme:'facebook',hideflash:false,modal:false});
	});
});


/***************************************************
			Responsive Menu
***************************************************/
jQuery.noConflict()(function($){
	   
      // Create the dropdown base
      $("<select />").appendTo("nav");
      
      // Create default option "Go to..."
      $("<option />", {
         "selected": "selected",
         "value"   : "",
         "text"    : "Please choose page"
      }).appendTo("nav select");
      
      // Populate dropdown with menu items
      $("nav a").each(function() {
       var el = $(this);
       $("<option />", {
           "value"   : el.attr("href"),
           "text"    : el.text()
       }).appendTo("nav select");
      });
      
	   // To make dropdown actually work
	   // To make more unobtrusive: http://css-tricks.com/4064-unobtrusive-page-changer/
      $("nav select").change(function() {
        window.location = $(this).find("option:selected").val();
      });
	 
});


    // carousel demo

!function ($) {

    $('#myCarousel').carousel()
    
}(window.jQuery)
