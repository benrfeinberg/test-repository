package battle
{
	import models.Supporter;
	import models.BattleScenario;

	public class BattleManager
	{
		private var _supporter:Supporter;
		private var _battleScenario:BattleScenario;
		
		public function BattleManager(supporter:Supporter, battleScenario:BattleScenario)
		{
			_supporter = supporter;
			_battleScenario = battleScenario;
			
			_init();
		}
		
		private function _init():void {
			_initializeSupporter();
			_initializeHeroes();
			_initializeMonsters();
		}
		
		private function _initializeSupporter():void {
			
		}
		
		private function _initializeHeroes():void {
			
		}
		
		private function _initializeMonsters():void {
			_battleScenario.resetEnemyGroup();
			_loadMonsterGroup();
		}
		
		private function _loadMonsterGroup():void {
			
		}
		
		private function _battleWon():void {
			
		}
		
		private function _battleLost():void {
			
		}
		
		private function _update():void {
			
		}
	}
}