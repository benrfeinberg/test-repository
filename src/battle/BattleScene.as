package battle
{
	import flash.display.Sprite;
	import flash.events.Event;
	
	import supportRPG.assets.battle.Battle_mc;
	import characters.Hero;

	[SWF(frameRate='31',width='800',height='480',backgroundColor='0xffffff')]
	public class BattleScene extends Sprite
	{
		private var _assets:Battle_mc = new Battle_mc();
		
		private var _skillBar:SkillBar;
		private var _heroUIs:Vector.<HeroUI>;
		
		public function BattleScene()
		{
			addEventListener(Event.ADDED_TO_STAGE, _resize, false, 0, true);
			addChild(_assets);
			_skillBar = new SkillBar(_assets.skillBar);
			_heroUIs = Vector.<HeroUI>([
				new HeroUI(_assets.heroUI1, new Hero("Red", 10)),
				new HeroUI(_assets.heroUI2, new Hero("Blue", 14)),
				new HeroUI(_assets.heroUI3, new Hero("Green", 7))
			]);
		}
		
		private function _resize(event:Event = null):void {
			_assets.width = stage.stageWidth;
			_assets.scaleY = _assets.scaleX;
		}
	}
}