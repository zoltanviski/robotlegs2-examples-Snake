package hu.vizoli.examples.robotlegs2.snake.model.events
{
	import flash.events.Event;
	
	/**
	 * SnakeModelEvent
	 * 
	 * @author vizoli
	 */
	public class SnakeModelEvent extends Event
	{
		public static const UPDATED_CURRENT_POSITION:String = "updatedCurrentPosition";
		
		//--------------------------------------------------------------------------
		//
		//  Constructor
		//
		//--------------------------------------------------------------------------
		
		/**
		 * SnakeModelEvent
		 * 
		 * @param 	type
		 */
		public function SnakeModelEvent( type:String )
		{
			super(type);
		}
		
		//--------------------------------------------------------------------------
		//
		//  Overriden methods
		//
		//--------------------------------------------------------------------------
		
		/**
		 * Clone the event
		 */
		override public function clone():Event
		{
			var event:SnakeModelEvent = new SnakeModelEvent( type );
			
			return event;
		}
		
	}
	
}