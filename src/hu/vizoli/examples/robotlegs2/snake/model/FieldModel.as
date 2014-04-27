package hu.vizoli.examples.robotlegs2.snake.model 
{
	import hu.vizoli.examples.robotlegs2.snake.base.BaseActor;
	import hu.vizoli.examples.robotlegs2.snake.model.vo.FieldVO;
	
	/**
	 * FieldModel
	 * 
	 * @author vizoli
	 */
	public class FieldModel extends BaseActor 
	{
		private var _fieldVO:FieldVO;
		
		//--------------------------------------------------------------------------
		//
		//  Constructor
		//
		//--------------------------------------------------------------------------
		
		/**
		 * Constructor
		 */
		public function FieldModel():void
		{
			this._fieldVO 				= new FieldVO();
			this._fieldVO.squareSize 	= 20;
			this._fieldVO.rowCount 		= 30;
			this._fieldVO.coloumnCount 	= 40;
		}
		
		//--------------------------------------------------------------------------
		//
		//  Getters / Setters
		//
		//--------------------------------------------------------------------------
		
		public function get field():FieldVO { return this._fieldVO; }
		
		public function get squareSize():uint { return this._fieldVO.squareSize; }
		
		public function get rowCount():uint { return this._fieldVO.rowCount; }
		
		public function get coloumnCount():uint { return this._fieldVO.coloumnCount; }
		
	}

}