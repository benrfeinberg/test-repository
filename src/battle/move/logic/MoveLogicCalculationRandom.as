package battle.move.logic
{
	import battle.move.MoveType;
	
	import models.Creature;
	import models.Move;
	import models.MoveAction;

	public class MoveLogicCalculationRandom implements IMoveLogicCalculation
	{	
		public function MoveLogicCalculationRandom()
		{
		}
		
		public function pickMove(executor:Creature, allies:Vector.<Creature>, enemies:Vector.<Creature>, moveList:Vector.<Move>):MoveAction {
			var randomMove:Move = moveList[Math.floor(Math.random()*moveList.length)];
			var targets:Vector.<Creature>;
			
			if(randomMove.targetAll) {
				if(randomMove.type === MoveType.MOVE_TYPE_DAMAGE)
					targets = enemies;
				else
					targets = allies;
			} else {
				targets = new Vector.<Creature>();
				
				if(randomMove.type === MoveType.MOVE_TYPE_DAMAGE)
					targets.push(enemies[Math.floor(Math.random()*enemies.length)]);
				else
					targets.push(allies[Math.floor(Math.random()*allies.length)]);
			}
				
			return new MoveAction(executor, randomMove, targets);
		}
	}
}