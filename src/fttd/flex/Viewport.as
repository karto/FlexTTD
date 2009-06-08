package fttd.flex {

import as3isolib.core.ClassFactory;
import as3isolib.display.IsoView;
import as3isolib.display.renderers.DefaultViewRenderer;
import as3isolib.display.renderers.ViewBoundsRenderer;
import as3isolib.display.scene.IsoGrid;
import as3isolib.display.scene.IsoScene;
import as3isolib.geom.Pt;

import flash.display.DisplayObject;
import flash.events.Event;
import flash.events.MouseEvent;
import flash.geom.Point;

import fttd.Config;
import fttd.Game;
import fttd.as3isolib.IsoGround;
import fttd.as3isolib.PartialView;

import mx.core.UIComponent;
import mx.events.FlexEvent;
import mx.events.ResizeEvent;

public class Viewport extends UIComponent {
	
	public var game:Game;
	
	protected var _view:IsoView;
	public function set view(value:IsoView):void { _view = value; }
	public function get view():IsoView {
		if ( ! _view) {
			view = new PartialView ();
			view.clipContent = false;
			view.centerOnPt(new Pt(Config.TILE_SIZE * 5, Config.TILE_SIZE * 5));
			//view.viewRenderers = [new ClassFactory(DefaultViewRenderer), new ClassFactory(ViewBoundsRenderer)];
			//view.viewRenderers = [new ClassFactory(GroundViewRenderer), new ClassFactory(DefaultViewRenderer), new ClassFactory(ViewBoundsRenderer)];
			//view.viewRenderers = [new ClassFactory(GroundViewRenderer)];
			view.addScene(scene); //look in the future to be able to add more scenes
    	view.addScene(ground);
    }
		return _view;
	}
	
	protected var _scene:IsoScene;
	public function set scene(value:IsoScene):void { _scene = value; }
	public function get scene():IsoScene {
		if ( ! _scene) {
			scene = new IsoScene();
			var grid:IsoGrid = new IsoGrid ();
			grid.cellSize = Config.TILE_SIZE;
			grid.setGridSize(16, 16);
			scene.addChild(grid);
		}
		return _scene;
	}
	
	protected var _ground:IsoGround;
	public function set ground(value:IsoGround):void { _ground = value; }
	public function get ground():IsoGround {
		if ( ! _ground) {
			ground = new IsoGround ();
			ground.view = view;
			ground.setGridSize(32, 32);
			
			//ground.layoutRenderer = new ClassFactory(DefaultSceneLayoutRenderer);
			//ground.styleRenderers = [new ClassFactory(WorldSceneRenderer)];
		}
		return _ground;
	}
	
	
	
	protected var draggable:Boolean = true;
	
	protected var viewSizeDirty:Boolean = false;
	
	
	public function Viewport() {
		super();
		
		addChild(view);
    
		//addEventListener(FlexEvent.CREATION_COMPLETE, creationCompleteHandler);
		addEventListener(FlexEvent.CREATION_COMPLETE, onCreationComplete);
		
	}
	
	protected function onCreationComplete (event:FlexEvent):void {
		trace("creation complete "+event);
		ground.game = game;
	  onAddedToStage(event);
		view.setSize(sizeAjuster.width, sizeAjuster.height);
    //view.centerOnPt(new Pt(Config.TILE_SIZE * 5, Config.TILE_SIZE * 5));
    //stage.render();
    //view.render(true);
    viewSizeDirty = true;
    onRender(null);
    ground.render();
    
			view.render(true);
			view.pan( 1, 1);
			ground.render();
    
			view.render(true);
			ground.render();
    
			view.render(true);
			
  }
	
	protected var sizeAjuster:DisplayObject;
	
	/*
	 * Event handler
	 */
	private function onAddedToStage(event:Event):void {
		if (0 != width && 0 != height) sizeAjuster = this;
		else if (mask && 0 != mask.width && 0 != mask.height) sizeAjuster = mask;
		else sizeAjuster = parent;
		viewSizeDirty = true;
		sizeAjuster.addEventListener(ResizeEvent.RESIZE, onResize);
		
		//addEventListener(Event.RENDER, onRender);
		//addEventListener(Event.ENTER_FRAME, onEnterFrame);
		
		addEventListener(MouseEvent.MOUSE_DOWN, mousePressed, true);
		
		addEventListener(Event.REMOVED_FROM_STAGE, onRemovedFromStage);
		removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
		
	}
	
	private function onRemovedFromStage(event:Event):void {
		sizeAjuster.removeEventListener(ResizeEvent.RESIZE, onResize);
		sizeAjuster = null;
		
		//removeEventListener(Event.RENDER, onRender);
		//removeEventListener(Event.ENTER_FRAME, onEnterFrame);
		
		if (hasEventListener(MouseEvent.MOUSE_DOWN)) removeEventListener(MouseEvent.MOUSE_DOWN, mousePressed, true);
		
		removeEventListener(Event.REMOVED_FROM_STAGE, onRemovedFromStage);
		addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
	}
	
	
	protected function onResize(event:ResizeEvent):void {
		//viewSizeDirty = true;
		view.setSize(sizeAjuster.width, sizeAjuster.height);
		view.render();
		
		return;
		//resetViewSizeAndPosition();
		var wDiff:int = (event.currentTarget as UIComponent).width - event.oldWidth;
		var hDiff:int = (event.currentTarget as UIComponent).height - event.oldHeight; 
		view.setSize(view.width + wDiff, view.height + hDiff);
		if ( ! width && ! height) {
			view.x = -(view.width / 2);
			view.y = -(view.height / 2);
		}
		view.render(true);
	}
	
	protected function onRender(event:Event=null):void {
		if (viewSizeDirty) {
			viewSizeDirty = false;
			view.setSize(sizeAjuster.width, sizeAjuster.height);
		
			var d:Date = new Date();
			trace('Viewport onRender '+d.hours+"."+d.minutes+"."+d.seconds+"."+d.milliseconds);
			
			view.render(true);
		}
		
		
		return;
		removeEventListener(Event.RENDER, onRender);
		
		resetViewSizeAndPosition();
		view.addScene(scene);
		view.addScene(ground);
		
		//view.centerOnPt(new Pt(Config.TILE_SIZE * 3, Config.TILE_SIZE * 3));
	
		view.render(true);
	}
	
	protected function onEnterFrame(event:Event=null):void {
		var d:Date = new Date();
		//trace('Viewport onEnterFrame '+d.hours+"."+d.minutes+"."+d.seconds+"."+d.milliseconds);
	}
	
	// previous mouse position when dragging 
	protected var previousMousePoint:Point;
	protected function mousePressed(event:MouseEvent=null):void {
		if ( ! draggable) return;
		previousMousePoint = new Point(event.stageX, event.stageY);
		stage.addEventListener(MouseEvent.MOUSE_MOVE, mouseDragged);
		stage.addEventListener(MouseEvent.MOUSE_UP, mouseReleased);
		stage.addEventListener(Event.MOUSE_LEAVE, mouseReleased);
	}
	public function mouseDragged(event:MouseEvent):void {
		var mousePoint:Point = new Point(event.stageX, event.stageY);
		view.pan( -(mousePoint.x - previousMousePoint.x) ,  -(mousePoint.y - previousMousePoint.y));
		previousMousePoint = mousePoint;
		//event.updateAfterEvent();
		//for each (var scene:IIsoScene in scenesArray) scene.render();
		view.render(true);
	}	
	public function mouseReleased(event:Event):void {
		stage.removeEventListener(MouseEvent.MOUSE_MOVE, mouseDragged);
		stage.removeEventListener(MouseEvent.MOUSE_UP, mouseReleased);
		stage.removeEventListener(Event.MOUSE_LEAVE, mouseReleased);
		// if (event is MouseEvent) MouseEvent(event).updateAfterEvent();
		//else if (event.type == Event.MOUSE_LEAVE) onRender();
	}
	
	
	/**
	 * Add iso view to container
	 */
	override protected function createChildren():void {
		super.createChildren();
		
	}
	
	
	protected function resetViewSizeAndPosition ():void {
		// Compensate for border in container / mask
		var comp:int = 0;
		
		if (width && height) {
			view.setSize(width +comp, height +comp);
			//view.x = x;
			//view.y = y;
			view.x = view.y = 0;
			//view.x = - (width +comp) / 2;
			//view.y = - (height +comp) / 2;
		
		} else if (mask) {
			view.setSize(mask.width +comp, mask.height +comp);
			view.x = - (mask.width +comp) / 2;
			view.y = - (mask.height +comp) / 2;
		}
		
	}
	
	
	public function zoomIn ():void {
		throw new Error('Not implemented');
	}
	public function zoomOut ():void {
		throw new Error('Not implemented');
	}
	
	
}
}