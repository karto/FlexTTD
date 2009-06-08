package fttd.tile {

public class Ground extends Tile {
	
	/* Tile slope
	 * Slope of the tile
	 */
	protected var _slope:Slope;
	public function set slope(value:Slope):void { _slope = value; }
	public function get slope():Slope { return _slope; }
	
	
	public function Ground(descriptor:Object=null) {
		super(descriptor);
		slope = Slope.SLOPE_FLAT;
	}
	
	
	
	
	/* landscape slope => sprite */
	protected static const _slope_to_sprite:Array = new Array(
		0, 1, 2, 3, 4, 5, 6,  7, 8, 9, 10, 11, 12, 13, 14, 0,
		0, 0, 0, 0, 0, 0, 0, 16, 0, 0,  0, 17,  0, 15, 18, 0
	);
	
	protected function getSpriteIdOffsetForSlope ():int {
		if ( ! slope) return 0;
		return Ground._slope_to_sprite[int(slope)];
	}
	
}
}