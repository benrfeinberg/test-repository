package
{
	import flash.display.Sprite;
	
	import battle.BattleScene;
	
	public class SupportRPG extends Sprite
	{
		public function SupportRPG()
		{
			addChild(new BattleScene());
		}
	}
}