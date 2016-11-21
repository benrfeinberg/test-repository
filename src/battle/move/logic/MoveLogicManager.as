package battle.move.logic
{
	import models.Creature;
	import models.Move;
	import models.MoveAction;
	
	import utils.StatUtils;

	public class MoveLogicManager
	{
		private var _creature:Creature;
		private var _enemies:Vector.<Creature>;
		private var _allies:Vector.<Creature>;
		private var _pendingMove:MoveAction;
		
		private var _wait:Number;
		private var _waitStep:Number;
		
		public function MoveLogicManager(creature:Creature)
		{
			_creature = creature;
			
			_wait = 0;
			_waitStep = StatUtils.calculateSpeedStep(creature.speed);
		}
		
		public function update():void {
			if(!_pendingMove) {
				_determineNextMoveAction();
			}
		}
		
		public function doesNextMoveTrigger():void {
			
		}
		
		public function set enemies(enemies:Vector.<Creature>):void {
			_enemies = enemies;
		}
		
		public function set allies(allies:Vector.<Creature>):void {
			_allies = allies;
		}
		
		private function _determineNextMoveAction():void {
			//_pendingMove
		}
	}
}