package hu.vizoli.examples.robotlegs2.snake.view 
{
	import robotlegs.bender.bundles.mvcs.Mediator;
	
	/**
	 * Square mediator
	 * 
	 * @author vizoli
	 */
	public class SquareMediator extends Mediator 
	{
		[Inject]
		public var view:SquareView;
		
		/**
		 *  initialize
		 */
		override public function initialize():void
		{
			
		}
		
	}

}