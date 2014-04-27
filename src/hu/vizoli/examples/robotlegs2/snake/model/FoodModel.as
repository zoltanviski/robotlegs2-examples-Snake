package hu.vizoli.examples.robotlegs2.snake.model 
{
	import flash.geom.Point;
	import hu.vizoli.examples.robotlegs2.snake.base.BaseActor;
	import hu.vizoli.examples.robotlegs2.snake.controller.events.FoodEvent;
	import hu.vizoli.examples.robotlegs2.snake.model.vo.FoodVO;
	
	/**
	 * FoodModel
	 * 
	 * @author vizoli
	 */
	public class FoodModel extends BaseActor 
	{
		[Inject]
    	public var fieldModel:FieldModel;
		
		private var _foodVO:FoodVO;
		
		//--------------------------------------------------------------------------
		//
		//  Constructor
		//
		//--------------------------------------------------------------------------
		
		/**
		 * FoodModel
		 */
		public function FoodModel() 
		{
			this._foodVO 			= new FoodVO();
			this._foodVO.position 	= new Point( 5, 6 );
		}
		
		//--------------------------------------------------------------------------
		//
		//  Public methods
		//
		//--------------------------------------------------------------------------
		
		/**
		 * Generate food
		 */
		public function generateFood():void
		{
			var foodX:uint 			= 0 + Math.round( Math.random() *( ( fieldModel.field.coloumnCount - 1 ) - 0 ) );
			var foodY:uint 			= 0 + Math.round( Math.random() * ( ( fieldModel.field.rowCount - 1 ) - 0 ) );
			
			this._foodVO.position 	= new Point( foodX, foodY );
			
			this.dispatch( new FoodEvent( FoodEvent.CREATE ) );
		}
		
		//--------------------------------------------------------------------------
		//
		//  Getters / Setters
		//
		//--------------------------------------------------------------------------
		
		/**
		 * Return the food
		 */
		public function get food():FoodVO { return _foodVO; }
		
	}

}