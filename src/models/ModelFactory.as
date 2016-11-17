package models
{
	public class ModelFactory
	{	
		import data.BattleScenarios;
		
		public static function generateBattleScenario(data:Object):BattleScenario {
			var heroes:Vector.<Hero> = new Vector.<Hero>();
			var enemies:Vector.<Vector.<Enemy>> = new Vector.<Vector.<Enemy>>();
			var errors:Vector.<String> = new Vector.<String>();
			
			var heroData:Array = data["heros"] as Array;
			if(!heroData || !heroData.length)
				// add Data error
			
			for(var hData:Object in heroData) {
				heroes.push(generateHero(hData));
			}
			
			var enemyData:Array = data["enemies"] as Array;
			if(!enemyData || !enemyData.length)
				// add Data error
				
			for(var i:int = 0, rounds:int = enemyData.length; i < rounds; i++) {
				var roundData:Array = enemyData[i];
				var enemyRound:Vector.<Enemy> = new Vector.<Enemy>();
				
				for(var eData:Object in roundData) {
					enemyRound.push(generateHero(hData));
				}
				enemies.push(enemyRound);
			}
			
			return new BattleScenario(heroes, enemies);
		}
		
		public static function generateBattleScenarioByLevel(level:int):BattleScenario {
			return generateBattleScenario(BattleScenarios.LEVEL[level]);
		}
		
		public static function generateEnemy(data:Object):Enemy {
			var gold:int = data['gold'] || 0;
			var fame:int = data['fame'] || 0;
			var drops:Vector.<IItem> = new Vector.<IItem>();
			
			return new Enemy(data['name'], data['maxHp'], gold, fame, drops);
		}
		
		public static function generateHero(data:Object):Hero {
			return new Hero(data['name'], data['maxHp']);
		}
	}
}