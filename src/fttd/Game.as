package fttd {
	public class Game {
		
		protected var seedTiles:Array = new Array(
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
		
		protected var tiles:Array = new Array();
		
		public function Game() {
			initTiles();
		}
		
		protected function initTiles ():void {
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

	}
}