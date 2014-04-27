package hu.vizoli.examples.robotlegs2.snake.controller.commands 
{
	import hu.vizoli.examples.robotlegs2.snake.base.BaseCommand;
	import hu.vizoli.examples.robotlegs2.snake.controller.events.FieldEvent;
	import hu.vizoli.examples.robotlegs2.snake.controller.events.GameEvent;
	import hu.vizoli.examples.robotlegs2.snake.controller.events.SnakeEvent;
	import hu.vizoli.examples.robotlegs2.snake.model.FoodModel;
	
	/**
	 * InitGameCommand
	 * 
	 * @author vizoli
	 */
	public class InitGameCommand extends BaseCommand 
	{
		[Inject]
    	public var event:GameEvent;
		
		[Inject]
    	public var foodModel:FoodModel;
		
		//--------------------------------------------------------------------------
		//
		//  Overriden methods
		//
		//--------------------------------------------------------------------------
		
		/**
		 * @inheritDoc
		 */
		override public function execute():void
		{
			this.eventDispatcher.dispatchEvent( new FieldEvent( FieldEvent.INIT ) );
			
			this.eventDispatcher.dispatchEvent( new SnakeEvent( SnakeEvent.INIT ) );
			
			this.eventDispatcher.dispatchEvent( new GameEvent( GameEvent.START ) );
			
			this.foodModel.generateFood();
		}
		
	}

}