package fttd.as3isolib {
import as3isolib.display.IsoView;
import as3isolib.display.scene.IsoScene;
import as3isolib.events.IsoEvent;
import as3isolib.geom.Pt;

import flash.display.Bitmap;
import flash.geom.Point;
import flash.text.TextField;
import flash.text.TextFieldAutoSize;
import flash.text.TextFormat;
import flash.utils.Dictionary;

import fttd.Config;
import fttd.Game;
import fttd.bitmap.Manager;
import fttd.tile.Grass;
import fttd.tile.Tile;

//use namespace as3isolib_internal;

/**
 * IsoGrid provides a display grid in the X-Y plane.
 */
public class IsoGround extends IsoScene {
	
	public static const TILE_WIDTH:int = 256;
	public static const TILE_LENGTH:int = 128;
	public static const TILE_HEIGHT:int = 32;
	
	public var zoom:int = 2;
	
	public var game:Game;
	
	/** this is the maximum size of tileCache (visible tiles will also be kept in the cache) */		
	public var maxTilesToKeep:int = 0;

	////////////////////////////////////////////////////
	//	GRID SIZE
	////////////////////////////////////////////////////
	private var gSize:Pt = new Pt(0, 0);
	
	/**
	 * Returns an array containing the width and length of the grid.
	 */
	public function get gridSize ():Pt {
		return gSize;
	}
	
	/**
	 * Sets the number of grid cells in each direction respectively.
	 * 
	 * @param width The number of cells along the x-axis.
	 * @param length The number of cells along the y-axis.
	 * @param height The number of cells along the z-axis (currently not implemented).
	 */
	public function setGridSize (width:uint, length:uint):void {
		if (gSize.x != width || gSize.y != length) {
			gSize = new Pt(width, length);
			//invalidateSize();
		}
	}
	
	////////////////////////////////////////////////////
	//	CELL SIZE
	////////////////////////////////////////////////////
	private var cSize:Number = Config.TILE_SIZE;
	
	/**
	 * @private
	 */
	public function get cellSize ():Number {
		return cSize;
	}
	
	/**
	 * Represents the size of each grid cell.  This value sets both the width, length and height (where applicable) to the same size.
	 */
	public function set cellSize (value:Number):void {
		if (value < 2)
			throw new Error("cellSize must be a positive value greater than 2");
			
		if (cSize != value) {
			cSize = value;
			//invalidateSize();
		}
	}
	
	
	////////////////////////////////////////////////////
	//	VISIBLE SPRITES
	////////////////////////////////////////////////////
	public var visibleSprites:Object = new Object();
	
	
	
	public var _view:IsoView;
	public function get view():IsoView {
		return _view
	}
	public function set view(value:IsoView):void {
		_view = value;
		_view.addEventListener(IsoEvent.RENDER, onViewRender);
		
	}
	
	public var tileLookupList:Dictionary = new Dictionary();
	
	public var tileSprites:Object = new Object();
	public var visibleTileSprites:Array = new Array();
	
	// keys we've recently seen
	protected var recentlySeen:Array = new Array();
	
	
	//	CREATE
	////////////////////////////////////////////////////////////////////////
	
	/**
	 * Initialization method to create the child IContainer objects.
	 * /
	override protected function createChildren ():void {
		super.createChildren();
	}*/
	
	
	////////////////////////////////////////////////////
	//	CONSTRUCTOR
	////////////////////////////////////////////////////
	/**
	 * Constructor
	 */
	public function IsoGround () {
		super();
	}
	
	/**
	 * @inheritDoc
	 * /
	override protected function renderLogic (recursive:Boolean = true):void {
		// Add tiles 
		super.renderLogic(recursive);
	}*/
	
	
	protected function onViewRender (event:IsoEvent):void {
		if ( ! view.isInvalidated ) return;
		
		visibleTileSprites = new Array();
		
		forEachVisibleGridCell ( onEachVisibleGridCell );
		
		var name:String
		
		// move visible tiles to the end of recentlySeen if we're done loading them
		// the 'least recently seen' tiles will be removed from the tileCache below
		for each (name in visibleTileSprites) {
			var ri:int = recentlySeen.indexOf(name); 
			if (ri >= 0) recentlySeen.splice(ri, 1);
			recentlySeen.push(name);
		}
		
		// Max to more visible tiles then maxTilesToKeep
		maxTilesToKeep = Math.max(visibleTileSprites.length * 3, maxTilesToKeep);
		while ( maxTilesToKeep < recentlySeen.length && (name = recentlySeen.shift())) {
			removeChild(tileSprites[name]);
			delete tileSprites[name];
		}
		
		for each (var sprite:TileSprite in tileSprites) {
			sprite.includeInLayout = (-1 != visibleTileSprites.indexOf(sprite.id))
		}
		
	}
	
	protected function onEachVisibleGridCell (x:int, y:int):void {
		var name:String = "t_"+x+"x"+y;
		
		if (tileSprites[name]) {
			visibleTileSprites.push(name);
			return;
		}
		
   	var tile:Grass = game.getTile(x, y) as Grass;
   	
		var sprite:TileSprite = new TileSprite();
		sprite.id = name;
   	sprite.moveTo(x * cellSize, y * cellSize, tile.z * cellSize / 4);
   	
		sprite.tile = tile;
   	
   	var sprites:Array = new Array();
   	for each (var spriteId:int in tile.getSpriteIds()) {
	   	var bitmap:Bitmap = getBitmapFromSpriteId(spriteId, 2);
			sprites.push(bitmap);
		}
   	//sprites.push( debugField(tile) );
		sprite.sprites = sprites;
		
   	addChild(sprite);
   	tileSprites[name] = sprite;
   	visibleTileSprites.push(name);
		
	}
	
	protected function forEachVisibleGridCell (callback:Function):void {
		var topleft:Pt = view.localToIso(new Point(0, 0));
		topleft = new Pt(topleft.x / cellSize, topleft.y / cellSize);
		var topright:Pt = view.localToIso(new Point(view.width, 0));
		topright = new Pt(topright.x / cellSize, topright.y / cellSize);
		var bottomleft:Pt = view.localToIso(new Point(0, view.height));
		bottomleft = new Pt(bottomleft.x / cellSize, bottomleft.y / cellSize);
		var bottomright:Pt = view.localToIso(new Point(view.width, view.height));
		bottomright = new Pt(bottomright.x / cellSize, bottomright.y / cellSize);
		
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
				if (x >= 0 && x < gridSize.x && y >= 0 && y < gridSize.y) {
					
					callback (x, y);
				}
			}
			
		}
	}
	
	////////////////////////////////////////////////////
	//	Load bitmap
	////////////////////////////////////////////////////
	public function getBitmapFromSpriteId (SpriteId:int, zoom:int):Bitmap {
		var srcBitmap:Bitmap = Manager.getKey(SpriteId+'_z'+zoom);
		var dstBitmap:Bitmap = new Bitmap( srcBitmap.bitmapData );
		//dstBitmap.cacheAsBitmap = true;
		dstBitmap.x = srcBitmap.x;
		dstBitmap.y = srcBitmap.y;
		return dstBitmap;
	}
	
	
	
	protected function debugField (tile:Tile):TextField {
		var debugField:TextField = new TextField();
		debugField.defaultTextFormat = new TextFormat(null, 11, 0x000000, false);
		debugField.autoSize = TextFieldAutoSize.CENTER;
		debugField.backgroundColor = 0xffffff;
		debugField.background = true;
		debugField.borderColor = 0x0;
		debugField.border = true;
		debugField.text = tile.x +" x "+ tile.y +" z "+ tile.z +"\n"+tile.getSpriteId()+"_z"+zoom;
		debugField.x = -20;
		debugField.y = 5;
		return debugField;
	}
	
	
	
	
}
}