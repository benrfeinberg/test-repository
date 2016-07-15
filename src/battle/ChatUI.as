package battle
{
	import supportRPG.assets.battle.chatUI_mc;

	public class ChatUI
	{
		private var _assets:chatUI_mc;
		
		public function ChatUI(assets:chatUI_mc)
		{
			_assets = assets;
		}
		
		public function set text(value:String):void {
			_assets.text_txt.text = value || "";
		}
	}
}