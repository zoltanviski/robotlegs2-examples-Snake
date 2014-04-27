package hu.vizoli.examples.robotlegs2.snake.view 
{
	import hu.vizoli.examples.robotlegs2.snake.base.BaseView;
	
	/**
	 * Square
	 * 
	 * @author vizoli
	 */
	public class SquareView extends BaseView
	{
		private var _square:SquareBG;
		
		//--------------------------------------------------------------------------
		//
		//  Constructor
		//
		//--------------------------------------------------------------------------
		
		/**
		 * SquareView
		 */
		public function SquareView() 
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
			
			this._square = new SquareBG();
			this.addChild( this._square );
		}
		
	}

}