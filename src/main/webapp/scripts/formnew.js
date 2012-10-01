(function($){$.modules.formnew=function(opts){if(opts.withinCms){return false;}
$(opts.selector).actionController({_formButtonClick:submitForm},{events:'submit click'});var specialFields;$(function(){specialFields=$.factory('SpecialFields',[opts]);specialFields.apply();});function submitForm(){var $button=$(this),data=[],captcha=null,error=false,$form=$button.parents('form'),$loading=$form.find('.cc-m-form-loading').show();$form.find('.cc-m-form-view-input').each(function(i,elem){var $input=$(elem).find(':input'),field=opts.structure[i];if($input.attr('name')==='captcha'){captcha=$.trim($input.val());}
if(!field){return true;}
switch(field.type){case'select':var options=[];$input.find('option').each(function(_,option){option.selected&&options.push($.trim(option.value));});data.push(options);break;case'radio':case'checkgroup':var selected=[];$input.each(function(_,option){var value=option.value!=="on"?option.value:$(option).next('span').text();option.checked&&selected.push(value);});data.push(selected);break;case'check':data.push($input[0].checked);break;default:data.push($.trim($input.val()));}});if(!error){var postData={moduleId:opts.moduleIdObfuscated,data:stringify(data),structure:stringify(opts.structure)};if(captcha!==null){postData.captcha=captcha;}
$.sync({url:'/app/module/form/submit/',type:'post',dataType:'json',data:postData,success:function(r){if(r.status==='success'){$form.add($loading).slideUp(500,function(){$form.html(r.payload.confirmationText).slideDown(200);});}else{$.each(r.errors,function(name,msg){$form.find('[name="'+name+'"]').eq(0).message(msg,{status:'error'});});refreshCaptcha();$loading.hide();}},error:function(){$button.message($.jimdoData.tr.form.badRequest,{status:'error'});refreshCaptcha();$loading.hide();}});}
return false;}
function refreshCaptcha(){$('.captcha .refresh',opts.selector).click();}};})(jimdoGen002);