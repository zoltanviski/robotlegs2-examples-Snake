package hu.vizoli.examples.robotlegs2.snake.view 
{
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
		
		//--------------------------------------------------------------------------
		//
		//  Overriden methods
		//
		//--------------------------------------------------------------------------
		
		/**
		 * @inheritDoc
		 */
		override public function initialize():void
		{
			
		}
		
	}

}