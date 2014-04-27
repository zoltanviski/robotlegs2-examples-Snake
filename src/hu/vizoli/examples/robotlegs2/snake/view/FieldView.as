package hu.vizoli.examples.robotlegs2.snake.view 
{
	import hu.vizoli.examples.robotlegs2.snake.base.BaseView;
	import hu.vizoli.examples.robotlegs2.snake.model.vo.FieldVO;
	import hu.vizoli.examples.robotlegs2.snake.model.vo.FoodVO;
	
	/**
	 * FieldView
	 * 
	 * @author vizoli
	 */
	public class FieldView extends BaseView
	{
		private var _foodView:FoodView;
		
		//--------------------------------------------------------------------------
		//
		//  Constructor
		//
		//--------------------------------------------------------------------------
		
		/**
		 * FieldView
		 */
		public function FieldView() 
		{
			this.createChildren();
		}
		
		//--------------------------------------------------------------------------
		//
		//  Overriden methods
		//
		//--------------------------------------------------------------------------
		
		/**
		 * @inheritDoc
		 */
		override public function createChildren():void
		{
			super.createChildren();
			
			this._foodView = new FoodView();
		}
		
		//--------------------------------------------------------------------------
		//
		//  Public methods
		//
		//--------------------------------------------------------------------------
		
		/**
		 * Init
		 * 
		 * @param	field
		 */
		public function init( field:FieldVO ):void
		{
			var fieldColoumnCount:uint 	= field.coloumnCount;
			var fieldRowCount:uint 		= field.rowCount;
			for ( var i:Number = 0; i < fieldRowCount; i++ ) 
			{
				for ( var j:Number = 0; j < fieldColoumnCount; j++ ) 
				{
					var actualSquare:SquareView = new SquareView();
					actualSquare.x 				= field.squareSize * j;
					actualSquare.y 				= field.squareSize * i;
					actualSquare.name 			= ( "square_" + i + "_" + j );
					this.addChild( actualSquare );
				}
			}
		}
		
		/**
		 * Create food
		 * 
		 * @param	food
		 * @param	field 
		 */
		public function createFood( food:FoodVO, field:FieldVO ):void
		{
			this._foodView.x = food.position.x * field.squareSize;
			this._foodView.y = food.position.y * field.squareSize;
			
			if ( !this.contains( this._foodView ) )
			{
				this.addChild( this._foodView );
			}
		}
	}

}