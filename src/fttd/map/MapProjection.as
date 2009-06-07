package fttd.map {

import com.modestmaps.core.Coordinate;
import com.modestmaps.geo.AbstractProjection;
import com.modestmaps.geo.Location;
import com.modestmaps.geo.Transformation;

import flash.geom.Point;

public class MapProjection extends AbstractProjection {
	
	public function MapProjection(zoom:Number, T:Transformation) {
		super(zoom, T);
	}
	
	/*
	 * String signature of the current projection.
	 */
	override public function toString():String {
		return 'MapProjection('+zoom+', '+T.toString()+')';
	}
	
	/*
	 * Return raw projected point.
	 */
	override protected function rawProject(point:Point):Point {
		return new Point(point.x, point.y);
	}
	
	/*
	 * Return raw unprojected point.
	 */
	override protected function rawUnproject(point:Point):Point {
		return new Point(point.x, point.y);
	}
	
	
	/**
	 * @return projected and transformed coordinate for a location.
	 */
	override public function locationCoordinate(location:Location):Coordinate {
		var point:Point = new Point(location.lon, location.lat);
		point = project(point);
		return new Coordinate(point.y, point.x, zoom);
	}
	
	/**
	 * @return untransformed and unprojected location for a coordinate.
	 */
	override public function coordinateLocation(coordinate:Coordinate):Location {
		coordinate = coordinate.zoomTo(zoom);
		var point:Point = new Point(coordinate.column, coordinate.row);
		point = unproject(point);
		return new Location(point.y, point.x);
	}
	
} // End class
} // End package