package fttd.tile {


public class Unmovable extends Tile {
	// enum UnmovableType
	/** Types of unmovable structure */
	protected static const UNMOVABLE_TRANSMITTER:int = 0; ///< The large antenna
	protected static const UNMOVABLE_LIGHTHOUSE:int  = 1; ///< The nice lighthouse
	protected static const UNMOVABLE_STATUE:int      = 2; ///< Statue in towns
	protected static const UNMOVABLE_OWNED_LAND:int  = 3; ///< Owned land 'flag'
	protected static const UNMOVABLE_HQ:int          = 4; ///< HeadQuarter of a player
	

	public function Unmovable() {
	}

} // End class
} // End package
