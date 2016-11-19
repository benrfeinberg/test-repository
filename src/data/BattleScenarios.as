package data
{
	public class BattleScenarios
	{
		public static var LEVEL:Object = {
			1: {
				heroes: [
					{name:"Red", hp:10, speed:8},
					{name:"Blue", hp:14, speed:7},
					{name:"Green", hp:7, speed:10}
				],
				enemies: [
					[
						{name:"Sea Monster", maxHp:50, speed: 8, gold:1, fame:1, drops:null}
					]
				]
			}
		}
			
		public function BattleScenarios()
		{
			
		}
	}
}