package fttd.bitmap {

import flash.display.Bitmap;
import flash.utils.Dictionary;

import fttd.bitmap.data.Embed;

public class Manager {
	
	protected static var cache:Dictionary = new Dictionary();
	
	public static function getKey(key:String):Bitmap {
		if ( ! (Embed["cls_"+key] is Class)) throw new Error("bitmap data embed not found");
		if ( ! containsKey(key)) {
			cache[key] = new Embed["cls_"+key]() as Bitmap;
			cache[key].x = Embed.offset[key].x;
			cache[key].y = Embed.offset[key].y;
		}
		return cache[key] as Bitmap;
	}
	
	public static function containsKey(key:String):Boolean {
		return cache[key] is Bitmap;
	}
	
	
}
}