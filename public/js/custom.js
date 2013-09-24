$(window).load(function() {
  //------MENU-------------
  ddsmoothmenu.init({
  mainmenuid: "smoothmenu1", //menu DIV id
  orientation: 'h', //Horizontal or vertical menu: Set to "h" or "v"
  classname: 'ddsmoothmenu', //class added to menu's outer DIV
  //customtheme: ["#1c5a80", "#18374a"],
  contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
  });
  //------TWITTER-------------
  !function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");
  //------SELECTED MENU IPAD, IPHONE-------------
  $("<select />").appendTo("nav");      
  $("<option />", {
	"selected": "selected",
    "value"   : "",
    "text"    : "Go to..."
  }).appendTo("nav select");      
  $("nav a").each(function() {
	var el = $(this);
  $("<option />", {
	"value"   : el.attr("href"),
    "text"    : el.text()
  }).appendTo("nav select");
  });
  $("nav select").change(function() {
	window.location = $(this).find("option:selected").val();
  });
  //------TIPSY TOOLTIP-------------
  $('a.tip').tipsy({fade: true, gravity: 's'});
  //------IMAGE HOVER-------------
  $('.da-thumbs > li, .da-thumbs div.post, .da-thumbs div.post-bloc div.bloc-area').each( function() { $(this).hoverdir(); } );
  //------PRETTY PHOTO------------- 
  $("a[rel^='prettyPhoto']").prettyPhoto({animation_speed:'fast',slideshow:10000, hideflash: true});
  //------CAMERA SLIDER-------------
  jQuery('#camera_wrap_1').camera({
    thumbnails: false,
	height: '42%',
	navigationHover: false,
	pagination: false,
	loader: false
  });
  //------CAMERA SLIDER-------------
  jQuery('#camera_wrap_2').camera({
    thumbnails: false,
    height: '60%',
    navigationHover: false,
    pagination: false,
    loader: false
  });
  //------CAMERA SLIDER-------------
  jQuery('#camera_wrap_3').camera({
    thumbnails: true,
    height: '42%',
    navigationHover: false,
    pagination: false,
    loader: false
  }); 
  //------SEARCH BAR------------- 
  new UISearch( document.getElementById( 'sb-search' ) );
});