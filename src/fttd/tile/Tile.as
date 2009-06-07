package fttd.tile {
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	
	import fttd.bitmap.Manager;
	import fttd.bitmaps.DirtPlane;
	


public class Tile {
	
	protected static const TILE_SIZE:int   = 16;   ///< Tiles are 16x16 "units" in size
	protected static const TILE_PIXELS:int = 32;   ///< a tile is 32x32 pixels
	protected static const TILE_HEIGHT:int =  8;   ///< The standard height-difference between tiles on two levels is 8 (z-diff 8)
	
	protected static const MAX_TILE_HEIGHT:int     = 15;                    ///< Maximum allowed tile height
	protected static const MAX_SNOWLINE_HEIGHT:int = (MAX_TILE_HEIGHT - 2); ///< Maximum allowed snowline height

	
	protected var owner:String;
	
	
	/* Tile height
	 */
	protected var _height:int;
	protected function set height(value:int):void {
		_height = value;
	}
	protected function get height():int {
		return _height;
	}
	
	
	/* Tile type
	 */
	protected var _type:int;
	public function set type(value:int):void {
		_type = value;
	}
	public function get type():int {
		return _type;
	}
	
	
	
	// bitmapData
	protected var _bitmapData:BitmapData;
	public function get bitmapData():BitmapData {
		if ( ! _bitmapData) {
			_bitmapData = new DirtPlane(0, 0);
		}
		return _bitmapData;
	}
	
	/** Tile information, used while rendering the tile */
	
	/* tile x position
	 * X position of the tile in unit coordinates
	 */
	protected var _x:int;
	public function set x(value:int):void { _x = value; }
	public function get x():int { return _x; }
	
	/* tile y position
	 * Y position of the tile in unit coordinates
	 */
	protected var _y:int;
	public function set y(value:int):void { _y = value; }
	public function get y():int { return _y; }
	
	/* tile z position
	 * Height
	 */
	protected var _z:int;
	public function set z(value:int):void { _z = value; }
	public function get z():int { return _z; }
	
	/* Tile slope
	 * Slope of the tile
	 */
	protected var _slope:Slope = fttd.tile.Slope.SLOPE_FLAT;
	public function set slope(value:Slope):void { _slope = value; }
	public function get slope():Slope { return _slope; }
	
		
	/** Tile description for the 'land area information' tool */
	/*
	struct TileDesc {
		StringID str;           ///< Description of the tile
		Owner owner[4];         ///< Name of the owner(s)
		StringID owner_type[4]; ///< Type of each owner
		Date build_date;        ///< Date of construction of tile contents
		StringID station_class; ///< Class of station
		StringID station_name;  ///< Type of station within the class
		const char *grf;        ///< newGRF used for the tile contents
		uint64 dparam[2];       ///< Parameters of the \a str string
	};
	*/
	
	/////////////////////////////////////////////////////////
	//	CONSTRUCTOR
	/////////////////////////////////////////////////////////
	
	private function createObjectFromDescriptor (descriptor:Object):void {
		var prop:String;
		for (prop in descriptor) {
			if (this.hasOwnProperty(prop)) this[prop] = descriptor[prop];
		}
	}
	
	/**
	 * Constructor
	 */
	public function Tile (descriptor:Object = null) {
		//super();
		if (descriptor) createObjectFromDescriptor(descriptor);
	}
	
	public function getSpriteId ():int {
		var i:int = 3981;
		i += slope.bit;
		return i;
	}
	
} // End class
} // End package
