package models
{
	public class MoveAction
	{
		private var _executor:Creature;
		private var _move:Move;
		private var _targets:Vector.<Creature>;
		private var _pendingText:String;
		private var _executionText:String;
		private var _executionValue:int;
		
		public function MoveAction(executor:Creature, move:Move, targets:Vector.<Creature>, pendingText:String = null, executionText:String = null)
		{
			_executor = executor;
			_move = move;
			_targets = targets;
			_pendingText = pendingText;
			_executionText = executionText;
		}
		
		public function execute():void {
			_executor.moveManager.executeMove();
		}
		
		public function get executor():Creature { return _executor; }
		public function get move():Move { return _move; }
		public function get targets():Vector.<Creature> { return _targets; }
		public function get pendingText():String { return _pendingText; }
		public function get executionText():String { return _executionText; }
		public function get executionValue():int { return _executionValue; }
		
		public function set executionValue(value:int):void { _executionValue = value; }
	}
}