package battle
{
	import flash.display.MovieClip;
	import models.Enemy;

	public class EnemyUI
	{
		private var _characterAssets:MovieClip;
		
		private var _model:Enemy;
		
		public function EnemyUI(characterAssets: MovieClip, enemy:Enemy)
		{
			_characterAssets = characterAssets;
			_model = enemy;
		}
	}
}