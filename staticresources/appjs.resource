
$(document).ready(function(){
$(".left-panel-icon").click(function(){
    $(".left-panel").toggleClass("nav-toggle");
    $(this).toggleClass("nav-toggle-btn");
	if(isMobile()) {
		//alert('hello');
	}
	else
	{
		 if($(".left-panel-icon").hasClass("nav-toggle-btn") == false)
		{
			//alert('hi');
			setTimeout(function () {
			
			//$('#scrolldivbar').getNiceScroll().remove()
			//$('#scrolldivbar').nicescroll();
			$('#productsdivscroll').getNiceScroll().autohidemode=false;
			$('#productsdivscroll').getNiceScroll().resize();
			$('#productsdivscroll').getNiceScroll().resize().show();	
			}, 100);	
		}
	}
})

  // $('.dropdown-toggle').dropdown();  
	 // $('#asdf').on( 'click', '.dropdown-menu li a', function() { 
    // var target = $(this).html();

    // //Adds active class to selected item
    // $(this).parents('.dropdown-menu').find('li').removeClass('active');
    // $(this).parent('li').addClass('active');

    // //Displays selected text on dropdown-toggle button
    // $(this).parents('.dropdown').find('.dropdown-toggle').html(target + ' <span class="caret"></span>');
 // });
  
   // $('#scrolldivbar').niceScroll({
 // 'cursorcolor': '#096a8d',
 // 'cursorborder': '#096a8d',
 // 'cursorwidth': '3px' 
	// });

  $('.dropdown-toggle').dropdown();  
	 $('.dropdown').on( 'click', '.dropdown-menu li a', function() { 
    var target = $(this).html();

    //Adds active class to selected item
    $(this).parents('.dropdown-menu').find('li').removeClass('active');
    $(this).parent('li').addClass('active');

    //Displays selected text on dropdown-toggle button
	if($(this).parents('.dropdown')[0].id=='SelectedDropdown')
    $(this).parents('.dropdown').find('.dropdown-toggle').html(target + ' <span class="user-chevron"> <i class="fa fa-chevron-down"></i></span>');
 });
     
});

/*$(function () {
    $('.tree li:has(ul)').addClass('parent_li').find(' > span').attr('title', 'Collapse this branch');
    $('.tree li.parent_li > span.daredevel-tree-anchor').on('click', function (e) {
        var children = $(this).parent('li.parent_li').find(' > ul > li');
        if (children.is(":visible")) {
            children.hide('fast');
            $(this).attr('title', 'Expand this branch');
			$(this).removeClass('expanded');
        } else {
            children.show('fast');
            $(this).attr('title', 'Collapse this branch');
			$(this).addClass('expanded');			
        }
        e.stopPropagation();
    });
});*/
 function isMobile() {
  try{ document.createEvent("TouchEvent"); return true; }
  catch(e){ return false; }
}