package fttd.map {

import com.modestmaps.core.TileGrid;
import com.modestmaps.mapproviders.IMapProvider;

import flash.geom.Matrix;
import flash.geom.Point;
import flash.geom.Transform;

public class TileGrid extends com.modestmaps.core.TileGrid {

	protected var _tileDepth:Number;
		
	public function TileGrid(w:Number, h:Number, draggable:Boolean, provider:IMapProvider) {
		super(w, h, draggable, provider);
		_tileDepth = 8;
	}
	
	/** convenience method for tileHeight */
	public function get tileDepth():Number {
		return _tileDepth;
	}
	
// Calculate screen coordinates based on grid coordinates. 
	override public function calculateScreenCoords(positionCol:Number, positionRow:Number, 
			positionElevation:Number, positionScaleCompensation:Number):Point {
		
		var point:Point = new Point();
		
		point.x = positionCol * tileWidth;
		point.y = positionRow * tileHeight;
		
		//var matrix:Matrix = worldMatrix.clone();
		
		var matrix:Matrix = new Matrix();
		matrix.rotate(40);
		matrix.scale(1, .5);
		var pt:Point = matrix.transformPoint(point);
		
		var tileSize:Point = new Point(tileWidth / 2, tileHeight / 2);
		
		//var t:Transform = new Transform();
		
		return point;
	}
	
// Calculate screen coordinates based on grid coordinates. 
	 public function dis_calculateScreenCoords(positionCol:Number, positionRow:Number, 
			positionElevation:Number, positionScaleCompensation:Number):Point {
		
  	var point:Point = new Point();
		
		var halfWidth:int = tileWidth / 2;
		var halfHeight:int = tileHeight / 2;
		
		// Calculate screen coordinates.
		point.x = (positionCol * halfWidth) - (positionRow * halfWidth);
		point.y = (positionRow * halfHeight) + (positionCol * halfHeight) - (tileDepth * positionElevation);
		
		point.x += mapWidth / 2;
		//point.y += mapHeight / 8;
		
		point.x *= positionScaleCompensation;
		point.y *= positionScaleCompensation;
			
		return point;
	}
	
	// Calculate grid coordinates based on screen coordinates.
	public function calculateGridCoords(x:int, y:int):Point {
		// Create a Point.
		var point:Point = new Point();
		
		var halfWidth:Number = tileWidth / 2;
		var halfHeight:Number = tileHeight / 2;
		
		x -= halfWidth;
		
		// Calculate grid coordinates based on (local) screen coordinates.
		point.x = (int)(((x / halfWidth) + (y / halfHeight)) / 2);
		point.y = (int)(((y / halfHeight) - (x / halfWidth)) / 2);
		
		// Return to caller.
		return point;
	}
	
	
} // End class
} // End package