package hu.vizoli.examples.robotlegs2.snake.config 
{
	import flash.events.KeyboardEvent;
	import hu.vizoli.examples.robotlegs2.snake.controller.commands.CheckEnvironmentAfterSnakeArrivedCommand;
	import hu.vizoli.examples.robotlegs2.snake.controller.commands.InitGameCommand;
	import hu.vizoli.examples.robotlegs2.snake.controller.commands.KeyDownCommand;
	import hu.vizoli.examples.robotlegs2.snake.controller.commands.SnakeMovementFinishedCommand;
	import hu.vizoli.examples.robotlegs2.snake.controller.events.GameEvent;
	import hu.vizoli.examples.robotlegs2.snake.controller.events.SnakeEvent;
	import hu.vizoli.examples.robotlegs2.snake.model.events.SnakeModelEvent;
	import robotlegs.bender.extensions.eventCommandMap.api.IEventCommandMap;
	import robotlegs.bender.framework.api.IConfig;
	
	/**
	 * CommandConfig
	 * 
	 * @author vizoli
	 */
	public class CommandConfig implements IConfig 
	{
		[Inject]
		public var commandMap:IEventCommandMap;
		
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
			this.commandMap.map( GameEvent.INIT, GameEvent ).toCommand( InitGameCommand );
			this.commandMap.map( SnakeEvent.MOVEMENT_FINISHED, SnakeEvent ).toCommand( SnakeMovementFinishedCommand );
			this.commandMap.map( SnakeModelEvent.UPDATED_CURRENT_POSITION, SnakeModelEvent ).toCommand( CheckEnvironmentAfterSnakeArrivedCommand );
			
			this.commandMap.map( KeyboardEvent.KEY_DOWN, KeyboardEvent ).toCommand( KeyDownCommand );
		}
		
	}

}