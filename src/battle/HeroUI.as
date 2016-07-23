package battle
{
	import flash.display.MovieClip;
	
	import models.Hero;
	
	import supportRPG.assets.battle.heroUI_mc;

	public class HeroUI
	{
		private var _assets:heroUI_mc;
		private var _characterAssets:MovieClip;
		
		private var _hpBar:Bar;
		private var _timeBar:Bar;
		private var _happinessBar:Bar;
		
		private var _model:Hero;
		
		public function HeroUI(assets:heroUI_mc, characterAssets: MovieClip, hero:Hero)
		{
			_assets = assets;
			_characterAssets = characterAssets;
			_model = hero;
			_assets.name_txt.text = hero.name;
			_hpBar = new Bar(_assets.hp, hero.maxHp);
			_happinessBar = new Bar(_assets.happiness, hero.maxHappiness);
			_timeBar = new Bar(_assets.time, hero.maxTime);
			_timeBar.value = 0;
		}
	}
}