package models
{
	public class MoveAction
	{
		private var _move:Move;
		private var _targets:Vector.<Creature>;
		private var _pendingText:String;
		private var _executionText:String;
		
		public function MoveAction(move:Move, targets:Vector.<Creature>, pendingText:String, executionText:String)
		{
			_move = move;
			_targets = targets;
			_pendingText = pendingText;
			_executionText = executionText;
		}
		
		public function get move():Move { return _move; }
		public function get targets():Vector.<Creature> { return _targets; }
		public function get pendingText():String { return _pendingText; }
		public function get executionText():String { return _executionText; }
	}
}