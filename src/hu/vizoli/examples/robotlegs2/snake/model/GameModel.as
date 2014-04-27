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
		
		//--------------------------------------------------------------------------
		//
		//  Constructor
		//
		//--------------------------------------------------------------------------
		
		/**
		 * GameModel
		 */
		public function GameModel() 
		{
			this._nextDirection = CSnake.DIRECTION_RIGHT;
		}
		
		//--------------------------------------------------------------------------
		//
		//  Getters / Setters
		//
		//--------------------------------------------------------------------------
		
		/**
		 * Return the next direction
		 */
		public function get nextDirection():String { return this._nextDirection; }
		
		/**
		 * @private 
		 */
		public function set nextDirection( value:String ):void 
		{
			this._nextDirection = value;
		}
		
	}

}