package battle
{
	import flash.display.Sprite;
	import flash.events.Event;
	
	import models.Enemy;
	import models.Hero;
	import models.Supporter;
	
	import supportRPG.assets.battle.Battle_mc;

	[SWF(frameRate='31',width='800',height='480',backgroundColor='0xffffff')]
	public class BattleScene extends Sprite
	{
		private var _assets:Battle_mc = new Battle_mc();
		
		private var _supporterUI:SkillBar;
		private var _heroUIs:Vector.<HeroUI>;
		private var _enemyUIs:Vector.<EnemyUI>;
		
		private var _supporterModel:Supporter;
		private var _heroModels:Vector.<Hero>;
		private var _enemyModels:Vector.<Enemy>;
		
		public function BattleScene()
		{
			addEventListener(Event.ADDED_TO_STAGE, _resize, false, 0, true);
			addEventListener(Event.ENTER_FRAME, _updateScene, false, 0, true);
			addChild(_assets);
			
			_supporterModel = new Supporter(25);
			_heroModels = Vector.<Hero>([
				new Hero("Red", 10),
				new Hero("Blue", 14),
				new Hero("Green", 7)
			]);
			_enemyModels = Vector.<Enemy>([
				new Enemy("Sea Monster", 50)
			]);
			
			_supporterUI = new SkillBar(_assets.skillBar, _supporterModel);
			_heroUIs = Vector.<HeroUI>([
				new HeroUI(_assets.heroUI1, _assets.char1, _heroModels[0]),
				new HeroUI(_assets.heroUI2, _assets.char2, _heroModels[1]),
				new HeroUI(_assets.heroUI3, _assets.char3, _heroModels[2])
			]);
			_enemyUIs = Vector.<EnemyUI>([
				new EnemyUI(_assets.monster, _enemyModels[0])
			]);
		}
		
		private function _updateScene(event:Event):void
		{
			
		}
		
		private function _resize(event:Event = null):void {
			_assets.width = stage.stageWidth;
			_assets.scaleY = _assets.scaleX;
		}
	}
}