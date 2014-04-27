package hu.vizoli.examples.robotlegs2.snake.view 
{
	import caurina.transitions.Tweener;
	import com.utils.HitTest;
	import flash.events.Event;
	import flash.geom.Point;
	import hu.vizoli.examples.robotlegs2.snake.base.BaseView;
	import hu.vizoli.examples.robotlegs2.snake.controller.events.SnakeEvent;
	import hu.vizoli.examples.robotlegs2.snake.model.constant.CSnake;
	import hu.vizoli.examples.robotlegs2.snake.model.vo.FieldVO;
	import hu.vizoli.examples.robotlegs2.snake.model.vo.SnakeVO;
	
	/**
	 * SnakeView
	 * 
	 * @author vizoli
	 */
	public class SnakeView extends BaseView
	{
		private var _parts:Vector.<SnakePartView> = new Vector.<SnakePartView>( 200, true );
		private var _lastPartPosition:Point = new Point();
		
		//--------------------------------------------------------------------------
		//
		//  Constructor
		//
		//--------------------------------------------------------------------------
		
		/**
		 * SnakeView
		 */
		public function SnakeView() 
		{
			
		}
		
		//--------------------------------------------------------------------------
		//
		//  Overriden methods
		//
		//--------------------------------------------------------------------------
		
		/**
		 * @inheritDoc
		 */
		override public function createChildren():void
		{
			super.createChildren();
		}
		
		//--------------------------------------------------------------------------
		//
		//  Public methods
		//
		//--------------------------------------------------------------------------
		
		/**
		 * Init
		 * 
		 * @param	snake
		 * @param	field
		 */
		public function init( snake:SnakeVO, field:FieldVO ):void
		{
			this._parts = new Vector.<SnakePartView>();
			
			var part:SnakePartView 	= new SnakePartView();
			part.x 					= snake.currentPosition.x * field.squareSize;
			part.y 					= snake.currentPosition.y * field.squareSize;
			part.init( CSnake.PART_TYPE_FRONT );
			this.addChild( part );
			
			//this._lastPartPosition.x = SnakePartView( this._parts[ ( this._parts.length - 1 ) ] ).x;
			
			this._parts.push( part );
			
			var toPosition:Point = new Point();
			
			switch ( snake.direction )
			{
				case CSnake.DIRECTION_DOWN:
					toPosition.x = part.x;
					toPosition.y = part.y - field.squareSize;
				break;
				
				case CSnake.DIRECTION_UP:
					toPosition.x = part.x;
					toPosition.y = part.y + field.squareSize;
				break;
				
				case CSnake.DIRECTION_LEFT:
					toPosition.x = part.x + field.squareSize;
					toPosition.y = part.y;
				break;
				
				case CSnake.DIRECTION_RIGHT:
					toPosition.x = part.x - field.squareSize;
					toPosition.y = part.y;
				break;
			}
			
		}
		
		/**
		 * Move the snake
		 * 
		 * @param	snake
		 * @param	field
		 */
		public function move( snake:SnakeVO, field:FieldVO ):void
		{
			this._lastPartPosition.x = SnakePartView( this._parts[ ( this._parts.length - 1 ) ] ).x;
			this._lastPartPosition.y = SnakePartView( this._parts[ ( this._parts.length - 1 ) ] ).y;
			
			var partsLength:uint = this._parts.length;
			var toX:uint;
			var toY:uint;
			for ( var i:uint = 0; i < partsLength; i++ )
			{
				if ( i == 0)
				{
					var frontToPosition:Point 	= this.frontToPosition( new Point( SnakePartView( this._parts[ ( i ) ] ).x, SnakePartView( this._parts[ ( i ) ] ).y ), snake.direction, field.squareSize );
					toX 						= frontToPosition.x;
					toY 						= frontToPosition.y;
				}
				else
				{
					toX = SnakePartView( this._parts[ ( i - 1 ) ] ).x;
					toY = SnakePartView( this._parts[ ( i - 1 ) ] ).y;
				}
				
				Tweener.addTween( SnakePartView( this._parts[ i ] ), { 	x: toX,
																		y: toY,
																		time:0.1,
																		onComplete: ( i == 0 ) ? this.moveCompleteHandler : null,
																		transition: "linear" } );
			}
		}
		
		/**
		 * Growth snake, when reach a food
		 * 
		 * @param	direction
		 */
		public function growth( direction:String ):void
		{
			var part:SnakePartView 	= new SnakePartView();
			part.x 					= SnakePartView( this._parts[ ( this._parts.length - 1 ) ] ).x;
			part.y 					= SnakePartView( this._parts[ ( this._parts.length - 1 ) ] ).y;
			part.init( CSnake.PART_TYPE_BODY );
			this.addChild( part );
			
			if ( this._parts.length != 1 )
			{
				SnakePartView( this._parts[ ( this._parts.length - 1 ) ] ).x = this._lastPartPosition.x;
				SnakePartView( this._parts[ ( this._parts.length - 1 ) ] ).y = this._lastPartPosition.y;
			}
			
			this._parts.push( part );
			
			if ( !this.hasEventListener( Event.ENTER_FRAME ) )
			{
				this.addEventListener( Event.ENTER_FRAME, this.onEnterFrame );
			}
		}
		
		/**
		 * Kill the snake
		 */
		public function killSnake():void
		{
			var partsLength:uint = this._parts.length;
			for ( var i:uint = 0; i < partsLength; i++)
			{
				Tweener.addTween( SnakePartView( this._parts[ i ] ), { 	x: 0 + Math.round( Math.random() *( ( 800 - 1 ) - 0 ) ),
																		y: 0 + Math.round( Math.random() *( ( 600 - 1 ) - 0 ) ),
																		width: 0,
																		height: 0,
																		time:2,
																		transition: "easeIn" } );
			}
		}
		
		//--------------------------------------------------------------------------
		//
		//  Event handlers
		//
		//--------------------------------------------------------------------------
		
		/**
		 * EnterFrame handler
		 * 
		 * @param	e
		 */
		private function onEnterFrame( e:Event ):void
		{
			var partsLength:uint = this._parts.length;
			for ( var i:uint = 2; i < partsLength; i++)
			{
				if ( HitTest.complexHitTestObject( this._parts[ 0 ], this._parts[ i ] )  )
				{
					this.killSnake();
				}
			}
		}
		
		//--------------------------------------------------------------------------
		//
		//  Private methods
		//
		//--------------------------------------------------------------------------
		
		/**
		 * When the snake movement completed
		 */
		private function moveCompleteHandler():void
		{
			var event:SnakeEvent = new SnakeEvent( SnakeEvent.MOVEMENT_FINISHED );
			this.dispatchEvent( event );
		}
		
		/**
		 * Move the front of the snake
		 * 
		 * @param	actualPosition
		 * @param	direction
		 * @param	squareSize
		 */
		private function frontToPosition( actualPosition:Point, direction:String, squareSize:uint ):Point
		{
			var toPosition:Point = new Point();
			
			switch ( direction )
			{
				case CSnake.DIRECTION_DOWN:
					toPosition.x = actualPosition.x;
					toPosition.y = actualPosition.y + squareSize;
				break;
				
				case CSnake.DIRECTION_UP:
					toPosition.x = actualPosition.x;
					toPosition.y = actualPosition.y - squareSize;
				break;
				
				case CSnake.DIRECTION_LEFT:
					toPosition.x = actualPosition.x - squareSize;
					toPosition.y = actualPosition.y;
				break;
				
				case CSnake.DIRECTION_RIGHT:
					toPosition.x = actualPosition.x + squareSize;
					toPosition.y = actualPosition.y;
				break;
			}
			
			return toPosition;
		}
	}

}