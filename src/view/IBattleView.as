package view
{
	import models.Enemy;
	import models.Hero;
	import models.Supporter;

	public interface IBattleView
	{
		function addEnemy(enemy:Enemy):void;
		function removeEnemy(enemy:Enemy):void;
		function addEnemies(enemies:Vector.<Enemy>):void;
		function removeEnemies(enemies:Vector.<Enemy>):void;
		function removeAllEnemies():void;
		
		function addHero(hero:Hero):void;
		function removeHero(hero:Hero):void;
		function addHeroes(heroes:Vector.<Hero>):void;
		function removeHeroes(heroes:Vector.<Hero>):void;
		function removeAllHeroes():void;
		
		function addSupporter(supporter:Supporter):void;
	}
}