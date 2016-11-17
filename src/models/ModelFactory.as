package models
{
	public class ModelFactory
	{	
		import data.BattleScenarios;
		
		public static function generateBattleScenario(data:Object):BattleScenario {
			var heroes:Vector.<Hero> = new Vector.<Hero>();
			var enemies:Vector.<Enemy> = new Vector.<Enemy>();
			var errors:Vector.<String> = new Vector.<String>();
			
			var heroData:Array = data["heros"] as Array;
			if(!heroData || !heroData.length)
			
			for(var h:Object in data['heroes'] as Array) {
				
			}
			
			return new BattleScenario(heroes, enemies);
		}
		
		public static function generateBattleScenarioByLevel(level:int):BattleScenario {
			return generateBattleScenario(BattleScenarios.LEVEL[level]);
		}
		
		public static function generateEnemy(data:Object):Enemy {
			 
		}
		
		public static function generateHero(data:Object):Hero {
			
		}
	}
}