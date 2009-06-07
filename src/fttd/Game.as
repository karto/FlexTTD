package fttd {
	import fttd.tile.Slope;
	import fttd.tile.Tile;
	
public class Game {
	
	
	public var tiles:Array;
	
	public function Game() {
		tiles = buildMap();
	}
	
	protected function initTiles ():void {
		var seedTiles:Array = new Array(
			[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
			[0,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0]
			[0,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0]
			[0,1,1,2,2,1,1,0,0,0,0,0,0,0,0,0]
			[0,1,1,2,2,1,1,0,0,0,0,0,0,0,0,0]
			[0,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0]
			[0,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0]
			[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
			[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
			[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
			[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
			[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
			[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
			[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
			[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
			[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
		);
		var eachTile:Tile;
		for(var x:int = 0; x < seedTiles.length; ++x) {
			for(var y:int = 0; y < seedTiles[0].length; ++y) {
				tiles.push( eachTile = new Tile() );
				eachTile.x = x;
				eachTile.y = y;
				eachTile.z = seedTiles[x][y];
			}
		}
		
	}
	
	public function buildMap ():Array {
		var res:Array = new Array();
		var tile:Tile;
		for(var x:int = 0; x < 32; ++x) {
			for(var y:int = 0; y < 32; ++y) {
				res.push(tile = new Tile());
				tile.x = x;
				tile.y = y;
				tile.z = (2 <= x && 5 >= x && 2 <= y && 5 >= y) ? 1 : 0;
				tile.slope = Slope.SLOPE_FLAT;

				if (1 == x && 2 == y) tile.slope = Slope.SLOPE_S;
				if (1 == x && 3 == y) tile.slope = Slope.SLOPE_SE;
				if (1 == x && 4 == y) tile.slope = Slope.SLOPE_SE;
				if (1 == x && 5 == y) tile.slope = Slope.SLOPE_E;
				
				if (2 == x && 1 == y) tile.slope = Slope.SLOPE_S;
				if (2 == x && 2 == y) { tile.slope = Slope.SLOPE_WSE; tile.z = 0; }
				//if (2 == x && 3 == y) tile.slope = Slope.SLOPE_FLAT;
				//if (2 == x && 4 == y) tile.slope = Slope.SLOPE_FLAT;
				if (2 == x && 5 == y) { tile.slope = Slope.SLOPE_SEN; tile.z = 0; }
				if (2 == x && 6 == y) tile.slope = Slope.SLOPE_E;
				
				if (3 == x && 1 == y) tile.slope = Slope.SLOPE_SW;
				//if (3 == x && 2 == y) tile.slope = Slope.SLOPE_FLAT;
				//if (3 == x && 3 == y) tile.slope = Slope.SLOPE_FLAT;
				//if (3 == x && 4 == y) tile.slope = Slope.SLOPE_FLAT;
				//if (3 == x && 5 == y) tile.slope = Slope.SLOPE_FLAT;
				if (3 == x && 6 == y) tile.slope = Slope.SLOPE_NE;
				
				if (4 == x && 1 == y) tile.slope = Slope.SLOPE_SW;
				//if (4 == x && 2 == y) tile.slope = Slope.SLOPE_FLAT;
				//if (4 == x && 3 == y) tile.slope = Slope.SLOPE_FLAT;
				//if (4 == x && 4 == y) tile.slope = Slope.SLOPE_FLAT;
				//if (4 == x && 5 == y) tile.slope = Slope.SLOPE_FLAT;
				if (4 == x && 6 == y) tile.slope = Slope.SLOPE_NE;
				
				if (5 == x && 1 == y) tile.slope = Slope.SLOPE_W;
				if (5 == x && 2 == y) { tile.slope = Slope.SLOPE_NWS; tile.z = 0; }
				//if (5 == x && 3 == y) tile.slope = Slope.SLOPE_FLAT;
				//if (5 == x && 4 == y) tile.slope = Slope.SLOPE_FLAT;
				if (5 == x && 5 == y) { tile.slope = Slope.SLOPE_ENW; tile.z = 0; }
				if (5 == x && 6 == y) tile.slope = Slope.SLOPE_N;
				
				if (6 == x && 2 == y) tile.slope = Slope.SLOPE_W;
				if (6 == x && 3 == y) tile.slope = Slope.SLOPE_NW;
				if (6 == x && 4 == y) tile.slope = Slope.SLOPE_NW;
				if (6 == x && 5 == y) tile.slope = Slope.SLOPE_N;
				
			}
		}
		return res;
	}
	
}
}