package fttd.flex
{
/**
 * The flex.Map class is an ActionScript UI component. To use it in your application,
 * simply specify a new namespace in the root node of your application. As long as the
 * fttd.flex namespace is in your path, Flex Builder should find the class
 * and auto-complete the element name once you've opened a new tag and typed the namespace.
 * 
 * <mx:Application xmlns:fttd="fttd.flex.*" ...>
 *   <fttd:Map
 * 		top="0" left="0" bottom="0" right="0" />
 * </mx:Application>
 * 
 */
import mx.containers.Canvas;
import mx.core.UIComponent;

//--------------------------------------
//  Lifecycle events
//--------------------------------------
	[Event(name="startZooming",      type="fttd.events.MapEvent")]
	[Event(name="stopZooming",       type="fttd.events.MapEvent")]
	[Event(name="zoomedBy",          type="fttd.events.MapEvent")]
	[Event(name="startPanning",      type="fttd.events.MapEvent")]
	[Event(name="stopPanning",       type="fttd.events.MapEvent")]
	[Event(name="panned",            type="fttd.events.MapEvent")]
	[Event(name="resized",           type="fttd.events.MapEvent")]
	[Event(name="beginExtentChange", type="fttd.events.MapEvent")]
	[Event(name="extentChanged",     type="fttd.events.MapEvent")]
	[Event(name="beginTileLoading",  type="fttd.events.MapEvent")]
	[Event(name="allTilesLoaded",    type="fttd.events.MapEvent")]
	[Event(name="rendered",          type="fttd.events.MapEvent")]
/**
 * Map UI component
 */
public class MapComponent extends Canvas UIComponent {
	
	//--------------------------------------------------------------------------
	//
	//  Class constants
	//
	//--------------------------------------------------------------------------
	public static const DEFAULT_MEASURED_WIDTH:Number = 320;
	public static const DEFAULT_MEASURED_MIN_WIDTH:Number = 100;
	public static const DEFAULT_MEASURED_HEIGHT:Number = 240;
	public static const DEFAULT_MEASURED_MIN_HEIGHT:Number = 100;
	public static const DEFAULT_MAX_WIDTH:Number = 10000;
	public static const DEFAULT_MAX_HEIGHT:Number = 10000;
	
	//--------------------------------------------------------------------------
	//
	//  Constructor
	//
	//--------------------------------------------------------------------------
	
	/**
	 *  Constructor.
	 */
	public function MapComponent () {
		super();
	}
		
	//--------------------------------------------------------------------------
	//
	//  Properties
	//
	//--------------------------------------------------------------------------
	
	//----------------------------------
	//  map
	//----------------------------------
	protected var _map:MapComponent;
	protected var mapInitDirty:Boolean = true;
	/**
	 * Since we're not yet supporting the full Map interface,
	 * make the instance gettable, read-only.
	 */
	public function get map():fttd.Map {
		return _map;
	}
	
	//----------------------------------
	//  extent
	//----------------------------------
	protected var mapExtentDirty:Boolean = false;
	protected var _extent:MapExtent;
	protected var _mapExtentString:String;
	
	/**
	 * The "extent" setter accepts either a MapExtent instance or a String;
	 * the latter is converted into a MapExtent using the static fromString()
	 * method. This allows the extent to be defined as a string in MXML
	 * attributes, a la "north, south, east, west".
	 */
	[Inspectable(category="MapComponent")]
	public function set extent(mapExtent:*):void {
		
		if (mapExtent is String) {
			mapExtent = MapExtent.fromString(mapExtent);
		}
		
		if (!(mapExtent is MapExtent)) {
			throw new Error("Invalid extent supplied");
		}
		trace("got extent: " + mapExtent);
		
		_extent = mapExtent;
		mapExtentDirty = true;
		mapCenterDirty = false;
		mapZoomDirty = false;
		invalidateProperties();
	}
	
	public function get extent():MapExtent {
		return _map ? _map.getExtent() : _extent;
	}
	
	//----------------------------------
	//  center
	//----------------------------------
	protected var _centerLocation:Location = new Location(0, 0);
	
	/**
	 * Like the "extent" setter, the "center" setter accepts a String in addition to
	 * a Location object, so that locations can be specified in MXML attributes as
	 * strings ("lat, lon").
	 */
	[Inspectable(category="Map", defaultValue="0,0")]		
	public function set center(location:*):void {
		
		if (location is String) {
			location = Location.fromString(location);
		}
		
		if ( ! (location is Location)) {
			throw new Error("Invalid location supplied");
		}
		
		_centerLocation = location;
		mapCenterDirty = true;
		mapExtentDirty = false;
		invalidateProperties();
	}
	
	public function get center():Location {
		return _map ? _map.getCenter() : _centerLocation;
	}
	
	//----------------------------------
	//  zoom
	//----------------------------------
	protected var mapZoomDirty:Boolean = true;
	protected var _zoom:int = 1;
	
	public function set zoom(zoomLevel:int):void {
		_zoom = zoomLevel;
		mapZoomDirty = true;
		mapExtentDirty = false;
		invalidateProperties();
	}

	//----------------------------------
	//  draggable
	//----------------------------------
	protected var _draggable:Boolean = true;
	
	/**
	 * Currently the "draggable" setter will only work pre-initialization.
	 * In other words, setting draggable after the component has been
	 * initialized will have no effect; it's provided merely as a means for
	 * setting the property in MXML.
	 */
	[Inspectable(category="Map")]
	public function set draggable(isDraggable:Boolean):void {
		trace('draggable', isDraggable);
		if (initialized) {
			throw new Error("'draggable' is not settable post initialization");
		
		} else {
			_draggable = isDraggable;
		}
	}
	
	public function get draggable():Boolean {
		return _draggable;
	}
	
	
	
	//--------------------------------------------------------------------------
	//
	//  Overridden methods
	//
	//--------------------------------------------------------------------------
	override protected function createChildren():void {
		trace("MapComponent.createChildren()");
		
		super.createChildren();
		
		if (mapInitDirty && _map == null) {
			_map = new Map(unscaledWidth, unscaledHeight, _draggable);
			addChild(_map);
			mapInitDirty = false;
		}
	}
	
	override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number):void {
		
		if (_map.getWidth() != unscaledWidth || _map.getHeight() != unscaledHeight) {
			_map.setSize(unscaledWidth, unscaledHeight);
		}
		
		// save extent setting until the map has a valid size
		if (mapExtentDirty && _map.getWidth() > 0 && _map.getHeight() > 0) {
			trace(' * extent is dirty, setting to: ' + _extent);
			_map.setExtent(_extent);
			mapExtentDirty = false;
		}
	}

	/**
	 * Updates the map's provider, extent or center/zoom, and size. This is called
	 * by the Flex framework when necessary. There's probably some more optimization that
	 * could be done in the whole invalidation/validation/update process; for instance,
	 * a flag set in invalidateSize() could be used to determine whether or not we should
	 * call _map.setSize(), rather than just comparing the size.
	 */
	
	// http://ccgi.arutherford.plus.com/blog/wordpress/?p=169
	override protected function commitProperties():void {
		trace('commitProperties()', this.id);
		
		if (_map!=null) {
			if (mapZoomDirty) {
				trace (' * zoom is dirty...');
				_map.setZoom(_zoom);
				mapZoomDirty = false;
			}
			
			if (mapCenterDirty) {
				trace (' * center is dirty...');
				_map.setCenter(_centerLocation);
				mapCenterDirty = false;
			}
			
			if (mapExtentDirty && _map.getWidth() > 0 && _map.getHeight() > 0) {
				trace(' * extent is dirty, setting to: ' + _extent);
				_map.setExtent(_extent);
				mapExtentDirty = false;
			}
		}
		
		super.commitProperties();		
	}

} // End class
} // End package
 