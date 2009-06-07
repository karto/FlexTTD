package fttd {

import flash.display.Sprite;

import fttd.events.*;

import flash.display.Sprite;
import flash.geom.Matrix;
import flash.geom.Point;

import mx.core.BitmapAsset;


[Event(name="startZooming",      type="fttd.events.MapEvent")]
[Event(name="stopZooming",       type="fttd.events.MapEvent")]
[Event(name="zoomedBy",          type="fttd.events.MapEvent")]
[Event(name="startPanning",      type="fttd.events.MapEvent")]
[Event(name="stopPanning",       type="fttd.events.MapEvent")]
[Event(name="panned",            type="fttd.events.MapEvent")]
[Event(name="resized",           type="fttd.events.MapEvent")]
[Event(name="beginExtentChange", type="fttd.events.MapEvent")]
[Event(name="extentChanged",     type="fttd.events.MapEvent")]
[Event(name="beginTileLoading",  type="fttd.events.MapEvent")]
[Event(name="allTilesLoaded",    type="fttd.events.MapEvent")]
[Event(name="rendered",          type="fttd.events.MapEvent")]
[Event(name="markerRollOver",    type="fttd.events.MarkerEvent")]
[Event(name="markerRollOut",     type="fttd.events.MarkerEvent")]
[Event(name="markerClick",       type="fttd.events.MarkerEvent")]
public class Map extends Sprite {
	
	protected var mapWidth:Number = 320;
	protected var mapHeight:Number = 240;
	protected var __draggable:Boolean = true;
	
	/** das grid */
	public var grid:TileGrid;
	
	/** fraction of width/height to pan panLeft, panRight, panUp, panDown
	 * @default 0.333333333  
	 */
	public var panFraction:Number = 0.333333333;
	
	
	/**
	 * Initialize the map: set properties, add a tile grid, draw it.
	 * Default extent covers the entire globe, (+/-85, +/-180).
	 *
	 * @param    Width of map, in pixels.
	 * @param    Height of map, in pixels.
	 * @param    Whether the map can be dragged or not.
	 * @param    Desired map provider, e.g. Blue Marble.
	 * @param    Either a MapExtent or a Location and zoom (comma separated)
	 *
	 * @see com.modestmaps.core.TileGrid
	 */
	public function Map(width:Number=320, height:Number=240, draggable:Boolean=true, ... rest) {
		// TODO getter/setter for this that disables interaction in TileGrid
		__draggable = draggable;
		
		// initialize the grid (so point/location/coordinate functions should be valid after this)
		grid = new TileGrid(mapWidth, mapHeight, draggable, mapProvider);
		grid.addEventListener(Event.CHANGE, onExtentChanged);
		addChild(grid);
		
		setSize(width, height);
		
		// if rest was passed in from super constructor in a subclass,
		// it will be an array...
		if (rest && rest.length > 0 && rest[0] is Array) {
			rest = rest[0];
		}
		// (doing that is OK because none of the arguments we're expecting are Arrays)
		
		// look at ... rest arguments for MapExtent or Location/zoom	        
		if (rest && rest.length > 0 && rest[0] is MapExtent) {
			setExtent(rest[0] as MapExtent);
		}
		else if (rest && rest.length > 1 && rest[0] is Location && rest[1] is Number) {
			setCenterZoom(rest[0] as Location, rest[1] as Number);
		}
		else {
			// use the whole world as a default
			var extent:MapExtent = new MapExtent(85, -85, 180, -180);
			/*
			// but adjust to fit the mapprovider's outer limits if there are any: 
		 	var l1:Location = mapProvider.coordinateLocation(mapProvider.outerLimits()[0]);
			var l2:Location = mapProvider.coordinateLocation(mapProvider.outerLimits()[1]);
		
			if (!isNaN(l1.lat) && Math.abs(l1.lat) != Infinity) {
				extent.north = l1.lat;
			}        		
			if (!isNaN(l2.lat) && Math.abs(l2.lat) != Infinity) {
				extent.south = l2.lat;
			}        		
			if (!isNaN(l1.lon) && Math.abs(l1.lon) != Infinity) {
				extent.west = l1.lon;
			}        		
			if (!isNaN(l2.lon) && Math.abs(l2.lon) != Infinity) {
				extent.east = l2.lon;
			}
			*/
			setExtent(extent);
		}
		
		//addChild(grid.debugField);
	}

	
	
//} // End class
//} // End package



/*
import flash.display.Sprite;
import flash.geom.Matrix;
import flash.geom.Point;

import mx.core.BitmapAsset;


import com.modestmaps.events.*;

//import fttd.tile.*;
*/
		
//	public class Map2 extends Sprite
//	{
		
		[Embed(source="../resource/3924_z0.png")]
		public var ImgCls:Class;
		
		public var tiles:Array = new Array();
		
		public function dis_Map()
		{
			initTiles();
		}
		
		protected function initTiles ():void {
			//var tile:Tile;
			var maxX:int = 102;//4;
			var maxY:int = 2;//4;
			var z:int;
			
			var img:BitmapAsset = new ImgCls() as BitmapAsset;
			//addChild(img); return;
			graphics.clear();
			
			for(var x:int = 0; x < maxX; ++x) {
				for(var y:int = 0; y < maxY; ++y) {
					// Calculate the screen coordinates.
					z = ((2 == x || 3 == x) && (2 == y || 3 == y)) ? 1 : 0;
					var point:Point = Tile.CalculateScreenCoords(x, y, z);
					
					//img.x = point.x;
					//img.y = point.y;
					//addChild(img);
					
					
					//graphics.beginBitmapFill();
					var matrix:Matrix = new Matrix(1, 0, 0, 1, point.x, point.y);
					graphics.beginBitmapFill(img.bitmapData, matrix, false);
					//graphics.beginBitmapFill(img.bitmapData, null, false);
					//graphics.beginFill(0);
					graphics.lineStyle(1, 0xFF0000);
					graphics.drawRect(point.x, point.y, Config.TILE_WIDTH, Config.TILE_HEIGHT);
					graphics.endFill();
			
					/*
					var tileMc:MovieClip = null;
					if (1==x) {
						     if (1==y) tileMc = new InclineS();
						else if (2==y || 3==y) tileMc = new InclineSE();
						else if (4==y) tileMc = new InclineE();
					
					} else if (2==x || 3==x) {
						     if (1==y) tileMc = new InclineSW();
						//else if (2==y || 3==y) tileMc = new Plane();
						else if (4==y) tileMc = new InclineNE();
					
					} else if (4==x) {
						     if (1==y) tileMc = new InclineW();
						else if (2==y || 3==y) tileMc = new InclineNW();
						else if (4==y) tileMc = new InclineN();
					}
					if ( ! tileMc) tileMc = new Plane();
					
					
					// Generate tile
					tile = new Tile (this, tileMc);
					
					// Position tile
					tile.x = point.x - (Config.TILE_WIDTH / 2) + (Config.TILE_WIDTH * (maxX / 2));
					tile.y = point.y;
					
					// Remember tile
					//addChild(tile);
					tiles.push(tile);
					
					*/
					
					
				}
			}
		}
		
		
		
		/**
		 * Set new map size, dispatch MapEvent.RESIZED. 
		 * The MapEvent includes the newSize.
		 *
		 * @param w New map width.
		 * @param h New map height.
		 *
		 * @see com.modestmaps.events.MapEvent.RESIZED
		 */
		public function setSize(w:Number, h:Number):void
		{
			if (w != mapWidth || h != mapHeight)
			{
				mapWidth = w;
				mapHeight = h;
				
				// mask out out of bounds marker remnants
				scrollRect = new Rectangle(0,0,mapWidth,mapHeight);
				grid.resizeTo(new Point(mapWidth, mapHeight));
				dispatchEvent(new MapEvent(MapEvent.RESIZED, this.getSize()));
			}	        
		}
	    
	    
	} // End class
} // End package