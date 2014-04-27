package hu.vizoli.examples.robotlegs2.snake.view 
{
	import flash.display.Sprite;
	import hu.vizoli.examples.robotlegs2.snake.base.BaseView;
	import hu.vizoli.examples.robotlegs2.snake.model.constant.CSnake;
	
	/**
	 * SnakePartView
	 * 
	 * @author vizoli
	 */
	public class SnakePartView extends BaseView 
	{
		private var _part:Sprite;
		
		//--------------------------------------------------------------------------
		//
		//  Constructor
		//
		//--------------------------------------------------------------------------
		
		/**
		 * SnakePartView
		 */
		public function SnakePartView() 
		{
			
		}
		
		//--------------------------------------------------------------------------
		//
		//  Public methods
		//
		//--------------------------------------------------------------------------
		
		/**
		 * Init
		 * 
		 * @param	partType
		 */
		public function init( partType:String ):void
		{
			switch ( partType )
			{
				case CSnake.PART_TYPE_FRONT:
					this._part = new SnakeFront();
				break;
				
				case CSnake.PART_TYPE_BODY:
					this._part = new SnakeFront();
				break;
				
				case CSnake.PART_TYPE_BACK:
					this._part = new SnakeFront();
				break;
			}
			
			this.addChild( this._part );
		}
		
	}

}