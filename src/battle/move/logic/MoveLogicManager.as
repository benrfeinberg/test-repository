package battle.move.logic
{
	import models.Creature;
	import models.Move;
	
	import utils.StatUtils;

	public class MoveLogicManager
	{
		private var _self:Creature;
		private var _enemies:Vector.<Creature>;
		private var _allies:Vector.<Creature>;
		private var _pendingMove:Move;
		
		private var _wait:Number;
		private var _waitStep:Number;
		
		public function MoveLogicManager(self:Creature)
		{
			_self = self;
			
			_wait = 0;
			_waitStep = StatUtils.calculateSpeedStep(self.speed);
		}
		
		public function determineNextMove():void {
			
		}
		
		public function doesNextMoveTrigger():void {
			
		}
		
		public function set enemies(enemies:Vector.<Creature>):void {
			_enemies = enemies;
		}
		
		public function set allies(allies:Vector.<Creature>):void {
			_allies = allies;
		}
		
		private function _setNextAction():void {
			
		}
	}
}