package fttd {
	
	
	import flash.display.Sprite;
	import flash.geom.Matrix;
	import flash.geom.Point;
	
	import mx.core.BitmapAsset;
	
	//import fttd.tile.*;
	
		
	public class Map extends Sprite
	{
		
		[Embed(source="../resource/3924_z0.png")]
		public var ImgCls:Class;
		
		public var tiles:Array = new Array();
		
		public function Map()
		{
			initTiles();
		}
		
		protected function initTiles ():void {
			//var tile:Tile;
			var maxX:int = 102;//4;
			var maxY:int = 2;//4;
			var z:int;
			
			var img:BitmapAsset = new ImgCls() as BitmapAsset;
			//addChild(img); return;
			graphics.clear();
			
			for(var x:int = 0; x < maxX; ++x) {
				for(var y:int = 0; y < maxY; ++y) {
					// Calculate the screen coordinates.
					z = ((2 == x || 3 == x) && (2 == y || 3 == y)) ? 1 : 0;
					var point:Point = Tile.CalculateScreenCoords(x, y, z);
					
					//img.x = point.x;
					//img.y = point.y;
					//addChild(img);
					
					
					//graphics.beginBitmapFill();
					var matrix:Matrix = new Matrix(1, 0, 0, 1, point.x, point.y);
					graphics.beginBitmapFill(img.bitmapData, matrix, false);
					//graphics.beginBitmapFill(img.bitmapData, null, false);
					//graphics.beginFill(0);
					graphics.lineStyle(1, 0xFF0000);
					graphics.drawRect(point.x, point.y, Config.TILE_WIDTH, Config.TILE_HEIGHT);
					graphics.endFill();
			
					/*
					var tileMc:MovieClip = null;
					if (1==x) {
						     if (1==y) tileMc = new InclineS();
						else if (2==y || 3==y) tileMc = new InclineSE();
						else if (4==y) tileMc = new InclineE();
					
					} else if (2==x || 3==x) {
						     if (1==y) tileMc = new InclineSW();
						//else if (2==y || 3==y) tileMc = new Plane();
						else if (4==y) tileMc = new InclineNE();
					
					} else if (4==x) {
						     if (1==y) tileMc = new InclineW();
						else if (2==y || 3==y) tileMc = new InclineNW();
						else if (4==y) tileMc = new InclineN();
					}
					if ( ! tileMc) tileMc = new Plane();
					
					
					// Generate tile
					tile = new Tile (this, tileMc);
					
					// Position tile
					tile.x = point.x - (Config.TILE_WIDTH / 2) + (Config.TILE_WIDTH * (maxX / 2));
					tile.y = point.y;
					
					// Remember tile
					//addChild(tile);
					tiles.push(tile);
					
					*/
					
					
				}
			}
		}
		
	}
}