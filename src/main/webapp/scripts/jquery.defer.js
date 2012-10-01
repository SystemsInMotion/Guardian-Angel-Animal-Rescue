(function($){var t={};$.defer=function(id,fn,delay){if($.isFunction(id)){delay=fn;fn=id;id=fn+'';}
function abortDefer(){clearTimeout(t[id]);delete t[id];}
t[id]&&clearTimeout(t[id]);t[id]=setTimeout(fn,delay);return abortDefer;};})(jimdoGen002);