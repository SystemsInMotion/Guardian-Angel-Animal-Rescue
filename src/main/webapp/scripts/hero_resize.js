var HeroResize=AC.Class({initialize:function(a){this._height=null;this._hero=$(a);
AC.Object.synthesize(this);this.__boundResizeHero=this.resizeHero.bindAsEventListener(this);
if(typeof window.ontouchstart==="undefined"){if(AC.Detector.isCSSAvailable("background-size")&&!(AC.Detector.isFirefox())){this.resizeHero();
Element.addClassName(document.body,"responsive");Event.observe(window,"resize",this.__boundResizeHero)
}else{Element.addClassName(document.body,"fallback")}}else{Element.addClassName(document.body,"device")
}},resizeHero:function(){var a=this;this.setHeight(window.innerHeight||(window.document.documentElement.clientHeight||window.document.body.clientHeight));
this.hero().setStyle({height:this.height()-92+"px"})}});Event.onDOMReady(function(){var a=new HeroResize("hero-wrapper")
});