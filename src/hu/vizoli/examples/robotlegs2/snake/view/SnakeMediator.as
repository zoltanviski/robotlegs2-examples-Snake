package hu.vizoli.examples.robotlegs2.snake.view 
{
	import hu.vizoli.examples.robotlegs2.snake.controller.events.GameEvent;
	import hu.vizoli.examples.robotlegs2.snake.controller.events.SnakeEvent;
	import hu.vizoli.examples.robotlegs2.snake.model.FieldModel;
	import hu.vizoli.examples.robotlegs2.snake.model.SnakeModel;
	import robotlegs.bender.bundles.mvcs.Mediator;
	
	/**
	 * SnakeMediator
	 * 
	 * @author vizoli
	 */
	public class SnakeMediator extends Mediator 
	{
		[Inject]
		public var view:SnakeView;
		
		[Inject]
		public var snakeModel:SnakeModel;
		
		[Inject]
		public var fieldModel:FieldModel;
		
		/**
		 *  initialize
		 */
		override public function initialize():void
		{
			this.addContextListener( SnakeEvent.INIT, this.snakeEventHandler, SnakeEvent);
			this.addContextListener( SnakeEvent.MOVE, this.snakeEventHandler, SnakeEvent);
			this.addContextListener( SnakeEvent.GROWTH, this.snakeEventHandler, SnakeEvent);
			
			this.addContextListener( GameEvent.START, this.gameEventHandler, GameEvent);
			this.addContextListener( GameEvent.END, this.gameEventHandler, GameEvent);
			
			this.addViewListener( SnakeEvent.MOVEMENT_FINISHED, this.viewSnakeEventHandler, SnakeEvent);
		}
		
		/**
		 * snakeEventHandler
		 * 
		 * @param	e
		 */
		private function snakeEventHandler( e:SnakeEvent ):void 
		{
			switch ( e.type )
			{
				case SnakeEvent.INIT:
					this.view.init( snakeModel.snake, fieldModel.field );
				break;
				
				case SnakeEvent.MOVE:
					this.view.move( snakeModel.snake, fieldModel.field );
				break;
				
				case SnakeEvent.GROWTH:
					this.view.growth( snakeModel.snake.direction );
				break;
			}
		}
		
		/**
		 * gameEventHandler
		 * 
		 * @param	e
		 */
		private function gameEventHandler( e:GameEvent ):void 
		{
			switch ( e.type )
			{
				case GameEvent.START:
					this.view.move( snakeModel.snake, fieldModel.field );
				break;
				
				case GameEvent.END:
					this.view.killSnake();
				break;
			}
		}
		
		/**
		 * viewSnakeEventHandler
		 * 
		 * @param	e
		 */
		private function viewSnakeEventHandler( e:SnakeEvent ):void 
		{
			this.dispatch( e );
		}
	}

}