package hu.vizoli.examples.robotlegs2.snake.controller.events
{
	import flash.events.Event;
	
	/**
	 * FieldEvent
	 * 
	 * @author vizoli
	 */
	public class FieldEvent extends Event
	{
		public static const INIT:String = "init";
		
		//--------------------------------------------------------------------------
		//
		//  Constructor methods
		//
		//--------------------------------------------------------------------------
		
		/**
		 * FieldEvent
		 * 
		 * @param 	type
		 */
		public function FieldEvent( type:String )
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
			return new FieldEvent( type );
		}
		
	}
	
}