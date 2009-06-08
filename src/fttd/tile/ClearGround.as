package fttd.tile {

import fttd.core.Enum;
	
public final class ClearGround extends Enum {
	/**
	 * Ground types. Valid densities in comments after the enum.
	 */
	public static const CLEAR_GRASS:ClearGround  = new ClearGround(0); ///< 0-3
	public static const CLEAR_ROUGH:ClearGround  = new ClearGround(1); ///< 3
	public static const CLEAR_ROCKS:ClearGround  = new ClearGround(2); ///< 3
	public static const CLEAR_FIELDS:ClearGround = new ClearGround(3); ///< 3
	public static const CLEAR_SNOW:ClearGround   = new ClearGround(4); ///< 0-3
	public static const CLEAR_DESERT:ClearGround = new ClearGround(5); ///< 1,3
	
	/*
	public function ClearGround(value:int) {
		super(value);
	}
	*/
}
}