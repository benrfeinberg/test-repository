package data
{
	public class BattleScenarios
	{
		public static var LEVEL:Object = {
			1: {
				heroes: [
					{name:"Red", hp:10},
					{name:"Blue", hp:14},
					{name:"Green", hp:7}
				],
				enemies: [
					[
						{name:"Sea Monster", maxHp:50, gold:1, fame:1, drops:null}
					]
				]
			}
		}
			
		public function BattleScenarios()
		{
			
		}
	}
}