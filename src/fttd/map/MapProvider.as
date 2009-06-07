package fttd.map {

import com.modestmaps.core.Coordinate;
import com.modestmaps.geo.Location;
import com.modestmaps.geo.Transformation;
import com.modestmaps.mapproviders.AbstractMapProvider;
import com.modestmaps.mapproviders.IMapProvider;

public class MapProvider extends AbstractMapProvider implements IMapProvider {
	
	public function MapProvider(width:Number, height:Number) {
		var t:Transformation = new Transformation(1, 0, 0, 0, 1, 0);
		__projection = new MapProjection(0, t);
		
		__topLeftOutLimit = new Coordinate(0, 0, 0);
		__bottomRightInLimit = (new Coordinate(width -1, height -1, 0));
	}
	
	public function toString() : String {
		return "FTTD";
	}
	
	public function getTileUrls(coord:Coordinate):Array {
		if (coord.row < 0 || coord.row > __bottomRightInLimit.row ||
		    coord.column < 0 || coord.column > __bottomRightInLimit.column) {
			return null;
		}
		return ['../resource/3924_z0.png'];
		//return ['http://localhost/FlexTTD/Sprites/sprites/trg1r/3981.png'];
	}
	
	override public function get tileWidth():Number {
		return 256;
	}
	
	override public function get tileHeight():Number {
		return 128;
	}
} // End class
} // End package
