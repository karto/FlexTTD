package fttd {
import fttd.flex.MainViewport;
import fttd.tile.Tile;

public class Game {
	
	
	public var tiles:Object = new Object();
	
	public var mainViewport:MainViewport;
	
	
	public function Game() {
		initTiles();
	}
	
	protected function initTiles ():void {
		//tiles = buildMap();
	}
	
	
	
	protected function serialize ():XML {
		return new XML();
	}
	
	
	public function setTile (tile:Tile):void {
		tiles["t_"+tile.x+"_"+tile.y] = tile;
	}
	
	public function getTile (x:int, y:int):Tile {
		return tiles["t_"+x+"_"+y];
	}
	
}
}