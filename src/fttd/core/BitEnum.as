package fttd.core {

public class BitEnum extends Enum {
	
	public function BitEnum(value:int) {
		super(value);
	}
	
	public function isSet(bit:*):Boolean {
		if (bit is BitEnum) bit = bit.value;
		if ('number' != typeof bit) throw new Error('Argument has to be a number or bit enum object');
		return (_value & bit) == bit;
	}
	
}
}