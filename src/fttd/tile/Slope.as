package fttd.tile {

import fttd.enum.Bit;
	
public final class Slope extends Bit {

	/**
	 * Enumeration for the slope-type.
	 *
	 * This enumeration use the chars N,E,S,W corresponding the
	 * direction north, east, south and west. The top corner of a tile
	 * is the north-part of the tile. The whole slope is encoded with
	 * 5 bits, 4 bits for each corner and 1 bit for a steep-flag.
	 *
	 * For halftile slopes an extra 3 bits are used to represent this
	 * properly; 1 bit for a halftile-flag and 2 bits to encode which
	 * extra side (corner) is leveled when the slope of the first 5
	 * bits is applied. This means that there can only be one leveled
	 * slope for steep slopes, which is logical because two leveled
	 * slopes would mean that it is not a steep slope as halftile
	 * slopes only span one height level.
	 */
	public static const SLOPE_FLAT:Slope     = new Slope(0x00);                                  ///< a flat tile
	public static const SLOPE_W:Slope        = new Slope(0x01);                                  ///< the west corner of the tile is raised
	public static const SLOPE_S:Slope        = new Slope(0x02);                                  ///< the south corner of the tile is raised
	public static const SLOPE_E:Slope        = new Slope(0x04);                                  ///< the east corner of the tile is raised
	public static const SLOPE_N:Slope        = new Slope(0x08);                                  ///< the north corner of the tile is raised
	public static const SLOPE_STEEP:Slope    = new Slope(0x10);                                  ///< indicates the slope is steep
	public static const SLOPE_NW:Slope       = new Slope(SLOPE_N.bit | SLOPE_W.bit);                     ///< north and west corner are raised
	public static const SLOPE_SW:Slope       = new Slope(SLOPE_S.bit | SLOPE_W.bit);                     ///< south and west corner are raised
	public static const SLOPE_SE:Slope       = new Slope(SLOPE_S.bit | SLOPE_E.bit);                     ///< south and east corner are raised
	public static const SLOPE_NE:Slope       = new Slope(SLOPE_N.bit | SLOPE_E.bit);                     ///< north and east corner are raised
	public static const SLOPE_EW:Slope       = new Slope(SLOPE_E.bit | SLOPE_W.bit);                     ///< east and west corner are raised
	public static const SLOPE_NS:Slope       = new Slope(SLOPE_N.bit | SLOPE_S.bit);                     ///< north and south corner are raised
	public static const SLOPE_ELEVATED:Slope = new Slope(SLOPE_N.bit | SLOPE_E.bit | SLOPE_S.bit | SLOPE_W.bit); ///< all corner are raised, similar to SLOPE_FLAT
	public static const SLOPE_NWS:Slope      = new Slope(SLOPE_N.bit | SLOPE_W.bit | SLOPE_S.bit);           ///< north, west and south corner are raised
	public static const SLOPE_WSE:Slope      = new Slope(SLOPE_W.bit | SLOPE_S.bit | SLOPE_E.bit);           ///< west, south and east corner are raised
	public static const SLOPE_SEN:Slope      = new Slope(SLOPE_S.bit | SLOPE_E.bit | SLOPE_N.bit);           ///< south, east and north corner are raised
	public static const SLOPE_ENW:Slope      = new Slope(SLOPE_E.bit | SLOPE_N.bit | SLOPE_W.bit);           ///< east, north and west corner are raised
	public static const SLOPE_STEEP_W:Slope  = new Slope(SLOPE_STEEP.bit | SLOPE_NWS.bit);               ///< a steep slope falling to east (from west)
	public static const SLOPE_STEEP_S:Slope  = new Slope(SLOPE_STEEP.bit | SLOPE_WSE.bit);               ///< a steep slope falling to north (from south)
	public static const SLOPE_STEEP_E:Slope  = new Slope(SLOPE_STEEP.bit | SLOPE_SEN.bit);               ///< a steep slope falling to west (from east)
	public static const SLOPE_STEEP_N:Slope  = new Slope(SLOPE_STEEP.bit | SLOPE_ENW.bit);               ///< a steep slope falling to south (from north)

	public static const SLOPE_HALFTILE:Slope = new Slope(0x20);                                  ///< one halftile is leveled (non continuous slope)
	public static const SLOPE_HALFTILE_MASK:Slope = new Slope(0xE0);                             ///< three bits used for halftile slopes
	public static const SLOPE_HALFTILE_W:Slope = new Slope(SLOPE_HALFTILE.bit | (Corner.CORNER_W.bit << 6));    ///< the west halftile is leveled (non continuous slope)
	public static const SLOPE_HALFTILE_S:Slope = new Slope(SLOPE_HALFTILE.bit | (Corner.CORNER_S.bit << 6));    ///< the south halftile is leveled (non continuous slope)
	public static const SLOPE_HALFTILE_E:Slope = new Slope(SLOPE_HALFTILE.bit | (Corner.CORNER_E.bit << 6));    ///< the east halftile is leveled (non continuous slope)
	public static const SLOPE_HALFTILE_N:Slope = new Slope(SLOPE_HALFTILE.bit | (Corner.CORNER_N.bit << 6));    ///< the north halftile is leveled (non continuous slope)
	
	
	public function Slope(bit:int) {
		super(bit);
	}
	
	public function toString():String {
		var res:String = " ";
		if (isSet(SLOPE_STEEP)) res += "Steep ";
		if (isSet(SLOPE_STEEP_W)) res += "Steep_W ";
		if (isSet(SLOPE_STEEP_S)) res += "Steep_S ";
		if (isSet(SLOPE_STEEP_E)) res += "Steep_E ";
		if (isSet(SLOPE_STEEP_N)) res += "Steep_N ";
		if (isSet(SLOPE_ELEVATED)) res += "Elevated ";
		if (isSet(SLOPE_W)) res += "W ";
		if (isSet(SLOPE_S)) res += "S ";
		if (isSet(SLOPE_E)) res += "E ";
		if (isSet(SLOPE_N)) res += "N ";
		if (isSet(SLOPE_HALFTILE)) res += "Halftile ";
		if (isSet(SLOPE_HALFTILE_MASK)) res += "Halftile_mask ";
		if (isSet(SLOPE_HALFTILE_W)) res += "W ";
		if (isSet(SLOPE_HALFTILE_S)) res += "S ";
		if (isSet(SLOPE_HALFTILE_E)) res += "E ";
		if (isSet(SLOPE_HALFTILE_N)) res += "N ";
		return "Slope("+res+")";
	}
	
}
}
