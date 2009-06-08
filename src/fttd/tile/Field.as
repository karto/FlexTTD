package fttd.tile {
	import fttd.sprites.Sprites;
	

public class Field extends Ground {
	
	public function Field(descriptor:Object=null) {
		super(descriptor);
	}
	
	/* Get the field type (production stage) of the field
	 */
	protected var _fieldType:int = 0;
	public function get fieldType():int { return _fieldType; }
	public function set fieldType(value:int):void { _fieldType = value; }
	
	// _clear_land_sprites_1
	protected static const _fieldType_to_sprite:Array = new Array(
		//0x101E, 0x1031, 0x1044, 0x1057, 0x106A, 0x107D, 0x1090, 0x10A3, 0x10B6,
		SPR_FARMLAND_BARE,
		SPR_FARMLAND_STATE_1,
		SPR_FARMLAND_STATE_2,
		SPR_FARMLAND_STATE_3,
		SPR_FARMLAND_STATE_4,
		SPR_FARMLAND_STATE_5,
		SPR_FARMLAND_STATE_6,
		SPR_FARMLAND_STATE_7,
		SPR_FARMLAND_HAYPACKS
	);

	public function getSpriteIds ():Array {
		return [_fieldType_to_sprite[fieldType] + getSpriteIdOffsetForSlope()];
	}
	
}
}
