package battle.move.logic
{
	import models.Creature;
	import models.Move;
	import models.MoveAction;

	public class MoveLogicCalculationTopScore implements IMoveLogicCalculation
	{	
		public function MoveLogicCalculationTopScore()
		{
		}
		
		public function pickMove(allies:Vector.<Creature>, enemies:Vector.<Creature>, moveList:Vector.<Move>):MoveAction {
			var topTarget:Creature;
			var topTargetIsEnemy:Boolean;
			var topScore:int;
			
			return new MoveAction();
		}
	}
}