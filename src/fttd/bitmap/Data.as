package fttd.bitmap {

import flash.display.BitmapData;
import flash.geom.Point;

import fttd.bitmap.data.Tile4023z0;

public class Data extends BitmapData {
	
	public var offset:Point = new Point(0,0);
	
	public function Data(width:int, height:int, transparent:Boolean=true) {
		super(width, height, transparent);
		
		if (this is Tile4023z0) {
			offset.offset(-128, -4);
		}
		
	}
	
}
}
