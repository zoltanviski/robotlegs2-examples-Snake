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
		 * FieldModel
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
		
		/**
		 * Return the field
		 */
		public function get field():FieldVO { return this._fieldVO; }
		
		/**
		 * Return the squareSize
		 */
		public function get squareSize():uint { return this._fieldVO.squareSize; }
		
		/**
		 * Return the rowCount
		 */
		public function get rowCount():uint { return this._fieldVO.rowCount; }
		
		/**
		 * Return the coloumnCount
		 */
		public function get coloumnCount():uint { return this._fieldVO.coloumnCount; }
		
	}

}