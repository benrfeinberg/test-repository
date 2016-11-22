package models
{
	public class MoveResult
	{	
		private var _type:String;
		private var _target:String;
		private var _amount:int;
		
		public function MoveResult(type:String, target:String, amount:int = 1)
		{
			_type = type;
			_target = target;
			_amount = amount;
		}
		
		public function get type():String { return _type; }
		public function get target():String { return _target; }
		public function get amount():int { return _amount; }
	}
}