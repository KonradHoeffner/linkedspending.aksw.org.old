/*
 ### 
*/

/*# AVOID COLLISIONS #*/
;if(window.jQuery) (function($){
/*# AVOID COLLISIONS #*/

	// plugin initialization
	$.fn.togglebutton = function(options){
                
		// Initialize options for this call
		var options = $.extend(
			{}/* new object */,
			$.fn.togglebutton.options/* default options */,
			options || {} /* just-in-time options */
		);


                function enable(button, withCallback){
                    var realChange = false;
                    if(button.attr("selected") != "true"){
                        realChange = true;
                    }
                    button.attr("selected", "true");
                    button.css("background-color", "green");
                    var slider = button.find("> .slider").eq(0);
                    slider.animate({left:0}, parseInt(100,10));
                    if(realChange && withCallback && options.onEnable && typeof options.onEnable == "function"){
                        options.onEnable(button);
                    }
                }

                function disable(button, withCallback){
                    var realChange = false;
                    if(button.attr("selected") != "false"){
                        realChange = true;
                    }
                    button.attr("selected", "false");
                    button.css("background-color", "red");
                    var slider = button.find("> .slider").eq(0);
                    slider.animate({left:45 - slider.width()}, parseInt(100,10));
                    if(realChange && withCallback && options.onDisable && typeof options.onDisable == "function"){
                        options.onDisable(button);
                    }
                }


		// loop through each matched element
		this
		 .not('.togglebutton')
			.addClass('togglebutton');
		this.each(function(){
                    var container = $(this);
                    
                    var slider = $("<div></div>").addClass("slider");
                    container.append(slider);
                    slider.draggable({
                        axis:"x",
                        containment:"parent",
                        snapMode:"inner",
                        snapTolerance:10,
                        scroll: false
                    });
                    
                    
                    var ref = slider.position().left;
                    
                    if(options.enabled || (container.attr("selected") && container.attr("selected") == "true")){
                        enable(container, false);
                    } else {
                        disable(container, false);
                    }
                    
                    container.droppable({
                        accept: ".slider",
                        drop: function(){
                            var l = slider.position().left  - ref;

                            var r = container.width() - l - slider.width();
                            if(l < r){
                                enable(container, true);
                            } else {
                                disable(container, true);
                            }
                        }
                    });
                    
                    container.click(function(){
                        if((ref - slider.position().left) != 0){
                            enable(container, true);
                        } else  {
                            disable(container, true);
                        }
                    });
                    
                }); // each element
                

		return this; // don't break the chain...
	};

	/*--------------------------------------------------------*/

	/*
		### Core functionality and API ###
	*/
	$.extend($.fn.togglebutton, {
                selected: function(){
                    return $(this).attr("selected") == "true";
                }
 });

	/*--------------------------------------------------------*/

	/*
		### Default Settings ###
		eg.: You can override default control like this:
		$.fn.rating.options.cancel = 'Clear';
	*/
	$.fn.togglebutton.options = {  };

	/*--------------------------------------------------------*/

	/*
		### Default implementation ###
		The plugin will attach itself to divs with class togglebutton when the page loads
	*/
	$(function(){
	   
	});



/*# AVOID COLLISIONS #*/
})(jQuery);
/*# AVOID COLLISIONS #*/


