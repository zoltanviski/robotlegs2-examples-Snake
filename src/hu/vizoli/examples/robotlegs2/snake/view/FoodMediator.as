package hu.vizoli.examples.robotlegs2.snake.view 
{
	import robotlegs.bender.bundles.mvcs.Mediator;
	
	/**
	 * FoodMediator
	 * 
	 * @author vizoli
	 */
	public class FoodMediator extends Mediator 
	{
		[Inject]
		public var view:FoodView;
		
		//--------------------------------------------------------------------------
		//
		//  Overriden methods
		//
		//--------------------------------------------------------------------------
		
		/**
		 * Initialize the mediator
		 */
		override public function initialize():void
		{
		
		}
		
	}

}