package hu.vizoli.examples.robotlegs2.snake.view 
{
	import flash.display.Sprite;
	import flash.geom.Point;
	import hu.vizoli.examples.robotlegs2.snake.base.BaseView;
	import hu.vizoli.examples.robotlegs2.snake.model.vo.FieldVO;
	import hu.vizoli.examples.robotlegs2.snake.model.vo.FoodVO;
	
	/**
	 * FoodView
	 * 
	 * @author vizoli
	 */
	public class FoodView extends BaseView
	{
		private var _food:Food;
		
		public function FoodView() 
		{
			this.createChildren();
		}
		
		/**
		 * createChildren
		 */
		override public function createChildren():void
		{
			super.createChildren();
			
			this._food = new Food();
			this.addChild( this._food );
		}
	}

}