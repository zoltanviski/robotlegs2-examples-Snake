package hu.vizoli.examples.robotlegs2.snake.controller.commands 
{
	import hu.vizoli.examples.robotlegs2.snake.controller.events.SnakeEvent;
	import hu.vizoli.examples.robotlegs2.snake.model.SnakeModel;
	import robotlegs.bender.bundles.mvcs.Command;
	
	/**
	 * SnakeMovementFinishedCommand
	 * 
	 * @author vizoli
	 */
	public class SnakeMovementFinishedCommand extends Command 
	{
		[Inject]
    	public var event:SnakeEvent;
		
		[Inject]
    	public var snakeModel:SnakeModel;
		
		/**
		 * execute
		 */
		override public function execute():void
		{
			this.snakeModel.updateCurrentPosition();
		}
		
	}

}