package models
{
	public class Action
	{
		private var _type:String;
		private var _amount:int;
		private var _targets:Vector.<Creature>;
		private var _executionText:String;
		
		public function Action(type:String, amount:int, targets:Vector.<Creature>)
		{
			_type = type;
			_amount = amount;
			_targets = targets;
		}
		
		public function get type():String { return _type; }
		public function get amount():int { return _amount; }
		public function get targets():Vector.<Creature> { return _targets; }
	}
}