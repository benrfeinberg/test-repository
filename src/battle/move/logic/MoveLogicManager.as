package battle.move.logic
{
	import models.Creature;

	public class MoveLogicManager
	{
		private var _targets:Vector.<Creature>;
		private var _allies:Vector.<Creature>;
		private var _pendingMove;
		
		public function MoveLogicManager()
		{
		}
		
		public function determineNextMove():void {
			
		}
		
		public function set targets(targets:Vector.<Creature>):void {
			_targets = targets;
		}
		
		public function set allies(allies:Vector.<Creature>):void {
			_allies = allies;
		}
	}
}