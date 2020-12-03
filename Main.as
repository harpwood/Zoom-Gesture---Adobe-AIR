package
	{
	import flash.display.StageScaleMode;
	import flash.display.StageAlign;
	import flash.display.Stage;
	import flash.display.Sprite;
	import flash.display.Shape;
	import flash.events.TransformGestureEvent;
	import flash.ui.Multitouch;
	import flash.ui.MultitouchInputMode;


		
	public class Main extends Sprite{
		
			
		private var box:Shape;
		
		public function Main()
		{
			setupBox();
			
			setupTouchEvents();
		}
			
		protected function setupBox():void {
			box = new Shape();
			box.graphics.beginFill(0x000000, 1);
			box.x = stage.stageWidth/2;
			box.y = stage.stageHeight/2;
			box.graphics.drawRect(-150,-150,300,300);
			box.graphics.endFill();
			addChild(box);
		}

		protected function setupTouchEvents():void {
			Multitouch.inputMode = MultitouchInputMode.GESTURE;
			stage.addEventListener(TransformGestureEvent.
			GESTURE_ZOOM, onZoom);
		}

		protected function onZoom(e:TransformGestureEvent):void {
		box.scaleX *= e.scaleX;
		box.scaleY *= e.scaleY;
		}
	}
}