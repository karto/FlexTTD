package fttd.flex
{
import as3isolib.core.ClassFactory;
import as3isolib.display.IsoSprite;
import as3isolib.display.IsoView;
import as3isolib.display.primitive.IsoBox;
import as3isolib.display.renderers.DefaultViewRenderer;
import as3isolib.display.renderers.ViewBoundsRenderer;
import as3isolib.display.scene.IsoGrid;
import as3isolib.display.scene.IsoScene;
import as3isolib.geom.Pt;

import flash.display.Bitmap;
import flash.display.Loader;
import flash.display.LoaderInfo;
import flash.events.Event;
import flash.net.URLRequest;

import fttd.Game;
import fttd.as3isolib.IsoGround;
import fttd.as3isolib.MapView;

import mx.core.UIComponent;
import mx.events.FlexEvent;

public class IsoViewComponent extends UIComponent {
	
	private var loader:Loader;
	public var scene:IsoScene;
	public var view:IsoView;
	public var bitmap:Bitmap;
	public var mapView:MapView;
	
	public var game:Game;
	
	public var ground:IsoGround;
	
	public function IsoViewComponent() {
		super();
		
		addEventListener(FlexEvent.CREATION_COMPLETE, creationCompleteHandler);
		addEventListener(Event.ENTER_FRAME, enterFrameHandler);
	}
	
	protected function creationCompleteHandler (event:Event):void {
		ground = new IsoGround(game);
		//ground.game = game;
		//scene.addChild(ground);
		mapView.addScene(ground);
		ground.render();
		scene.render();
		mapView.render();
		ground.render();
	}
	
	protected function enterFrameHandler (event:Event):void {
		if (mapView) mapView.render();
		if (ground) ground.render();
	}
	
	override protected function createChildren():void {
		//buildScene ();
		//loadAssets();
		
		//var app:IsoApplication = new IsoApplication();
		//addChild(app);
		
		var cellSize:int = 128/4;
		
		//var ground:IsoGround = new IsoGround({game: game});
		//ground.cellSize = cellSize;
		//ground.setGroundSize(4, 4);
		//scene.addChild(ground);
		
		mapView = new MapView();
		mapView.setSize(800, 600);
		mapView.x = -400;
		mapView.y = -300;
		mapView.clipContent = false;
		
		//var pt:Pt = new Pt(15, 15);
		//mapView.centerOnPt(new Pt(2*cellSize, 2*cellSize));
		mapView.centerOnPt(new Pt(128*3, 128*3));
		//view.centerOnIso(box);
		//mapView.zoom(.5);
		
		scene = new IsoScene();
		
		//var factory:IFactory = new ClassFactory(DefaultShadowRenderer);
		//factory.properties = {shadowColor:0xFF0000, shadowAlpha:1.0, drawAll:false};
		//scene.styleRenderers = [factory];
		
		mapView.viewRenderers = [new ClassFactory(DefaultViewRenderer), new ClassFactory(ViewBoundsRenderer)];

		mapView.addScene(scene);
		
		var grid:IsoGrid = new IsoGrid();
		grid.cellSize = cellSize;
		grid.setGridSize(8, 8);
		scene.addChild(grid);
		
		//view = new IsoView();
		//scene.render();
		
		addChild(mapView);
	}
	
	private function loadAssets ():void {
		loader = new Loader();
		//loader.contentLoaderInfo.addEventListener(Event.INIT, loader_initHandler);
		loader.contentLoaderInfo.addEventListener(Event.COMPLETE, function (event:Event):void {
			// Get the loader.
			var loader:Loader = (event.target as LoaderInfo).loader as Loader;
			
			// Get the loaded Bitmap.
			bitmap = LoaderInfo(event.target).content as Bitmap;
			bitmap.smoothing = true;
			
			//bitmap.x = -(bitmap.width / 2);
			//bitmap.y = -(bitmap.height / 2);
			bitmap.x = -124;
			bitmap.y = -6;
			
			
			buildScene();
			
		});
		//loader.load(new URLRequest("http://localhost/FlexTTD/Sprites/Ben_Robbins_Bare_NoLines_32xz/sprites/trg1r/3924_z0.png"));
		loader.load(new URLRequest("http://localhost/FlexTTD/Sprites/Ben_Robbins_Temperate_NoLines_32xz/sprites/trg1r/3981_z0.png"));
		
	}	
	protected function buildScene ():void {
		
		//var box:IsoBox = new IsoBox();
		//box.setSize(25, 25, 10);
		//box.moveTo(25, 25, 0);
		/*
		var box0:IsoBox = new IsoBox();
		box0.setSize(25, 25, 25);
		box0.moveTo(200, 0, 0);
		
		var box1:IsoBox = new IsoBox();
		box1.width = 10;
		box1.length = 25;
		box1.height = 50;
		box1.moveTo(230, -15, 20);
		
		var box2:IsoBox = new IsoBox();
		box2.setSize(10, 50, 5);
		box2.moveTo(200, 30, 10);
		*/
		var cellSize:int = 128;
		
		var grid:IsoGrid = new IsoGrid();
		grid.setGridSize(4, 4);
		grid.cellSize = cellSize;
		
		//var ground:IsoGround = new IsoGround();
		//ground.cellSize = 32;
		//ground.setGroundSize(9, 9);
		
		
		
		scene = new IsoScene();
		//scene.layoutEnabled = false;
		//scene.addChild(box);
		//scene.addChild(ground);
		scene.addChild(grid);
		/*
    scene.addChild(box2);
    scene.addChild(box1);
    scene.addChild(box0);
    */
    //addIsoLimitFigure(scene);
    
    //var rect:IsoRectangle = new IsoRectangle();
    //rect.moveTo(32, 32, 0);
    //rect.setSize(32, 32, 32);
    
  	var s0:IsoSprite;
  	var b:Bitmap;
  	for(var x:int = 0; x < 10; ++x) {
    	for(var y:int = 0; y < 10; ++y) {
    	
		    s0 = new IsoSprite();
		    s0.setSize(64, 64, 0);
		    s0.moveTo(x * cellSize *1.1, y * cellSize*1.1, 0);
		    b = new Bitmap(bitmap.bitmapData);
				b.cacheAsBitmap = true;
				b.x = bitmap.x;
				b.y = bitmap.y;
				s0.sprites = [b];
		    scene.addChild(s0);
		  }
  	}
  	
    scene.render();
		
		view = new IsoView();
		view.setSize(800, 600);
		view.x = -400;
		view.y = -300;
		view.addScene(scene);
		//view.clipContent = false;
		//var pt:Pt = new Pt(15, 15);
		view.centerOnPt(new Pt(2*cellSize, 2*cellSize));
		//view.centerOnPt(new Pt(5, 5));
		//view.centerOnIso(box);
		view.zoom(.5);
		
		
		addChild(view);
		
	
	}
	
	public function addIsoLimitFigure(scene:IsoScene):void {
	  var box0:IsoBox = new IsoBox();
	  box0.setSize(50, 25, 25);
	  box0.moveTo(200, 0, 0);
	  
	  var box1:IsoBox = new IsoBox();
	  box1.width = 25;
	  box1.length = 50;
	  box1.height = 25;
	  box1.moveTo(249, 24, 0); // <--- noticed 249 instead of 250? and noticed 24 instead of 25?
	  
	  var box2:IsoBox = new IsoBox();
	  box2.setSize(25, 25, 50);
	  box2.moveTo(249, 73, 24); // <--- also noticed 73 instead of 75?
	  
	  scene.addChild(box2);
	  scene.addChild(box1);
	  scene.addChild(box0);
	}
}
}