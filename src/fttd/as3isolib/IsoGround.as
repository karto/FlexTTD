package fttd.as3isolib {
import as3isolib.display.IsoSprite;
import as3isolib.display.scene.IsoScene;

import flash.display.Bitmap;
import flash.text.TextField;
import flash.text.TextFieldAutoSize;
import flash.text.TextFormat;

import fttd.Game;
import fttd.bitmap.Manager;
import fttd.tile.Tile;

//use namespace as3isolib_internal;

/**
 * IsoGrid provides a display grid in the X-Y plane.
 */
public class IsoGround extends IsoScene {
	
	public static const TILE_WIDTH:int = 256;
	public static const TILE_LENGTH:int = 128;
	public static const TILE_HEIGHT:int = 32;
	
	public var zoom:int = 2;
	
	public var game:Game;
	
	//	CREATE
	////////////////////////////////////////////////////////////////////////
	
	/**
	 * Initialization method to create the child IContainer objects.
	 */
	override protected function createChildren ():void {
		super.createChildren();
		
		var sprite:IsoSprite;
		var bitmap:Bitmap;
		
		var markup:Number = 1.0 / Math.pow(2, zoom);
		
		for each(var tile:Tile in game.tiles) {
			sprite = new IsoSprite();
			sprite.moveTo(tile.x * TILE_LENGTH * markup, tile.y * TILE_LENGTH * markup, tile.z * TILE_HEIGHT * markup);
			
			bitmap = getBitmapFromSpriteId(tile.getSpriteId(), zoom);
			bitmap.cacheAsBitmap = true;
			
			if (0) sprite.sprites = [bitmap, debugField(tile)];
			else sprite.sprites = [bitmap];
			
			addChild(sprite);
		}
		
	}
	
	
	////////////////////////////////////////////////////
	//	CONSTRUCTOR
	////////////////////////////////////////////////////
	/**
	 * Constructor
	 */
	public function IsoGround (game:Game) {
		this.game = game;
		super();
	}
	public function dis_IsoGround (descriptor:Object = null):void {
		//super(descriptor);
		
		if ( ! descriptor) {
		}
	}
	
	/**
	 * @inheritDoc
	 */
	override protected function renderLogic (recursive:Boolean = true):void {
		super.renderLogic(recursive);
	}
	
	
	////////////////////////////////////////////////////
	//	Load bitmap
	////////////////////////////////////////////////////
	public function getBitmapFromSpriteId (SpriteId:int, zoom:int):Bitmap {
		var srcBitmap:Bitmap = Manager.getKey(SpriteId+'_z'+zoom);
		var dstBitmap:Bitmap = new Bitmap( srcBitmap.bitmapData );
		dstBitmap.cacheAsBitmap = true;
		dstBitmap.x = srcBitmap.x;
		dstBitmap.y = srcBitmap.y;
		return dstBitmap;
	}
	
	
	
	protected function debugField (tile:Tile):TextField {
		var debugField:TextField = new TextField();
		debugField.defaultTextFormat = new TextFormat(null, 11, 0x000000, false);
		debugField.autoSize = TextFieldAutoSize.CENTER;
		debugField.backgroundColor = 0xffffff;
		debugField.background = true;
		debugField.borderColor = 0x0;
		debugField.border = true;
		debugField.text = tile.x +" x "+ tile.y +" z "+ tile.z +"\n"+tile.getSpriteId()+"_z"+zoom;
		debugField.x = -20;
		debugField.y = 5;
		return debugField;
	}
	
	
	
	
}
}