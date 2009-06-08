package fttd.bitmap {

import flash.display.Bitmap;
import flash.utils.Dictionary;

import fttd.bitmap.data.Landscape;

public class Manager {
	
	protected static var cache:Dictionary = new Dictionary();
	
	public static function getKey(key:String):Bitmap {
		if ( ! (Landscape["cls_"+key] is Class)) throw new Error("bitmap data Landscape not found");
		if ( ! containsKey(key)) {
			cache[key] = new Landscape["cls_"+key]() as Bitmap;
			cache[key].x = Landscape.offset[key].x;
			cache[key].y = Landscape.offset[key].y;
		}
		return cache[key] as Bitmap;
	}
	
	public static function containsKey(key:String):Boolean {
		return cache[key] is Bitmap;
	}
	
	
}
}