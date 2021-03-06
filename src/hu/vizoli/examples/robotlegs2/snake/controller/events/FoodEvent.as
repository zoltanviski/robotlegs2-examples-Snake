package hu.vizoli.examples.robotlegs2.snake.controller.events
{
	import flash.events.Event;
	
	/**
	 * FoodEvent
	 * 
	 * @author vizoli
	 */
	public class FoodEvent extends Event
	{
		public static const CREATE:String = "create";
		
		//--------------------------------------------------------------------------
		//
		//  Constructor
		//
		//--------------------------------------------------------------------------
		
		/**
		 * FoodEvent
		 * 
		 * @param 	type
		 */
		public function FoodEvent( type:String )
		{
			super(type);
		}
		
		//--------------------------------------------------------------------------
		//
		//  Overriden methods
		//
		//--------------------------------------------------------------------------
		
		/**
		 * @inheritDoc
		 */
		override public function clone():Event
		{
			return new FoodEvent( type );
		}
		
	}
	
}