package
{
	import flash.display.Sprite;
	
	import battle.BattleManager;
	import models.BattleScenario;
	
	import models.Supporter;
	
	import view.IMainView;
	import view.VectorMainView;
	
	public class SupportRPG extends Sprite
	{
		private var _supporter:Supporter;
		private var _battleScenario:BattleScenario;
		private var _mainView:IMainView;
		private var _battleManager:BattleManager;
		
		public function SupportRPG()
		{
			_supporter = new Supporter();
			_battleScenario = new BattleScenario();
			_battleManager = new BattleManager();
			_mainView = new VectorMainView();
			addChild(_mainView);
		}
	}
}