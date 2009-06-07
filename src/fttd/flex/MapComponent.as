package fttd.flex {

import com.modestmaps.flex.MapComponent;

import fttd.map.Map;

public class MapComponent extends com.modestmaps.flex.MapComponent {
	public function MapComponent() {
		super();
	}
	
	override protected function createChildren():void {
		trace("MapComponent.createChildren()");
		
		var mapInitDirtyTmp:Boolean = mapInitDirty;
		mapInitDirty = false;
		super.createChildren();
		mapInitDirty = mapInitDirtyTmp;
		
		if (mapInitDirty && _map == null) {
			// TODO: implement draggable switch?
			//trace(' * initializing map: ' + w + 'x' + h + ', ' + _draggable + ', provider: ' + _mapProvider.toString());
			//_map.init(w, h, _draggable, _mapProvider || DEFAULT_MAP_PROVIDER);
			_map = new fttd.map.Map(unscaledWidth, unscaledHeight, _draggable, _mapProvider || DEFAULT_MAP_PROVIDER);
			addChild(_map);
			mapProviderDirty = false;
			mapInitDirty = false;
		}
	}
	
}
}