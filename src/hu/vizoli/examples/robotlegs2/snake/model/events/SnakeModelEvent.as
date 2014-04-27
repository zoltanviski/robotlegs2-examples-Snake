package hu.vizoli.examples.robotlegs2.snake.model.events
{
	import flash.events.Event;
	import hu.vizoli.examples.robotlegs2.snake.model.vo.SnakeVO;
	
	/**
	 * SnakeModelEvent
	 * 
	 * @author vizoli
	 */
	public class SnakeModelEvent extends Event
	{
		public static const UPDATED_CURRENT_POSITION:String = "updatedCurrentPosition";
		
		/**
		 * SnakeModelEvent
		 * 
		 * @param 	type
		 */
		public function SnakeModelEvent( type:String )
		{
			super(type);
		}
		
		/**
		 * clone
		 */
		override public function clone():Event
		{
			var event:SnakeModelEvent = new SnakeModelEvent( type );
			
			return event;
		}
		
	}
	
}