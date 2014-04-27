package hu.vizoli.examples.robotlegs2.snake.model 
{
	import hu.vizoli.examples.robotlegs2.snake.base.BaseActor;
	import hu.vizoli.examples.robotlegs2.snake.model.constant.CSnake;
	
	/**
	 * GameModel
	 * 
	 * @author vizoli
	 */
	public class GameModel extends BaseActor
	{
		private var _nextDirection:String;
		
		public function GameModel() 
		{
			this._nextDirection = CSnake.DIRECTION_RIGHT;
		}
		
		public function get nextDirection():String { return this._nextDirection; }
		
		public function set nextDirection( value:String ):void 
		{
			this._nextDirection = value;
		}
		
	}

}