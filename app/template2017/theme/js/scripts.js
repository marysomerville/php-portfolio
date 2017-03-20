
function stickyNavBar(originalPosition) {
	var currentScroll = $(window).scrollTop();
	var navBarHeight = $('#main_navigation').outerHeight();
	var fixmeTop = $('#main_navigation').offset().top - currentScroll;

	if (currentScroll >= fixmeTop) {
        $('#main_navigation').css({                      // scroll to that element or below it
            position: 'fixed',
            top: '0',
            left: '0'
        });
        $('#main_navigation').addClass('fixed');
        $('#outer_wrapper').css('padding-top',navBarHeight);
    }

    if(currentScroll <= originalPosition) {                                   // apply position: static
        $('#main_navigation').css({                      // if you scroll above it
            position: 'static'
        });
        $('#main_navigation').removeClass('fixed');
        $('#outer_wrapper').css('padding-top','0');
    }  
}

$(document).ready(function() {

	$('.load-first').animate({'opacity':'1'},1500);

	/*
	* Sticky header
	*/
	if ( $('#main_navigation').length) {
		var originalPosition = $('#main_navigation').offset().top;
		stickyNavBar(originalPosition);
		$(window).scroll(function() {
		   stickyNavBar(originalPosition); 
		});
		$(window).resize(function() {
		   stickyNavBar(originalPosition); 
		});
	}

	/*
	* menu links
	*/
	$('.scroll').click(function(event){
        event.preventDefault();
        $('html,body').animate({
        	scrollTop:$(this.hash).offset().top - 80
        }, 500);
    });

	/*
	* Fade in content
	*/
	$(window).scroll( function(){
    
        /* Check the location of each desired element */
        $('.fade').each( function(){
            
            var top_of_object = $(this).offset().top;
            var bottom_of_window = $(window).scrollTop() + $(window).height();
            
            /* If the object is completely visible in the window, fade it in */
            if( bottom_of_window > top_of_object ){
                
                $(this).animate({'opacity':'1'},800);
                    
            }
            
        }); 
    
    });

	/*
	* Home page projects
	*/
	if($('.masonry_items').length) {
		//Masonry for the social updates page
		var $container = $('.masonry_items');
		// initialize Masonry after all images have loaded
		$container.imagesLoaded( function() {
			$container.masonry({
				columnWidth: '.grid-sizer',
				gutter: '.gutter-sizer',
				itemSelector: '.item'
			});
		});
	}

});

$(window).bind('resize orientationchange', function() {
	if($('#main_navigation').length) {
		var originalPosition = $('#main_navigation').offset().top;
		stickyNavBar(originalPosition);
		$(window).scroll(function() {
		   stickyNavBar(originalPosition); 
		});
		$(window).resize(function() {
		   stickyNavBar(originalPosition); 
		});
	}
});
