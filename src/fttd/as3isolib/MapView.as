package fttd.as3isolib {

import as3isolib.display.IsoView;
import as3isolib.display.scene.IIsoScene;
import as3isolib.display.scene.IsoScene;
import as3isolib.geom.Pt;

import flash.events.Event;
import flash.events.MouseEvent;
import flash.geom.Point;

import fttd.events.MapEvent;

public class MapView extends IsoView {
	
	// previous mouse position when dragging 
	protected var pmouse:Point;
	
	// for pan events
	protected var startPan:Pt;
	public var panning:Boolean;
	
	protected var draggable:Boolean = true;;
	
	/*
	 * Properties is dirty
	 */
	// setting this.dirty = true will request an Event.RENDER
	protected var _dirty:Boolean;
	
	protected function get dirty():Boolean {
		return _dirty;
	}

	protected function set dirty(value:Boolean):void {
		_dirty = value;
		if (_dirty) {
			//if (stage) stage.invalidate();
		}
	}
	

	public function MapView() {
		super();
		addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
		doubleClickEnabled = true;
		
	}
	
	/*
	 * Event handler
	 */
	private function onAddedToStage(event:Event):void {
		if (draggable) addEventListener(MouseEvent.MOUSE_DOWN, mousePressed, true);
		addEventListener(Event.RENDER, onRender);
		addEventListener(Event.ENTER_FRAME, onEnterFrame);
		addEventListener(Event.REMOVED_FROM_STAGE, onRemovedFromStage);
		removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
	}
	
	private function onRemovedFromStage(event:Event):void {
		if (hasEventListener(MouseEvent.MOUSE_DOWN)) removeEventListener(MouseEvent.MOUSE_DOWN, mousePressed, true);
		removeEventListener(Event.RENDER, onRender);
		removeEventListener(Event.ENTER_FRAME, onEnterFrame);
		removeEventListener(Event.REMOVED_FROM_STAGE, onRemovedFromStage);
		addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
	}
	
	
	/** processes the tileQueue and optionally outputs stats into debugField */
	protected function onEnterFrame(event:Event=null):void {
		
	}
	
	protected function onRendered():void {
		// listen out for this if you want to be sure map is in its final state before reprojecting markers etc.
		dispatchEvent(new MapEvent(MapEvent.RENDERED));
	}
	
	protected function onPanned():void {
		var pt:Point = currentPt.clone();
		dispatchEvent(new MapEvent(MapEvent.PANNED, pt.subtract(startPan)));			
	}
	
	protected function onRender(event:Event=null):void {
		if (panning) {
			(scenes[1] as IsoScene).render();
		}
		if (!dirty || !stage) {
			onRendered();
			return;
		}
		if (panning) {
			onPanned();
		}
		onRendered();
		dirty = false;
	}
	
	/*
	 * Event handler mouse
	 */
	public function mousePressed(event:MouseEvent):void {
		prepareForPanning(true);
		pmouse = new Point(event.stageX, event.stageY);
		stage.addEventListener(MouseEvent.MOUSE_MOVE, mouseDragged);
		stage.addEventListener(MouseEvent.MOUSE_UP, mouseReleased);
		stage.addEventListener(Event.MOUSE_LEAVE, mouseReleased);
	}

	public function mouseReleased(event:Event):void {
		stage.removeEventListener(MouseEvent.MOUSE_MOVE, mouseDragged);
		stage.removeEventListener(MouseEvent.MOUSE_UP, mouseReleased);
		stage.removeEventListener(Event.MOUSE_LEAVE, mouseReleased);
		donePanning();
		if (event is MouseEvent) {
			MouseEvent(event).updateAfterEvent();
			
		} else if (event.type == Event.MOUSE_LEAVE) {
			//onRender();
		}
	}
	
	public function mouseDragged(event:MouseEvent):void {
		var mousePoint:Point = new Point(event.stageX, event.stageY);
		pan( -(mousePoint.x - pmouse.x) ,  -(mousePoint.y - pmouse.y));
		pmouse = mousePoint;
		event.updateAfterEvent();
		
		
		for each (var scene:IIsoScene in scenesArray) scene.render();
	}	


	/*
	 * Event handler panning
	 */
	public function prepareForPanning(dragging:Boolean=false):void {
		
		if (panning) donePanning();
		
		if ( ! dragging && draggable && 
				hasEventListener(MouseEvent.MOUSE_DOWN)) removeEventListener(MouseEvent.MOUSE_DOWN, mousePressed, true);
		
		startPan = currentPt.clone() as Pt;
		panning = true;
		onStartPanning();
	}
	
	protected function onStartPanning():void
	{
		dispatchEvent(new MapEvent(MapEvent.START_PANNING));
	}
	
	public function donePanning():void
	{
		if (draggable && 
		    ! hasEventListener(MouseEvent.MOUSE_DOWN)) addEventListener(MouseEvent.MOUSE_DOWN, mousePressed, true);
		
		startPan = null;
		panning = false;
		onStopPanning();
	}
	
	protected function onStopPanning():void
	{
		dispatchEvent(new MapEvent(MapEvent.STOP_PANNING));
	}
	
	
	
	
	
} // End class
} // End package