package fttd.as3isolib
{       
        import as3isolib.core.ClassFactory;
        import as3isolib.core.IIsoDisplayObject;
        import as3isolib.display.IsoView;
        import as3isolib.display.primitive.IsoBox;
        import as3isolib.display.renderers.DefaultViewRenderer;
        import as3isolib.display.renderers.ViewBoundsRenderer;
        import as3isolib.display.scene.IsoGrid;
        import as3isolib.display.scene.IsoScene;
        import as3isolib.geom.IsoMath;
        import as3isolib.geom.Pt;
        
        import com.gskinner.motion.GTween;
        
        import eDpLib.events.ProxyEvent;
        
        import flash.display.Sprite;
        import flash.events.Event;
        import flash.events.MouseEvent;
        
        public class IsoApplication extends Sprite
        {
                private var box:IIsoDisplayObject;
                private var scene:IsoScene;
                
                public function IsoApplication ()
                {
                        scene = new IsoScene();
                        
                        var g:IsoGrid = new IsoGrid();
                        g.showOrigin = false;
                        //g.addEventListener(MouseEvent.CLICK, grid_mouseHandler);
                        scene.addChild(g);
                        
                        box = new IsoBox();
                        box.setSize(25, 25, 25);
                        scene.addChild(box);
                        
                        var view:IsoView = new IsoView();
                        view.clipContent = false;
                        view.y = 50;
                        view.setSize(150, 100);
                        view.addScene(scene);
                        
                        
												view.clipContent = false;
												view.viewRenderers = [new ClassFactory(DefaultViewRenderer), new ClassFactory(ViewBoundsRenderer)];
                        
                        addChild(view);
                        
                        scene.render();
                        
                        
                        
                        
                }
                
		
		

	private var gt:GTween;
	
	private function grid_mouseHandler (evt:ProxyEvent):void
	{
		var mEvt:MouseEvent = MouseEvent(evt.targetEvent);
		var pt:Pt = new Pt(mEvt.localX, mEvt.localY);
		IsoMath.screenToIso(pt);
		
		if (gt) gt.end();
		
		else {
			gt = new GTween();
			gt.addEventListener(Event.COMPLETE, gt_completeHandler);
		}
		
		gt.target = box;
		gt.duration = 0.5;
		gt.setProperties({x:pt.x, y:pt.y});
		gt.play();
		
		if ( ! hasEventListener(Event.ENTER_FRAME)) this.addEventListener(Event.ENTER_FRAME, enterFrameHandler);
	}
	
	private function gt_completeHandler (evt:Event):void {
		this.removeEventListener(Event.ENTER_FRAME, enterFrameHandler);
	}
	
	private function enterFrameHandler (evt:Event):void {
		scene.render();
	}
	
	
}
}