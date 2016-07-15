package battle
{
	import characters.Hero;
	
	import supportRPG.assets.battle.heroUI_mc;

	public class HeroUI
	{
		private var _assets:heroUI_mc;
		
		private var _hpBar:Bar;
		private var _timeBar:Bar;
		private var _happinessBar:Bar;
		
		private var _model:Hero;
		
		public function HeroUI(assets:heroUI_mc, hero:Hero)
		{
			_assets = assets;
			_assets.name_txt.text = hero.name;
			_hpBar = new Bar(_assets.hp);
			_timeBar = new Bar(_assets.time);
			_happinessBar = new Bar(_assets.happiness);
		}
	}
}