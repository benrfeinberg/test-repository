package battle
{
	import flash.display.Sprite;
	import flash.events.Event;
	
	import models.Hero;
	import models.Supporter;
	
	import supportRPG.assets.battle.Battle_mc;

	[SWF(frameRate='31',width='800',height='480',backgroundColor='0xffffff')]
	public class BattleScene extends Sprite
	{
		private var _assets:Battle_mc = new Battle_mc();
		
		private var _supporterUI:SkillBar;
		private var _heroUIs:Vector.<HeroUI>;
		
		private var _supporterModel:Supporter;
		private var _heroModels:Vector.<Hero>;
		
		public function BattleScene()
		{
			addEventListener(Event.ADDED_TO_STAGE, _resize, false, 0, true);
			addChild(_assets);
			
			_supporterModel = new Supporter(25);
			_heroModels = Vector.<Hero>([
				new Hero("Red", 10),
				new Hero("Blue", 14),
				new Hero("Green", 7)
			]);
			
			_supporterUI = new SkillBar(_assets.skillBar, _supporterModel);
			_heroUIs = Vector.<HeroUI>([
				new HeroUI(_assets.heroUI1, _heroModels[0]),
				new HeroUI(_assets.heroUI2, _heroModels[1]),
				new HeroUI(_assets.heroUI3, _heroModels[2])
			]);
		}
		
		private function _resize(event:Event = null):void {
			_assets.width = stage.stageWidth;
			_assets.scaleY = _assets.scaleX;
		}
	}
}