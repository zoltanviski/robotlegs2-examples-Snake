package hu.vizoli.examples.robotlegs2.snake.view 
{
	import hu.vizoli.examples.robotlegs2.snake.model.FieldModel;
	import robotlegs.bender.bundles.mvcs.Mediator;
	
	/**
	 * Game layout mediator
	 * 
	 * @author vizoli
	 */
	public class GameLayoutMediator extends Mediator 
	{
		[Inject]
		public var view:GameLayoutView;
		
		/**
		 *  initialize
		 */
		override public function initialize():void
		{
			
		}
		
	}

}