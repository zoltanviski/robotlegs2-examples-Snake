package hu.vizoli.examples.robotlegs2.snake.view 
{
	import flash.events.Event;
	import hu.vizoli.examples.robotlegs2.snake.controller.events.FieldEvent;
	import hu.vizoli.examples.robotlegs2.snake.controller.events.FoodEvent;
	import hu.vizoli.examples.robotlegs2.snake.model.FieldModel;
	import hu.vizoli.examples.robotlegs2.snake.model.FoodModel;
	import robotlegs.bender.bundles.mvcs.Mediator;
	
	/**
	 * FieldMediator
	 * 
	 * @author vizoli
	 */
	public class FieldMediator extends Mediator 
	{
		[Inject]
		public var view:FieldView;
		
		[Inject]
		public var fieldModel:FieldModel;
		
		[Inject]
		public var foodModel:FoodModel;
		
		/**
		 *  initialize
		 */
		override public function initialize():void
		{
			this.addContextListener( FieldEvent.INIT, this.initField, FieldEvent );
			
			this.addContextListener( FoodEvent.CREATE, this.createFood, FoodEvent );
		}
		
		/**
		 * createFood
		 */
		private function createFood( e:FoodEvent ):void
		{
			this.view.createFood( this.foodModel.food, this.fieldModel.field );
		}
		
		/**
		 * initField
		 * 
		 * @param	e
		 */
		private function initField( e:FieldEvent ):void
		{
			this.view.init( this.fieldModel.field );
		}
		
	}

}