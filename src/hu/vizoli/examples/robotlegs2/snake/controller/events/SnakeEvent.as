package hu.vizoli.examples.robotlegs2.snake.controller.events
{
	import flash.events.Event;
	import hu.vizoli.examples.robotlegs2.snake.model.vo.SnakeVO;
	
	/**
	 * SnakeEvent
	 * 
	 * @author vizoli
	 */
	public class SnakeEvent extends Event
	{
		public static const INIT:String 				= "init";
		public static const MOVEMENT_FINISHED:String 	= "movementFinished";
		public static const MOVE:String 				= "move";
		public static const GROWTH:String 				= "growth";
		
		public var snakeVO:SnakeVO;
		
		/**
		 * SnakeEvent
		 * 
		 * @param 	type
		 */
		public function SnakeEvent( type:String )
		{
			super(type);
			
			this.snakeVO = snakeVO;
		}
		
		/**
		 * clone
		 */
		override public function clone():Event
		{
			var event:SnakeEvent = new SnakeEvent( type );
			event.snakeVO = snakeVO;
			
			return event;
		}
		
	}
	
}