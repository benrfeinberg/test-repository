package view
{
	import flash.display.Sprite;
	import flash.events.Event;
	
	import battle.BattleScene;
	import battle.EnemyUI;
	import battle.HeroUI;
	
	import models.Enemy;
	import models.Hero;
	import models.Supporter;
	
	import supportRPG.assets.battle.Battle_mc;

	public class VectorMainView extends Sprite implements IMainView
	{
		private var _assets:Battle_mc;
		private var _heroes:Vector.<Sprite>;
		private var _enemies:Vector.<Sprite>;
		private var _supporter:Sprite;
		
		public function VectorMainView()
		{
			_assets = new Battle_mc();
			addChild(_assets);
			
			_heroes = new Vector.<Sprite>();
			_enemies = new Vector.<Sprite>();
			
			addEventListener(Event.ADDED_TO_STAGE, _resize, false, 0, true);
			addEventListener(Event.ENTER_FRAME, _updateScene, false, 0, true);
			addChild(_assets);
		}
		
		public function addEnemy(enemy:Enemy):void {
			var enemyUI:EnemyUI = new EnemyUI(_assets["monster"], enemy);
			_enemies.push(enemyUI)
		}
		
		public function removeEnemy(enemy:Enemy):void {
			
		}
		
		public function addEnemies(enemies:Vector.<Enemy>):void {
			
		}
		
		public function removeEnemies(enemies:Vector.<Enemy>):void {
			
		}
		
		public function removeAllEnemies():void {
			
		}
		
		public function addHero(hero:Hero):void {
			var nextHeroIndex:int = _heroes.length+1;
			var heroUI:HeroUI = new HeroUI(_assets["heroUI"+nextHeroIndex], _assets["char"+nextHeroIndex], hero);
			_heroes.push(heroUI);
		}
		
		public function removeHero(hero:Hero):void {
			
		}
		
		public function addHeroes(heroes:Vector.<Hero>):void {
			
		}
		
		public function removeHeroes(heroes:Vector.<Hero>):void {
			
		}
		
		public function removeAllHeroes():void {
			
		}
		
		public function addSupporter(supporter:Supporter):void {
			
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