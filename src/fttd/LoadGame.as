package fttd {

import flash.events.Event;
import flash.net.URLLoader;
import flash.net.URLRequest;

import fttd.tile.Grass;
import fttd.tile.Slope;
import fttd.tile.Tile;

public class LoadGame {
	/*
	public function LoadGame() {
	}
	*/
	
	
	
	public static function load (callback:Function):void {
		var loader:URLLoader = new URLLoader();
		loader.load(new URLRequest("savegame.xml"));
		loader.addEventListener(Event.COMPLETE, function (event:Event):void {
			var xml:XML = new XML(event.target.data);
			var game:Game = unserialize(xml);
			callback(game);
		});
		
	}
	
	protected static function unserialize (xml:XML):Game {
		//trace (xml.tiles.*);
		
		if ('0.1' != xml.@version) throw new Error('Wrong version savegame');
		
		var game:Game = new Game ();
		var tile:Tile;
		var xmlTile:XML;
		
		// ROW
		for each (xmlTile in xml.tiles.elements()) {
			tile = unserializeTile(xmlTile);
			tile.x += 0;
			tile.y += 0;
			game.setTile( tile );
		}
		
		for each (xmlTile in xml.tiles.elements()) {
			tile = unserializeTile(xmlTile);
			tile.x += 8;
			tile.y += 0;
			game.setTile( tile );
		}
		for each (xmlTile in xml.tiles.elements()) {
			tile = unserializeTile(xmlTile);
			tile.x += 16;
			tile.y += 0;
			game.setTile( tile );
		}
		for each (xmlTile in xml.tiles.elements()) {
			tile = unserializeTile(xmlTile);
			tile.x += 24;
			tile.y += 0;
			game.setTile( tile );
		}
		
		// ROW
		for each (xmlTile in xml.tiles.elements()) {
			tile = unserializeTile(xmlTile);
			tile.x += 0;
			tile.y += 8;
			game.setTile( tile );
		}
		
		for each (xmlTile in xml.tiles.elements()) {
			tile = unserializeTile(xmlTile);
			tile.x += 8;
			tile.y += 8;
			game.setTile( tile );
		}
		
		for each (xmlTile in xml.tiles.elements()) {
			tile = unserializeTile(xmlTile);
			tile.x += 16;
			tile.y += 8;
			game.setTile( tile );
		}
		
		for each (xmlTile in xml.tiles.elements()) {
			tile = unserializeTile(xmlTile);
			tile.x += 24;
			tile.y += 8;
			game.setTile( tile );
		}
		
		// ROW
		for each (xmlTile in xml.tiles.elements()) {
			tile = unserializeTile(xmlTile);
			tile.x += 0;
			tile.y += 16;
			game.setTile( tile );
		}
		
		for each (xmlTile in xml.tiles.elements()) {
			tile = unserializeTile(xmlTile);
			tile.x += 8;
			tile.y += 16;
			game.setTile( tile );
		}
		
		for each (xmlTile in xml.tiles.elements()) {
			tile = unserializeTile(xmlTile);
			tile.x += 16;
			tile.y += 16;
			game.setTile( tile );
		}
		
		for each (xmlTile in xml.tiles.elements()) {
			tile = unserializeTile(xmlTile);
			tile.x += 24;
			tile.y += 16;
			game.setTile( tile );
		}
		
		// ROW
		for each (xmlTile in xml.tiles.elements()) {
			tile = unserializeTile(xmlTile);
			tile.x += 0;
			tile.y += 24;
			game.setTile( tile );
		}
		
		for each (xmlTile in xml.tiles.elements()) {
			tile = unserializeTile(xmlTile);
			tile.x += 8;
			tile.y += 24;
			game.setTile( tile );
		}
		
		for each (xmlTile in xml.tiles.elements()) {
			tile = unserializeTile(xmlTile);
			tile.x += 16;
			tile.y += 24;
			game.setTile( tile );
		}
		
		for each (xmlTile in xml.tiles.elements()) {
			tile = unserializeTile(xmlTile);
			tile.x += 24;
			tile.y += 24;
			game.setTile( tile );
		}
		
		return game;
	}
	
	protected static function unserializeTile (xml:XML):Tile {
		var clsTile:Class;
		var objTile:Tile;
		
		switch (xml.localName()) {
			case "grass": clsTile = Grass; break;
			
			default: throw new Error('Unknown tile type '+xml.name());
		}
		
		objTile = new clsTile ( );
		
		for each (var attribute:XML in xml.attributes()) {
			switch (attribute.localName()) {
				case "slope":
					objTile[attribute.localName()] = Slope.fromString( attribute.toString() );
					break;
				case "x": case "y": case "z":
					objTile[attribute.localName()] = parseInt(attribute.toString());
					break;
				default: throw new Error('Unknown tile attribute name '+attribute.name());
			}
		}
		
		return objTile;
	}
	
}
}