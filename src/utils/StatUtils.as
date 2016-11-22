package utils
{
	import models.Creature;
	import models.Move;

	public class StatUtils
	{
		public static function calculateSpeedStep(speed:int):Number {
			return speed;
		}
		
		public static function calculateDamage(user:Creature, target:Creature, move:Move):int {
			return 1;
		}
	}
}