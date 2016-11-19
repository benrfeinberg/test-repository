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
		
		public function pickMove(allies:Vector.<Creature>, enemies:Vector.<Creature>, moveList:Vector.<Move>):MoveAction {
			var randomMove:Move = moveList[Math.floor(Math.random()*moveList.length)];
			var target:Creature;
			
			if(randomMove.type === MoveType.MOVE_TYPE_DAMAGE)
				target = enemies[Math.floor(Math.random()*enemies.length)];
			else
				target = allies[Math.floor(Math.random()*allies.length)];
				
			return null;
		}
	}
}