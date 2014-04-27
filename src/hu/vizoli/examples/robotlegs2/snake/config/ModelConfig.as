package hu.vizoli.examples.robotlegs2.snake.config 
{
	import hu.vizoli.examples.robotlegs2.snake.model.FieldModel;
	import hu.vizoli.examples.robotlegs2.snake.model.FoodModel;
	import hu.vizoli.examples.robotlegs2.snake.model.GameModel;
	import hu.vizoli.examples.robotlegs2.snake.model.LevelModel;
	import hu.vizoli.examples.robotlegs2.snake.model.SnakeModel;
	import robotlegs.bender.framework.api.IConfig;
	import robotlegs.bender.framework.api.IInjector;
	
	/**
	 * Models config
	 * 
	 * @author vizoli
	 */
	public class ModelConfig implements IConfig
	{
		[Inject]
		public var injector:IInjector;
		
		/**
		 * configure
		 */
		public function configure():void
		{
			this.injector.map( LevelModel ).asSingleton();
			this.injector.map( FieldModel ).asSingleton();
			this.injector.map( SnakeModel ).asSingleton();
			this.injector.map( GameModel ).asSingleton();
			this.injector.map( FoodModel ).asSingleton();
		}
		
	}

}