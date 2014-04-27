package hu.vizoli.examples.robotlegs2.snake.view 
{
	import flash.display.Sprite;
	import hu.vizoli.examples.robotlegs2.snake.base.BaseView;
	
	/**
	 * Square
	 * 
	 * @author vizoli
	 */
	public class SquareView extends BaseView
	{
		private var _square:SquareBG;
		
		public function SquareView() 
		{
			this.createChildren();
		}
		
		/**
		 * createChildren
		 */
		override public function createChildren():void
		{
			super.createChildren();
			
			this._square = new SquareBG();
			this.addChild( this._square );
		}
		
	}

}