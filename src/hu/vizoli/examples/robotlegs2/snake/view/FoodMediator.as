package hu.vizoli.examples.robotlegs2.snake.view 
{
	import hu.vizoli.examples.robotlegs2.snake.controller.events.FoodEvent;
	import hu.vizoli.examples.robotlegs2.snake.model.FieldModel;
	import hu.vizoli.examples.robotlegs2.snake.model.FoodModel;
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