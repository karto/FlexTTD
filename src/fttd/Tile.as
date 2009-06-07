package fttd {
	import flash.geom.Point;
	
	
	public class Tile {
		
		public var map:Map;
		
		public var x:int;
		public var y:int;
		public var z:int;
		
		public function Tile() {
			//this.map = map; //map:Map
		}
		
		// Calculate screen coordinates based on grid coordinates. 
		public static function CalculateScreenCoords(x:int, y:int, z:int):Point {
			// Create a Point.
			var point:Point = new Point();
			
			var halfWidth:int = Config.TILE_WIDTH / 2;
			var halfHeight:int = Config.TILE_HEIGHT / 2;
			
			// Calculate screen coordinates.
			point.x = (x * halfWidth) - (y * halfWidth);
			point.y = (y * halfHeight) + (x * halfHeight) - (Config.TILE_DEPTH * z);

			// Return to caller.
			return point;
		}
		
		// Calculate grid coordinates based on screen coordinates.
		public static function CalculateGridCoords(x:int, y:int):Point
		{
			// Create a Point.
			var point:Point = new Point();
			
			var halfWidth:int = Config.TILE_WIDTH / 2;
			var halfHeight:int = Config.TILE_HEIGHT / 2;
			
			x -= halfWidth;
			
			// Calculate grid coordinates based on (local) screen coordinates.
			point.x = (int)(((x / halfWidth) + (y / halfHeight)) / 2);
			point.y = (int)(((y / halfHeight) - (x / halfWidth)) / 2);
			
			// Return to caller.
			return point;
		}
		
	}
}