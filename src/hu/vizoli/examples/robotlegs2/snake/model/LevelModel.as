package hu.vizoli.examples.robotlegs2.snake.model 
{
	import hu.vizoli.examples.robotlegs2.snake.base.BaseActor;
	
	/**
	 * LevelModel
	 * 
	 * @author vizoli
	 */
	public class LevelModel extends BaseActor
	{
		private var _currentLevel:uint = 1;
		
		//--------------------------------------------------------------------------
		//
		//  Getters / Setters
		//
		//--------------------------------------------------------------------------
		
		/**
		 * Return the current level
		 */
		public function get currentLevel():uint 
		{
			return this._currentLevel;
		}
		
		/**
		 * @private
		 */
		public function set currentLevel( value:uint ):void 
		{
			this._currentLevel = value;
		}
		
	}

}