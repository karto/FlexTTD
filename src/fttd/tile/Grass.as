package fttd.tile {

import fttd.sprites.Sprites;
	
public class Grass extends Ground {
	
	public function Grass(descriptor:Object=null) {
		super(descriptor);
	}
	
	
	public function getSpriteIds ():Array {
		var sid:int = Sprites.SPR_FLAT_GRASS_TILE;
		sid += getSpriteIdOffsetForSlope();
		return [sid];
		//return [Sprites.SPR_FLAT_GRASS_TILE + getSpriteIdOffsetForSlope()];
	}
	
}
}