package fttd.map {

import com.modestmaps.Map;
import com.modestmaps.mapproviders.IMapProvider;

public class Map extends com.modestmaps.Map {
	
	public function Map(width:Number=320, height:Number=240, draggable:Boolean=true, mapProvider:IMapProvider=null, ...parameters) {
		super(width, height, draggable, mapProvider, parameters);
	}
	
	override protected function initGrid (width:Number=320, height:Number=240, draggable:Boolean=true, mapProvider:IMapProvider=null):void {
		grid = new fttd.map.TileGrid(width, height, draggable, mapProvider);
	}
	
} // End class
} // End package
