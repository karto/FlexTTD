package fttd.tile {

import fttd.sprites.Sprites;

public class Rough extends Ground {
	
	public function Rough(descriptor:Object=null) {
		super(descriptor);
	}
	
	
	override public function getSpriteIds ():Array {
		return [Sprites.SPR_FLAT_ROUGH_LAND + getSpriteIdOffsetForSlope()];
	}
	
}
}
