package hu.vizoli.examples.robotlegs2.snake.base
{
	import flash.display.Sprite;
	import hu.vizoli.examples.robotlegs2.snake.base.interfaces.IBaseView;
	
	/**
	 * BaseView
	 * 
	 * @author vizoli
	 */
	public class BaseView extends Sprite implements IBaseView
	{
		//--------------------------------------------------------------------------
		//
		//  Constructor
		//
		//--------------------------------------------------------------------------
		
		/**
		 * BaseView
		 */
		public function BaseView() 
		{
			super();
		}
		
		//--------------------------------------------------------------------------
		//
		//  Public methods
		//
		//--------------------------------------------------------------------------
		
		/**
		 * Create children
		 */
		public function createChildren():void
		{
			
		}
		
	}

}