package fttd.core {

public class Enum {
	
	protected var _value:int = 0;
	public function get value ():int { return _value; }
	
	public function Enum (value:int) { _value = value; }
	
}
}