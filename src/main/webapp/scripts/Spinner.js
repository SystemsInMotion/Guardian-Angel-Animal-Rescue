jimdoGen002.reg('Spinner',function($,options){var self=this,slice=Array.prototype.slice,clearDefer,settings={containerClass:'cc-spinner',change:$.noop,value:'∞',minValue:0,maxValue:null,infinite:true,steps:1,mouseHold:false},s;var template='\
            <div class="cc-spinner ${addClass}">\
                <div class="cc-spinner-input-wrapper">\
                    <input data-action="spinnerInput" data-params="${params}" class="cc-spinner-input" name="${name}" value="${value}" type="text" autocomplete="off"  style="${inputStyle}" />\
                </div>\
                <div class="cc-spinner-control">\
                    <a data-action="spinnerArrow" data-params="${steps}" class="cc-spinner-plus" href="javascript:;" ><span>+</span></a>\
                    <a data-action="spinnerArrow" data-params="-${steps}" class="cc-spinner-minus" href="javascript:;" ><span>-</span></a>\
                </div>\
                <div data-action="spinnerInfinite" title="${infiniteTitle}" class="cc-spinner-infinite" style="display:${infiniteDisplay};"></div>\
            </div>\
        ';this.events='click change mousedown mouseup mouseout keydown keyup';this.settings=settings;this.init=function(){s=$.extend({},settings,options);if(s.mouseHold){self._spinnerArrowMousedown=function(e,dir){handleArrow.call(this,e,dir,500);};self._spinnerArrowMouseup=self._spinnerArrowMouseout=function(){callClearDefer();};}else{self._spinnerArrowClick=handleArrow;}};this._spinnerInputKeyup=function(){callClearDefer();};this._spinnerInputChange=function(e){var $input=$(this),value=parseInt($input.val());isNaN(value)&&(value=s.value);value<s.minValue&&(value=s.minValue);s.maxValue&&value>s.maxValue&&(value=s.maxValue);$input.val(value);s.change.apply(this,[e,value].concat(slice.call(arguments,1)));};this._spinnerInputKeydown=function(e){var dir;switch(e.keyCode){case 38:dir=s.steps;break;case 40:dir=-s.steps;break;default:return true;}
handleArrow.call(this,e,dir,500);};this._spinnerInfiniteClick=function(){$(this).closest('.'+s.containerClass).find('input').val(s.value).trigger('change');return false;};this.render=function(value,data){data=data||{};var model={addClass:data.addClass||'',params:data.params||'',name:data.name||'',value:!isNaN(parseFloat(value))?value:s.value,inputStyle:data.style||'',steps:s.steps,infiniteTitle:s.infiniteTitle||'',infiniteDisplay:s.infinite?'block':'none'};return template.replace(/\${\w+}/g,function(str){return model[str.substr(2,str.length-3)];});};this.set=function(opts){if(typeof opts==='object')s=$.extend(s,opts);};function callClearDefer(){if($.isFunction(clearDefer)){clearDefer();}}
function handleArrow(e,dir,repeat){var $arrow=$(this),$input=$arrow.closest('.'+s.containerClass).find('input'),value=parseInt($input.val());if(isNaN(value)&&dir>0){value=-dir;}
if(!isNaN(value)){value+=parseInt(dir);}
$input.val(value).trigger('change');if(repeat){clearDefer=$.defer(function(){handleArrow.call($arrow[0],e,dir,100);},repeat);}
return false;}});