package battle.move.logic
{
	import models.Move;

	public class MoveFactory
	{	
		public static function getMove(id:int, level:int):Move {
			switch(id) {
				default:
					return null;
			}
		}
	}
}