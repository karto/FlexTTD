package fttd.tile {

import fttd.core.Enum;
	
public final class Corner extends Enum {
	/**
	 * Enumeration of tile corners
	 */
	public static const CORNER_W:Corner = new Corner(0);
	public static const CORNER_S:Corner = new Corner(1);
	public static const CORNER_E:Corner = new Corner(2);
	public static const CORNER_N:Corner = new Corner(3);
	
	public function Corner(value:int) {
		super(value);
	}
	
}
}