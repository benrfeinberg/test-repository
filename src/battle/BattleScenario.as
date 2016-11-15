package battle
{
	import models.Enemy;
	import models.Hero;

	public class BattleScenario
	{
		private var _currentGroup:int;
		private var _heroes:Vector.<Hero>;
		private var _enemies:Vector.<Vector.<Enemy>>;
		
		public function BattleScenario(heroes:Vector.<Hero>, enemies:Vector.<Vector.<Enemy>>)
		{
			_heroes = heroes;
			_enemies = enemies;
			
			resetEnemyGroup();
		}
		
		public function resetEnemyGroup():void {
			_currentGroup = 0;
		}
		
		public function getHeroes():Vector.<Hero> {
			return _heroes;
		}
		
		public function getEnemyGroup():Vector.<Enemy> {
			return _enemies[_currentGroup];
		}
		
		public function advanceGroup():void {
			if (!isLastGroup)
				_currentGroup++;
		}
		
		public function get currentGroup():int {
			return _currentGroup;
		}
		
		public function get groups():int {
			return _enemies.length;
		}
		
		public function isLastGroup():Boolean {
			return _currentGroup == groups - 1;
		}
	}
}