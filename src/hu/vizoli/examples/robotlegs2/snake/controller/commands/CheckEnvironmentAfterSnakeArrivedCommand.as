package hu.vizoli.examples.robotlegs2.snake.controller.commands 
{
	import hu.vizoli.examples.robotlegs2.snake.base.BaseCommand;
	import hu.vizoli.examples.robotlegs2.snake.controller.events.GameEvent;
	import hu.vizoli.examples.robotlegs2.snake.controller.events.SnakeEvent;
	import hu.vizoli.examples.robotlegs2.snake.model.constant.CSnake;
	import hu.vizoli.examples.robotlegs2.snake.model.events.SnakeModelEvent;
	import hu.vizoli.examples.robotlegs2.snake.model.FieldModel;
	import hu.vizoli.examples.robotlegs2.snake.model.FoodModel;
	import hu.vizoli.examples.robotlegs2.snake.model.GameModel;
	import hu.vizoli.examples.robotlegs2.snake.model.SnakeModel;
	import robotlegs.bender.bundles.mvcs.Command;
	
	/**
	 * CheckEnvironmentAfterSnakeArrivedCommand
	 * 
	 * @author vizoli
	 */
	public class CheckEnvironmentAfterSnakeArrivedCommand extends BaseCommand 
	{
		[Inject]
    	public var event:SnakeModelEvent;
		
		[Inject]
    	public var snakeModel:SnakeModel;
		
		[Inject]
    	public var gameModel:GameModel;
		
		[Inject]
    	public var fieldModel:FieldModel;
		
		[Inject]
    	public var foodModel:FoodModel;
		
		/**
		 * execute
		 */
		override public function execute():void
		{
			this.snakeModel.setDirection( this.gameModel.nextDirection );
			
			this.checkInField( this.gameModel.nextDirection );
			
			this.checkReachFood( this.gameModel.nextDirection );
		}
		
		/**
		 * checkReachFood
		 * 
		 * @param	direction
		 */
		private function checkReachFood( direction:String ):Boolean
		{
			switch ( this.gameModel.nextDirection )
			{
				case CSnake.DIRECTION_DOWN:
					if ( this.snakeModel.snake.currentPosition.x == this.foodModel.food.position.x )
					{
						if ( this.snakeModel.snake.currentPosition.y == ( this.foodModel.food.position.y - 1 ) )
						{
							this.foodModel.generateFood();
							this.eventDispatcher.dispatchEvent( new SnakeEvent( SnakeEvent.GROWTH ) );
							
							return true;
						}
					}
				break;
				
				case CSnake.DIRECTION_UP:
					if ( this.snakeModel.snake.currentPosition.x == this.foodModel.food.position.x )
					{
						if ( this.snakeModel.snake.currentPosition.y == ( this.foodModel.food.position.y + 1 ) )
						{
							this.foodModel.generateFood();
							this.eventDispatcher.dispatchEvent( new SnakeEvent( SnakeEvent.GROWTH ) );
							
							return true;
						}
					}
				break;
				
				case CSnake.DIRECTION_LEFT:
					if ( this.snakeModel.snake.currentPosition.y == this.foodModel.food.position.y )
					{
						if ( this.snakeModel.snake.currentPosition.x == ( this.foodModel.food.position.x + 1 ) )
						{
							this.foodModel.generateFood();
							this.eventDispatcher.dispatchEvent( new SnakeEvent( SnakeEvent.GROWTH ) );
							
							return true;
						}
					}
				break;
				
				case CSnake.DIRECTION_RIGHT:
					if ( this.snakeModel.snake.currentPosition.y == this.foodModel.food.position.y )
					{
						if ( this.snakeModel.snake.currentPosition.x == ( this.foodModel.food.position.x - 1 ) )
						{
							this.foodModel.generateFood();
							this.eventDispatcher.dispatchEvent( new SnakeEvent( SnakeEvent.GROWTH ) );
							
							return true;
						}
					}
				break;
			}
			
			return false;
		}
		
		/**
		 * Check that the snake in field or not
		 * 
		 * @param	direction
		 */
		private function checkInField( direction:String ):Boolean
		{
			switch ( this.gameModel.nextDirection )
			{
				case CSnake.DIRECTION_DOWN:
					if ( this.snakeModel.snake.currentPosition.y < ( this.fieldModel.field.rowCount - 1 ) )
					{
						this.eventDispatcher.dispatchEvent( new SnakeEvent( SnakeEvent.MOVE ) );
						
						return true;
					}
				break;
				
				case CSnake.DIRECTION_UP:
					if ( this.snakeModel.snake.currentPosition.y > 0 )
					{
						this.eventDispatcher.dispatchEvent( new SnakeEvent( SnakeEvent.MOVE ) );
						
						return true;
					}
				break;
				
				case CSnake.DIRECTION_LEFT:
					if ( this.snakeModel.snake.currentPosition.x > 0 )
					{
						this.eventDispatcher.dispatchEvent( new SnakeEvent( SnakeEvent.MOVE ) );
						
						return true;
					}
				break;
				
				case CSnake.DIRECTION_RIGHT:
					if ( this.snakeModel.snake.currentPosition.x < ( this.fieldModel.field.coloumnCount - 1 ) )
					{
						this.eventDispatcher.dispatchEvent( new SnakeEvent( SnakeEvent.MOVE ) );
						
						return true;
					}
				break;
			}
			
			this.eventDispatcher.dispatchEvent( new GameEvent( GameEvent.END ) );
			
			return false;
		}
		
	}

}