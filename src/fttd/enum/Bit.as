package fttd.enum {

public class Bit {
	
	protected var _bit:int = 0;
	
	public function Bit(bit:int) {
		_bit = bit;
	}
	
	public function get bit():int {
		return _bit;
	}
	
	public function isSet(bit:*):Boolean {
		if (bit is Bit) bit = bit.bit;
		if ('number' != typeof bit) throw new Error('Argument has to be a number or bit enum object');
		return (_bit & bit) == bit;
	}
	
}
}