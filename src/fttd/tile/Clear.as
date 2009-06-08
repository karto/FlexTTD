package fttd.tile {

import fttd.sprites.Sprites;

public class Clear extends Ground {
	
	/* Get the density of a non-field clear tile.
	 */
	protected var _density:int = 0;
	public function set density(value:int):void { _density = value; }
	public function get density():int { return _density; }
	
	
	public function Clear(descriptor:Object=null) {
		super(descriptor);
	}
	
	
	public function getSpriteIds ():Array {
		return [Sprites.SPR_FLAT_BARE_LAND + getSpriteIdOffsetForSlope()];
	}
	
}
}