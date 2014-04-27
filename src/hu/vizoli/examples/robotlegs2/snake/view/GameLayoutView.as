package hu.vizoli.examples.robotlegs2.snake.view 
{
	import flash.display.Sprite;
	import hu.vizoli.examples.robotlegs2.snake.base.BaseView;
	
	/**
	 * The game layout view
	 * 
	 * @author vizoli
	 */
	public class GameLayoutView extends BaseView 
	{
		private var _gameArea:Sprite;
		private var _fieldView:FieldView;
		private var _snakeView:SnakeView;
		
		//--------------------------------------------------------------------------
		//
		//  Constructor
		//
		//--------------------------------------------------------------------------
		
		/**
		 * GameLayoutView
		 */
		public function GameLayoutView() 
		{
			this.createChildren();
		}
		
		//--------------------------------------------------------------------------
		//
		//  Overriden methods
		//
		//--------------------------------------------------------------------------
		
		/**
		 * Create children
		 */
		override public function createChildren():void
		{
			super.createChildren();
			
			this._gameArea 		= new Sprite();
			this._gameArea.y 	= 0;
			this.addChild( this._gameArea );
			
			this._fieldView 	= new FieldView();
			this._gameArea.addChild( this._fieldView );
			
			this._snakeView 	= new SnakeView();
			this._gameArea.addChild( this._snakeView );
		}
		
	}

}