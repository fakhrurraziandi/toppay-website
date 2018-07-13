


$(document).ready(function(){


	$('body').scrollspy({ target: '#main-navbar' });
	
	$('.navbar-nav').find('li').addClass('nav-item').find('a').addClass('nav-link').addClass('nav-scroll');

	

	var scroll = new SmoothScroll('a.nav-scroll[href*="#"]');


	window.sr = ScrollReveal({ 
		reset: true,
		distance: '20px',
		duration: 1000,
		delay: 200,
	});

	sr.reveal('.about-section .toppay-tabs');
	sr.reveal('.function-section .toppay-tabs');
	sr.reveal('.service-section .toppay-tabs');
	sr.reveal('.advantages-section .toppay-tabs');
	sr.reveal('.testimonial-section .toppay-tabs');

	$('.inner-carousel').owlCarousel({
  		loop:true,
	    margin:0,
	    nav:true,
	    // autoplay:true,
	    // autoplayTimeout:2000,
	    // autoplayHoverPause:true,
	    navText: [
	    	'<span class="fa-stack fa-lg"><i class="text-primary fa fa-circle-o fa-stack-2x"></i><i class="fa text-primary fa-caret-left fa-stack-1x"></i></span>', 
	    	'<span class="fa-stack fa-lg"><i class="text-primary fa fa-circle-o fa-stack-2x"></i><i class="fa text-primary fa-caret-right fa-stack-1x"></i></span>'
    	],
	    responsive:{
	        0:{
	            items:1
	        },
	        600:{
	            items:1
	        },
	        1000:{
	            items:1
	        }
	    }
	});


	$('.about-section').find('.toppay-card__carousel').owlCarousel({
  		loop:true,
	    margin:0,
	    nav:true,
	    // autoplay:true,
	    // autoplayTimeout:2000,
	    // autoplayHoverPause:true,
	    navText: [
	    	'<span class="fa-stack fa-lg"><i class="text-primary fa fa-circle-o fa-stack-2x"></i><i class="fa text-primary fa-caret-left fa-stack-1x"></i></span>', 
	    	'<span class="fa-stack fa-lg"><i class="text-primary fa fa-circle-o fa-stack-2x"></i><i class="fa text-primary fa-caret-right fa-stack-1x"></i></span>'
    	],
	    responsive:{
	        0:{
	            items:1
	        },
	        600:{
	            items:1
	        },
	        1000:{
	            items:1
	        }
	    },
	    onInitialized: function(){
	    	var section = $('.about-section');
	    	var lis = section.find('.toppay-card__nav li');
	    	var dots = section.find('.owl-dots .owl-dot');

	    	lis.each(function(key, li){
				$(li).on('click', function(e){
					e.preventDefault();
					section.find('.toppay-card__carousel').trigger('to.owl.carousel', key);
				});
			});
	    }
  	});


  	$('.function-section').find('.toppay-card__carousel').owlCarousel({
  		loop:true,
	    margin:0,
	    nav:true,
	    // autoplay:true,
	    // autoplayTimeout:2000,
	    // autoplayHoverPause:true,
	    navText: [
	    	'<span class="fa-stack fa-lg"><i class="text-primary fa fa-circle-o fa-stack-2x"></i><i class="fa text-primary fa-caret-left fa-stack-1x"></i></span>', 
	    	'<span class="fa-stack fa-lg"><i class="text-primary fa fa-circle-o fa-stack-2x"></i><i class="fa text-primary fa-caret-right fa-stack-1x"></i></span>'
    	],
	    responsive:{
	        0:{
	            items:1
	        },
	        600:{
	            items:1
	        },
	        1000:{
	            items:1
	        }
	    },
	    onInitialized: function(){
	    	var section = $('.function-section');
	    	var lis = section.find('.toppay-card__nav li');
	    	var dots = section.find('.owl-dots .owl-dot');

	    	lis.each(function(key, li){
				$(li).on('click', function(e){
					e.preventDefault();
					section.find('.toppay-card__carousel').trigger('to.owl.carousel', key);
				});
			});
	    }
  	});


  	$('.service-section').find('.toppay-card__carousel').owlCarousel({
  		loop:true,
	    margin:10,
	    touchDrag: false,
	    mouseDrag: false,
	    // nav:true,
	    // autoplay:true,
	    // autoplayTimeout:2000,
	    // autoplayHoverPause:true,
	    navText: [
	    	'<span class="fa-stack fa-lg"><i class="text-primary fa fa-circle-o fa-stack-2x"></i><i class="fa text-primary fa-caret-left fa-stack-1x"></i></span>', 
	    	'<span class="fa-stack fa-lg"><i class="text-primary fa fa-circle-o fa-stack-2x"></i><i class="fa text-primary fa-caret-right fa-stack-1x"></i></span>'
    	],
	    responsive:{
	        0:{
	            items:1
	        },
	        600:{
	            items:1
	        },
	        1000:{
	            items:1
	        }
	    },
	    onInitialized: function(){
	    	var section = $('.service-section');
	    	var lis = section.find('.toppay-card__nav li');
	    	var dots = section.find('.owl-dots .owl-dot');

	    	lis.each(function(key, li){
				$(li).on('click', function(e){
					e.preventDefault();
					section.find('.toppay-card__carousel').trigger('to.owl.carousel', key);
				});
			});
	    }
  	});

  	$('.advantages-section').find('.toppay-card__carousel').owlCarousel({
  		loop:true,
	    margin:10,
	    nav:true,
	    // autoplay:true,
	    // autoplayTimeout:2000,
	    // autoplayHoverPause:true,
	    navText: [
	    	'<span class="fa-stack fa-lg"><i class="text-primary fa fa-circle-o fa-stack-2x"></i><i class="fa text-primary fa-caret-left fa-stack-1x"></i></span>', 
	    	'<span class="fa-stack fa-lg"><i class="text-primary fa fa-circle-o fa-stack-2x"></i><i class="fa text-primary fa-caret-right fa-stack-1x"></i></span>'
    	],
	    responsive:{
	        0:{
	            items:1
	        },
	        600:{
	            items:1
	        },
	        1000:{
	            items:1
	        }
	    },
	    onInitialized: function(){
	    	var section = $('.advantages-section');
	    	var lis = section.find('.toppay-card__nav li');
	    	var dots = section.find('.owl-dots .owl-dot');

	    	lis.each(function(key, li){
				$(li).on('click', function(e){
					e.preventDefault();
					section.find('.toppay-card__carousel').trigger('to.owl.carousel', key);
				});
			});
	    }
  	});

  	$('.toppay-card__carousel').find('.toppay-card__carousel__inner').owlCarousel({
  		loop:true,
	    margin:10,
	    nav:true,
	    // autoplay:true,
	    // autoplayTimeout:2000,
	    // autoplayHoverPause:true,
	    navText: [
	    	'<span class="fa-stack fa-lg"><i class="text-primary fa fa-circle-o fa-stack-2x"></i><i class="fa text-primary fa-caret-left fa-stack-1x"></i></span>', 
	    	'<span class="fa-stack fa-lg"><i class="text-primary fa fa-circle-o fa-stack-2x"></i><i class="fa text-primary fa-caret-right fa-stack-1x"></i></span>'
    	],
	    responsive:{
	        0:{
	            items:1
	        },
	        600:{
	            items:1
	        },
	        1000:{
	            items:1
	        }
	    },
	});

	$('.toppay-tabs').find('img').removeAttr('width').removeAttr('height').css({
		width: '100%',
		height: 'auto'
	});


  	
	
	
	$(window).scroll(function(){

		

		var windowScroll = $(this).scrollTop();
		var sectionScroll = $('.about-section').scrollTop();
		console.log(windowScroll, sectionScroll);
		
		// console.log(wScroll);

		// $('.header-section__floating-img').css({
		// 	'transform': 'translate(0px, -'+ wScroll / 50 +'%)'
		// });
		
	});
});




