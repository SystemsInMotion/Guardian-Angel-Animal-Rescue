jimdoGen002.reg('SpecialFields',function($,opts){var self=this,calendars=[],spinners=[];this.init=function(){$.xLazyLoader({js:[$.jimdoData.minUrl+'js/libs/jquery/ui/ui.datepicker-'+$.jimdoData.cmsLanguage.split('_')[0]+'.js']});};this.apply=function(){$('.cc-m-form-view-sortable .cc-m-form-view-input',opts.selector).each(function(key,elem){switch(opts.structure[key].type){case'number':self.createSpinner($(elem),key);break;case'calendar':self.toggleCalendar($(elem).find('input'),key,true);break;}});};this.createSpinner=function($container,pos,o){o=o||{};var params=self.getExtraParams(pos),width=((params.maximum+'').length*10)+6;spinners[pos]=$.factory('Spinner',[{value:params.minimum>=0?params.minimum:0,minValue:o.minValue||params.minimum,maxValue:o.maxValue||params.maximum,infinite:false,mouseHold:true}]);$container.data('actionController')&&$container.data('actionController').destroy();$container.actionController(spinners[pos],{events:spinners[pos].events}).html(spinners[pos].render(null,{name:params.name,style:'width: '+width+'px;'}));};this.toggleCalendar=function($input,pos,create){if(create){calendars[pos]=$input.datepicker({buttonImage:$.jimdoData.cdnUrl+'s/img/cms/icons/cal.gif',buttonImageOnly:true,buttonText:null,showAnim:'slideDown',showOn:'button'});}else{calendars[pos]&&calendars[pos].datepicker('destroy');}};this.getExtraParams=function(pos){var i=opts.structure[pos],extraParams={name:opts.moduleIdObfuscated+pos};$.each(opts.extraParams[i.type],function(name,param){extraParams[name]=i.params[name]?i.params[name]:param.deflt;});return extraParams;};});