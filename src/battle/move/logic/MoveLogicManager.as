package battle.move.logic
{
	import battle.move.MoveType;
	
	import models.Creature;
	import models.Move;
	import models.MoveAction;
	import models.MoveResult;
	import models.MoveResults;
	
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
		
		public function update():MoveAction {
			if(!_pendingMove) {
				_determineNextMoveAction();
				_wait = 0;
			} else {
				_wait += _waitStep;
				var moveWait:int = _pendingMove.move.time;
				if(_wait >= moveWait) {
					_pendingMove.executionValue = _wait - moveWait;
					return _pendingMove;
				}
			}
			return null;
		}
		
		public function executeMove():MoveResults {
			var moveResults:MoveResults = new MoveResults();
			var moveAction:MoveAction = _pendingMove;
			_pendingMove = null;
			
			for(var i:int = 0, len:int = moveAction.targets.length; i < len; i++) {
				var target:Creature = moveAction.targets[i];
				moveResults.addResults(_applyMoveEffects(target, moveAction.move));
			}
			
			return moveResults;
		}
		
		public function set enemies(enemies:Vector.<Creature>):void {
			_enemies = enemies;
		}
		
		public function set allies(allies:Vector.<Creature>):void {
			_allies = allies;
		}
		
		private function _determineNextMoveAction():void {
			_pendingMove = _creature.moveLogicCalculation.pickMove(_creature, _allies, _enemies, _creature.moveList);
		}
		
		private function _applyMoveEffects(target:Creature, move:Move):Vector.<MoveResult> {
			var moveResults:Vector.<MoveResult> = new Vector.<MoveResult>();
			
			switch(move.type) {
				case MoveType.MOVE_TYPE_DAMAGE:
					default:
					var damage:int = StatUtils.calculateDamage(_creature, target, move);
					target.hp -= damage;
					break;
			}
			
			return moveResults;
		}
	}
}