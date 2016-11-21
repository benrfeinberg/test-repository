package
{
	import flash.display.Sprite;
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	
	import battle.BattleManager;
	
	import models.BattleScenario;
	import models.ModelFactory;
	import models.Supporter;
	
	import view.IBattleView;
	import view.VectorBattleView;
	
	public class SupportRPG extends Sprite
	{
		private var _supporter:Supporter;
		private var _battleScenario:BattleScenario;
		private var _battleView:IBattleView;
		private var _battleManager:BattleManager;
		
		private var _timer:Timer;
		
		public function SupportRPG()
		{
			_supporter = ModelFactory.generateSupporter({mapMp:25});
			_battleScenario = ModelFactory.generateBattleScenarioByLevel(1);
			_battleView = new VectorBattleView();
			_battleManager = new BattleManager(_supporter, _battleScenario, _battleView);
			addChild(_battleView as Sprite);
			
			_timer = new Timer(1000/30);
			_timer.addEventListener(TimerEvent.TIMER, _handleTick);
		}
		
		private function _handleTick(event:TimerEvent):void {
			_battleManager.update();		
		}
	}
}