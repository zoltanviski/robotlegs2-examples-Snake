package 
{
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	import hu.vizoli.examples.robotlegs2.snake.config.CommandConfig;
	import hu.vizoli.examples.robotlegs2.snake.config.MediatorConfig;
	import hu.vizoli.examples.robotlegs2.snake.config.ModelConfig;
	import hu.vizoli.examples.robotlegs2.snake.view.GameLayoutView;
	import robotlegs.bender.bundles.mvcs.MVCSBundle;
	import robotlegs.bender.extensions.contextView.ContextView;
	import robotlegs.bender.framework.api.IContext;
	import robotlegs.bender.framework.impl.Context;
	
	/**
	 * Robotlegs2 Example - Snake game prototype
	 * 
	 * @author vizoli
	 */
	[ SWF( width='820', height='620', backgroundColor='0xffffff', framerate='30' ) ]
	public class Main extends Sprite 
	{
		private var _context:IContext;
		private var _gameLayoutView:GameLayoutView;
		
		//--------------------------------------------------------------------------
		//
		//  Constructor
		//
		//--------------------------------------------------------------------------
	
		/**
		 * Main
		 */
		public function Main():void 
		{
			this._context = new Context()
				.install( MVCSBundle )
				.configure( ModelConfig, MediatorConfig, CommandConfig, new ContextView( this ) );

			if ( this.stage ) this.init();
			else this.addEventListener( Event.ADDED_TO_STAGE, this.init );
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
			this._gameLayoutView 	= new GameLayoutView();
			this._gameLayoutView.x 	= 10;
			this._gameLayoutView.y 	= 10;
			this.addChild( this._gameLayoutView );
		}
		
		//--------------------------------------------------------------------------
		//
		//  Private methods
		//
		//--------------------------------------------------------------------------
	
		/**
		 * Init
		 * 
		 * @param	e
		 */
		private function init( e:Event = null ):void 
		{
			this.removeEventListener( Event.ADDED_TO_STAGE, this.init );
			
			this.stage.scaleMode 	= StageScaleMode.NO_SCALE;
			this.stage.align 		= StageAlign.TOP_LEFT;
		}
	
	}
	
}