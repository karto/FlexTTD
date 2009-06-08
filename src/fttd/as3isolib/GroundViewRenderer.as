package fttd.as3isolib {

import as3isolib.display.IIsoView;
import as3isolib.display.IsoSprite;
import as3isolib.display.IsoView;
import as3isolib.display.primitive.IsoBox;
import as3isolib.display.renderers.IViewRenderer;
import as3isolib.geom.Pt;

import flash.geom.Point;
import flash.text.TextField;
import flash.text.TextFieldAutoSize;
import flash.text.TextFormat;

import fttd.Config;

/**
 * The DefaultViewRenderer iterates through the target view's scene's child objects and determines if they reside within the visible area.
 */
public class GroundViewRenderer implements IViewRenderer
{		
	////////////////////////////////////////////////////
	//	SCENES
	////////////////////////////////////////////////////
	
	private var scenesArray:Array = [];
	
	/**
	 * @private
	 */
	public function get scenes ():Array
	{
		return scenesArray;
	}
	
	/**
	 * An array of target scenes to be rendered.  If this value's length is 0, then the target view's scenes are used.
	 */
	public function set scenes (value:Array):void
	{
		scenesArray = value;
	}
	
	////////////////////////////////////////////////////
	//	RENDER SCENE
	////////////////////////////////////////////////////
	protected var firstTimeOnly:Boolean = false;
	/**
	 * @inheritDoc
	 */
	public function renderView (view:IIsoView):void
	{
		return;
		/*
		if (0 == (view as IsoView).x && 0 == (view as IsoView).y && 
		    0 == (view as IsoView).width && 0 == (view as IsoView).height) return;
		if (firstTimeOnly) return;
		firstTimeOnly = true;
		
		var lp:Point = new Point(0,0);
		var p1:Pt = view.localToIso(lp);
		var p2:Pt = view.localToIso(new Point(view.width, view.height));
		
		var tp1:Pt = new Pt(p1.x / Config.TILE_SIZE, p1.y / Config.TILE_SIZE)
		var tp2:Pt = new Pt(p2.x / Config.TILE_SIZE, p2.y / Config.TILE_SIZE)
		
		//trace("lp: " + lp + " - p1: " + p1 + " - p2: " + p2);
		trace(" - ip1:"+tp1 +" - ip2:"+tp2);
		*/
		var topleft:Pt = view.localToIso(new Point(0, 0));
		topleft = new Pt(topleft.x / Config.TILE_SIZE, topleft.y / Config.TILE_SIZE);
		var topright:Pt = view.localToIso(new Point(view.width, 0));
		topright = new Pt(topright.x / Config.TILE_SIZE, topright.y / Config.TILE_SIZE);
		var bottomleft:Pt = view.localToIso(new Point(0, view.height));
		bottomleft = new Pt(bottomleft.x / Config.TILE_SIZE, bottomleft.y / Config.TILE_SIZE);
		var bottomright:Pt = view.localToIso(new Point(view.width, view.height));
		bottomright = new Pt(bottomright.x / Config.TILE_SIZE, bottomright.y / Config.TILE_SIZE);
		/*
		var df:TextField = debugField("topleft: " +topleft);
		df.x = (view as IsoView).x - 120;
		df.y = (view as IsoView).y - 150;
		(view as IsoView).addChild(df);
		
		df = debugField("topright: " +topright);
		df.x = (view as IsoView).x - 20 + (view as IsoView).width;
		df.y = (view as IsoView).y - 150;
		(view as IsoView).addChild(df);
		
		df = debugField("bottomleft: " +bottomleft);
		df.x = (view as IsoView).x - 120;
		df.y = (view as IsoView).y + 150 + (view as IsoView).height;
		(view as IsoView).addChild(df);
		
		df = debugField("bottomright: " +bottomright);
		df.x = (view as IsoView).x - 20 + (view as IsoView).width;
		df.y = (view as IsoView).y + 150 + (view as IsoView).height;
		(view as IsoView).addChild(df);
		*/
		var tsttls:Array = new Array();
		/*
		var xstart:int = Math.round(topleft.x) +1;
		var xend:int = Math.round(bottomright.x) -1;
		var xdiff:int = xend - xstart;
		
		var ystart:int = Math.round(topleft.y) +1;
		var yend:int = Math.round(bottomright.y) -1;
		var ydiff:int = yend - ystart;
		
		var xcorner:int = (xdiff - ydiff) / 2
		var ycorner:int = ydiff + xcorner
		*/
		var ymin:int;
		var ymax:int;
		var origin:String;
		
		for(var x:int = topleft.x; x <= bottomright.x; ++x) {
			
			ymin = ymax = 0;
			origin = "";
			
			// top - left
			if (x < topright.x && x < bottomleft.x) {
				ymin = topleft.y - (x - topleft.x) - 1;
				ymax = topleft.y + (x - topleft.x) + 1;
				origin = "TL";
				
			// top - bottom
			} else if (x < topright.x && x > bottomleft.x) {
				ymin = topleft.y - (x - topleft.x) - 1;
				ymax = bottomleft.y - (bottomleft.x - x);
				origin = "TB";
				
			// right - left
			} else if (x > topright.x && x < bottomleft.x) {
				ymin = topright.y - (topright.x - x);
				ymax = topleft.y + (x - topleft.x) + 1;
				origin = "RL";
				
			// right - bottom
			} else if (x > topright.x && x > bottomleft.x) {
				ymin = topright.y - (topright.x - x);
				ymax = bottomleft.y + (bottomleft.x - x) + 1;
				origin = "RB";
				
			}
			
			for(var y:int = ymin; y <= ymax; ++y) {
				if (x >= 0 && x < 16 && y >= 0 && y < 16) {
					tsttls.push({x: x, y: y, o: origin});
				}
			}
			
		}
		trace("tsttls: "+tsttls);
		
		var box:IsoBox;
		var sprite:IsoSprite;
		var ground:IsoGround = view.scenes[1] as IsoGround;
		for each (var tst:Object in tsttls) {
			var name:String = "t_"+tst.x+"x"+tst.y;
			if (ground.tileLookupList[name]) continue; 
	    
	    box = new IsoBox();
	    box.setSize(Config.TILE_SIZE-1, Config.TILE_SIZE-1, 0);
	    box.moveTo(tst.x * Config.TILE_SIZE, tst.y * Config.TILE_SIZE, 0);
   		
   		ground.tileLookupList[name] = box;
			ground.addChild(box);
			
			sprite = new IsoSprite();
   		sprite.moveTo(tst.x * Config.TILE_SIZE, tst.y * Config.TILE_SIZE, 15);
   		sprite.sprites = [debugField(tst.o+" "+tst.x +" x "+ tst.y)];
   		ground.addChild(sprite);
   		
		}
		
		
		/*
		for(var x:int = 0; x < xdiff; ++x) {
			
			// top - left
			if (x <= xcorner) {
				if (x <= ycorner) {
					ymax = 1 + (x * 2)
					for(var y:int = 0; y < ymax; ++y) {
						tsttls.push({x: xstart + x, y: ystart - x + y});
					}
					
				} else {
					ymax = 1 + (x * 2)
					for(var y:int = 0; y < ymax; ++y) {
						tsttls.push({x: xstart + x, y: ystart - x + y});
					}
					
				}
			} else {
				
			}
		}
		*/
		
		return;
		/*
		var p:Pt = view.localToIso(new Point(0,0));
		
		trace('p: '+p);
		
		return;
		var targetScenes:Array = (scenesArray && scenesArray.length >= 1) ? scenesArray : view.scenes;
		if (targetScenes.length < 1)
			return;
		
		var v:Sprite = Sprite(view);
		var rect:Rectangle = new Rectangle(0, 0, v.width, v.height);
		var bounds:Rectangle;
		
		var topLeftPt:Pt = IsoMath.screenToIso(new Pt( 0, 0 ));
		var topRightPt:Pt = IsoMath.screenToIso(new Pt( 0, v.width ));
		var bottomLeftPt:Pt = IsoMath.screenToIso(new Pt( v.height, 0 ));
		var bottomRightPt:Pt = IsoMath.screenToIso(new Pt( v.height, v.width ));
		var topRightPt2:Pt = view.localToIso(new Pt( 0, v.width ));
		
		
		var child:IIsoDisplayObject;
		var children:Array = [];
		
		//aggregate child objects
		var scene:IIsoScene;
		for each (scene in targetScenes)
			children = children.concat(scene.children);
		
		for each (child in children)
		{				
			bounds = child.getBounds(v);
			bounds.width *= view.currentZoom;
			bounds.height *= view.currentZoom;		
			
			child.includeInLayout = rect.intersects(bounds);
		}
		*/
	}
	
	
	protected function debugField (text:String):TextField {
		var debugField:TextField = new TextField();
		debugField.defaultTextFormat = new TextFormat(null, 11, 0x000000, false);
		debugField.autoSize = TextFieldAutoSize.CENTER;
		debugField.backgroundColor = 0xffffff;
		debugField.background = true;
		debugField.borderColor = 0x0;
		debugField.border = true;
		debugField.text = text;
		debugField.x = -20;
		debugField.y = 5;
		return debugField;
	}
	
	
}
}