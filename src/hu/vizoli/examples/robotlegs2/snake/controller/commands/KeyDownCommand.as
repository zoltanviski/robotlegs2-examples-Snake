package hu.vizoli.examples.robotlegs2.snake.controller.commands 
{
	import flash.events.KeyboardEvent;
	import hu.vizoli.examples.robotlegs2.snake.base.BaseCommand;
	import hu.vizoli.examples.robotlegs2.snake.model.constant.CSnake;
	import hu.vizoli.examples.robotlegs2.snake.model.GameModel;
	import hu.vizoli.examples.robotlegs2.snake.model.SnakeModel;
	
	/**
	 * KeyDownCommand
	 * 
	 * @author vizoli
	 */
	public class KeyDownCommand extends BaseCommand 
	{
		[Inject]
    	public var event:KeyboardEvent;
		
		[Inject]
    	public var gameModel:GameModel;
		
		[Inject]
    	public var snakeModel:SnakeModel;
		
		/**
		 * execute
		 */
		override public function execute():void
		{
			var code:uint = event.keyCode;
			switch( code )
			{
				case 37:
					this.gameModel.nextDirection = ( this.snakeModel.snake.orientation != CSnake.ORIENTATION_HORIZONTAL ) ? CSnake.DIRECTION_LEFT : this.gameModel.nextDirection;
				break;
				
				case 38:
					this.gameModel.nextDirection = ( this.snakeModel.snake.orientation != CSnake.ORIENTATION_VERTICAL) ? CSnake.DIRECTION_UP : this.gameModel.nextDirection;
				break;
			
				case 39:
					this.gameModel.nextDirection = ( this.snakeModel.snake.orientation != CSnake.ORIENTATION_HORIZONTAL ) ? CSnake.DIRECTION_RIGHT : this.gameModel.nextDirection;
				break;
			
				case 40:
					this.gameModel.nextDirection = ( this.snakeModel.snake.orientation != CSnake.ORIENTATION_VERTICAL) ? CSnake.DIRECTION_DOWN : this.gameModel.nextDirection;
				break;
			}
		}
		
	}

}