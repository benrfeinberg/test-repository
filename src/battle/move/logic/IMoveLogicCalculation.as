package battle.move.logic
{
	import models.Creature;
	import models.Move;
	import models.MoveAction;

	public interface IMoveLogicCalculation
	{
		function pickMove(executor:Creature, allies:Vector.<Creature>, enemies:Vector.<Creature>, moveList:Vector.<Move>):MoveAction;
	}
}