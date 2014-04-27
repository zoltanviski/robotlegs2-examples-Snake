package hu.vizoli.examples.robotlegs2.snake.config 
{
	import hu.vizoli.examples.robotlegs2.snake.view.FieldMediator;
	import hu.vizoli.examples.robotlegs2.snake.view.FieldView;
	import hu.vizoli.examples.robotlegs2.snake.view.FoodMediator;
	import hu.vizoli.examples.robotlegs2.snake.view.FoodView;
	import hu.vizoli.examples.robotlegs2.snake.view.MainMediator;
	import hu.vizoli.examples.robotlegs2.snake.model.FieldModel;
	import hu.vizoli.examples.robotlegs2.snake.model.LevelModel;
	import hu.vizoli.examples.robotlegs2.snake.view.GameLayoutMediator;
	import hu.vizoli.examples.robotlegs2.snake.view.GameLayoutView;
	import hu.vizoli.examples.robotlegs2.snake.view.SnakeMediator;
	import hu.vizoli.examples.robotlegs2.snake.view.SnakeView;
	import robotlegs.bender.extensions.mediatorMap.api.IMediatorMap;
	import robotlegs.bender.framework.api.IConfig;
	import robotlegs.bender.framework.api.IInjector;
	
	/**
	 * Mediators config
	 * 
	 * @author vizoli
	 */
	public class MediatorConfig implements IConfig
	{
		[Inject]
		public var mediatorMap:IMediatorMap;
		
		//--------------------------------------------------------------------------
		//
		//  Public methods
		//
		//--------------------------------------------------------------------------
		
		/**
		 * Configure
		 */
		public function configure():void
		{
			this.mediatorMap.map( GameLayoutView ).toMediator( GameLayoutMediator );
			this.mediatorMap.map( FieldView ).toMediator( FieldMediator );
			this.mediatorMap.map( SnakeView ).toMediator( SnakeMediator );
			this.mediatorMap.map( FoodView ).toMediator( FoodMediator );
			this.mediatorMap.map( Main ).toMediator( MainMediator );
		}
		
	}

}