package hu.vizoli.examples.robotlegs2.snake.view 
{
	import hu.vizoli.examples.robotlegs2.snake.base.BaseView;
	
	/**
	 * FoodView
	 * 
	 * @author vizoli
	 */
	public class FoodView extends BaseView
	{
		private var _food:Food;
		
		//--------------------------------------------------------------------------
		//
		//  Constructor
		//
		//--------------------------------------------------------------------------
		
		/**
		 * FoodView
		 */
		public function FoodView() 
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
			
			this._food = new Food();
			this.addChild( this._food );
		}
	}

}