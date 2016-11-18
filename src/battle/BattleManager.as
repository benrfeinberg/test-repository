package battle
{
	import models.BattleScenario;
	import models.Supporter;
	
	import view.IBattleView;

	public class BattleManager
	{
		private var _supporter:Supporter;
		private var _battleScenario:BattleScenario;
		private var _battleView:IBattleView;
		
		public function BattleManager(supporter:Supporter, battleScenario:BattleScenario, battleView:IBattleView)
		{
			_supporter = supporter;
			_battleScenario = battleScenario;
			_battleView = battleView;
			
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