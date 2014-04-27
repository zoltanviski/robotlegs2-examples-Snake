package hu.vizoli.examples.robotlegs2.snake.model 
{
	import flash.geom.Point;
	import hu.vizoli.examples.robotlegs2.snake.base.BaseActor;
	import hu.vizoli.examples.robotlegs2.snake.model.constant.CSnake;
	import hu.vizoli.examples.robotlegs2.snake.model.events.SnakeModelEvent;
	import hu.vizoli.examples.robotlegs2.snake.model.vo.SnakeVO;
	
	/**
	 * SnakeModel
	 * 
	 * @author vizoli
	 */
	public class SnakeModel extends BaseActor 
	{
		private var _snakeVO:SnakeVO;
		
		//--------------------------------------------------------------------------
		//
		//  Constructor
		//
		//--------------------------------------------------------------------------
		
		/**
		 * SnakeModel
		 */
		public function SnakeModel() 
		{
			this._snakeVO 					= new SnakeVO();
			this._snakeVO.size 				= 1;
			this._snakeVO.direction 		= CSnake.DIRECTION_RIGHT;
			this._snakeVO.orientation 		= CSnake.ORIENTATION_HORIZONTAL;
			this._snakeVO.currentPosition 	= new Point( 3, 5 );
		}
		
		//--------------------------------------------------------------------------
		//
		//  Public methods
		//
		//--------------------------------------------------------------------------
		
		/**
		 * Update the current position
		 */
		public function updateCurrentPosition():void 
		{
			var newCurrentPosition:Point = new Point();
			
			switch ( this._snakeVO.direction )
			{
				case CSnake.DIRECTION_DOWN:
					newCurrentPosition.x = this._snakeVO.currentPosition.x;
					newCurrentPosition.y = this._snakeVO.currentPosition.y + 1;
				break;
				
				case CSnake.DIRECTION_UP:
					newCurrentPosition.x = this._snakeVO.currentPosition.x;
					newCurrentPosition.y = this._snakeVO.currentPosition.y - 1;
				break;
				
				case CSnake.DIRECTION_LEFT:
					newCurrentPosition.x = this._snakeVO.currentPosition.x - 1;
					newCurrentPosition.y = this._snakeVO.currentPosition.y;
				break;
				
				case CSnake.DIRECTION_RIGHT:
					newCurrentPosition.x = this._snakeVO.currentPosition.x + 1;
					newCurrentPosition.y = this._snakeVO.currentPosition.y;
				break;
			}
			
			this._snakeVO.currentPosition = newCurrentPosition;
			
			this.dispatch( new SnakeModelEvent( SnakeModelEvent.UPDATED_CURRENT_POSITION ) );
		}
		
		/**
		 * Set direction
		 * 
		 * @param	value
		 */
		public function setDirection( value:String ):void
		{ 
			if ( value != "" )
			{
				this._snakeVO.direction 	= value; 
			
				this._snakeVO.orientation 	= ( value == CSnake.DIRECTION_UP || value == CSnake.DIRECTION_DOWN ) ? CSnake.ORIENTATION_VERTICAL : CSnake.ORIENTATION_HORIZONTAL;
			}
		}
		
		//--------------------------------------------------------------------------
		//
		//  Getters / Setters
		//
		//--------------------------------------------------------------------------
		
		/**
		 * Return the snake
		 */
		public function get snake():SnakeVO { return this._snakeVO; }
	}

}