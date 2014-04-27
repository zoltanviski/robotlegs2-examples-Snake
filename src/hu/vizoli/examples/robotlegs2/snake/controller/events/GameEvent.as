package hu.vizoli.examples.robotlegs2.snake.controller.events
{
	import flash.events.Event;
	
	/**
	 * GameEvent
	 * 
	 * @author vizoli
	 */
	public class GameEvent extends Event
	{
		public static const INIT:String 	= "init";
		public static const START:String 	= "start";
		public static const END:String 		= "end";
		
		//--------------------------------------------------------------------------
		//
		//  Constructor
		//
		//--------------------------------------------------------------------------
		
		/**
		 * GameEvent
		 * 
		 * @param 	type
		 */
		public function GameEvent( type:String )
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
			return new GameEvent( type );
		}
		
	}
	
}