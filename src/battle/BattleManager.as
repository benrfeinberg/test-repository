package battle
{
	import models.BattleScenario;
	import models.Creature;
	import models.Enemy;
	import models.Hero;
	import models.MoveAction;
	import models.Supporter;
	
	import view.IBattleView;

	public class BattleManager
	{
		private var _supporter:Supporter;
		private var _heroes:Vector.<Hero>;
		private var _currentEnemyGroup:Vector.<Enemy>;
		
		private var _battleScenario:BattleScenario;
		private var _battleView:IBattleView;
		
		private var _actionsToExecute:Vector.<MoveAction>;
		private var _currentExecutingAction:MoveAction;
		private var _executingActions:Boolean;
		
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
			
			_actionsToExecute = new Vector.<MoveAction>();
			_executingActions = false;
		}
		
		public function update():void {
			if(_executingActions) {
				
			} else {
				var actionsToExecute:Vector.<MoveAction> = new Vector.<MoveAction>();
				var creatures:Vector.<Creature> = _getAllCreatures();
				_supporter.update();
				
				for(var creature:Creature in creatures) {
					var moveAction:MoveAction = creature.update();
					if(moveAction)
						actionsToExecute.push(moveAction);
				}
				
				if(actionsToExecute.length) {
					actionsToExecute.sort(_actionsToExecuteSort);
					_actionsToExecute = actionsToExecute;
					_startNextAction();
				}
			}
		}
		
		private function _startNextAction():void {
			if(_actionsToExecute.length) {
				_currentExecutingAction = _actionsToExecute.shift();
				_executingActions = true;
			} else {
				_executingActions = false;
			}
		}
		
		private function _executeCurrentAction():void {
			_currentExecutingAction.executor.moveManager.executeMove();
		}
		
		private function _finishCurrentAction():void {
			_currentExecutingAction.execute();
			_currentExecutingAction = null;
			
			if(!_checkBattleComplete())
				_startNextAction();
		}
		
		private function _checkBattleComplete():Boolean {
			return false;
		}
		
		private function _initializeSupporter():void {
			_battleView.addSupporter(_supporter);
		}
		
		private function _initializeHeroes():void {
			_heroes = _battleScenario.getHeroes();
			_setAllies(_heroes as Vector.<Creature>);
			
			_battleView.addHeroes(_heroes);
		}
		
		private function _initializeMonsters():void {
			_battleScenario.resetEnemyGroup();
			_loadMonsterGroup();
		}
		
		private function _loadMonsterGroup():void {
			_currentEnemyGroup = _battleScenario.getCurrentEnemyGroup();
			
			_setAllies(_currentEnemyGroup as Vector.<Creature>);
			_setEnemies(_heroes as Vector.<Creature>, _currentEnemyGroup as Vector.<Creature>);
			_setEnemies(_currentEnemyGroup as Vector.<Creature>, _heroes as Vector.<Creature>);
			
			_battleView.addEnemies(_currentEnemyGroup);
		}
		
		private function _roundWon():void {
			var battleWon:Boolean = _battleScenario.advanceGroup();
			if(battleWon)
				_battleWon();
			else
				_loadMonsterGroup();
		}
		
		private function _battleWon():void {
			
		}
		
		private function _battleLost():void {
			
		}
		
		private function _actionsToExecuteSort(a:MoveAction, b:MoveAction):int {
			return a.executionValue - b.executionValue;
		}
		
		private function _getAllCreatures():Vector.<Creature> {
			var creatures:Vector.<Creature>;
			creatures = creatures.concat(creatures, _heroes, _currentEnemyGroup);
			return creatures;
		}
		
		private function _setAllies(targetGroup:Vector.<Creature>):void {
			var groupCount:int = targetGroup.length;
			for(var i:int = 0; i < groupCount; i++) {
				var target1:Creature = targetGroup[i];
				var target1Allies:Vector.<Creature> = new Vector.<Creature>();
				
				for(var j:int = 0; i < groupCount; j++) {
					var target2:Creature = targetGroup[j];
					
					if(target1 !== target2)
						target1Allies.push(target2);
				}
				
				target1.moveManager.allies = target1Allies;
			}
		}
		
		private function _setEnemies(targetGroup:Vector.<Creature>, enemyGroup:Vector.<Creature>):void {
			for(var i:int = 0, len:int = targetGroup.length; i < len; i++) {
				var target:Creature = targetGroup[i];
				target.moveManager.enemies = enemyGroup; 
			}
		}
	}
}