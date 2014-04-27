package hu.vizoli.examples.robotlegs2.snake.view 
{
	import flash.events.KeyboardEvent;
	import hu.vizoli.examples.robotlegs2.snake.controller.events.GameEvent;
	import robotlegs.bender.bundles.mvcs.Mediator;
	
	/**
	 * MainMediator
	 * 
	 * @author vizoli
	 */
	public class MainMediator extends Mediator 
	{
		[Inject]
		public var view:Main;
		
		//--------------------------------------------------------------------------
		//
		//  Overriden methods
		//
		//--------------------------------------------------------------------------
		
		/**
		 * @inheritDoc
		 */
		override public function initialize():void
		{
			this.view.createChildren();
			
			this.dispatch( new GameEvent( GameEvent.INIT ) );
			
			this.eventMap.mapListener( this.view.stage, KeyboardEvent.KEY_DOWN, this.keyboardEventHandler);
		}
		
		//--------------------------------------------------------------------------
		//
		//  Event handlers
		//
		//--------------------------------------------------------------------------
		
		/**
		 * KeyboardEvent handler
		 * 
		 * @param	e
		 */
		private function keyboardEventHandler( e:KeyboardEvent ):void
		{
			this.dispatch( e );
		}
		
	}

}