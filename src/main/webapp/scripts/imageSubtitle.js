(function($){$.modules.imageSubtitle=function(opts){var pinterestOption,data;if(opts.data){data=opts.data;}
pinterestOption=data.pinterest&&data.pinterest=='1';$.cookie('mobile')!=='1'&&$(opts.selector).tinyLightbox({item:'a[rel*="lightbox"]',pathAttr:'data-href',pinterest:pinterestOption});if($.cookie('mobile')!=='1'&&data&&data.pinterest&&data.pinterest=='1'){$('#cc-m-imagesubtitle-image-'+data.id).pinterest();}};})(jimdoGen002);