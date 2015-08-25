$(function(){
	// hide menu on smaller screeen sizes
	$(window).on('resize', function(){

		if (window.matchMedia("(min-width: 700px)").matches){
			$('.menu-item').on('mouseenter', function(){
				$(this).children('.sub-menu').css("display", "block");
			});
			$('.menu-item').on('mouseleave', function(){
				$(this).children('.sub-menu').css('display', 'none');
			});
		
		}else{
			$('.menu-item').off('mouseenter').off('mouseleave');
		}
	});	
	$(window).resize();

	$('.wpcf7-text, .wpcf7-textarea').on('change', function(){
		var value = $(this).val().length;
		if(value > 0){
			$(this).css('background-color', 'white');
		}
	});

	$('#wpcf7-f46-o1').children('form').on('submit', function(){

	});

	$('#twitter').on('click', function(){
		hj('tagRecording', ['Twitter Click']);
	});

	$('#facebook').on('click', function(){
		hj('tagRecording', ['Facebook Click']);
	});

	$('#linkedin').on('click', function(){
		hj('tagRecording', ['LinkedIn Click']);
	});

	$('#behance').on('click', function(){
		hj('tagRecording', ['Behance Click']);
	});


	var page = 2;
	var loadmore = 'on';

// $('#load-more').on('click', function(){
// 	console.log('clicked');
	
// 	      $('#resources-blog-roll').append($('<div class="page" id="p' + page + '">').load('http://localhost:8888/sayYeah/sayYeahNewSite/wordpress/product-insight/page/' + page, function() {
// 	        page++;
// 	      }));
// });

	// $( document ).ajaxComplete(function( event, xhr, options ) {
	//   if (xhr.responseText.indexOf('class="page"') == -1) {
	//     loadmore = 'off';
	//   }
	// });

	
});