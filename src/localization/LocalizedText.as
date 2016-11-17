package localization
{
	import flash.events.Event;
	import flash.text.TextField;

	public class LocalizedText extends TextField
	{
		private var _key:String;
		
		public function LocalizedText(key:String)
		{
			_key = key;
			update();
			
			this.addEventListener(Event.ADDED_TO_STAGE, _handleAddedToStage);
		}
		
		public function update():void {
			this.text = Strings.GetInstance().getString(_key);
		}
		
		private function _handleLanguageChanged(event:Event):void {
			update();
		}
		
		private function _handleAddedToStage(event:Event):void {
			this.removeEventListener(Event.ADDED_TO_STAGE, _handleAddedToStage);
			this.addEventListener(Event.REMOVED_FROM_STAGE, _handleRemovedFromStage);
			
			Strings.GetInstance().addEventListener(Strings.LANGUAGE_CHANGED, _handleLanguageChanged);
		}
		
		private function _handleRemovedFromStage(event:Event):void {
			this.removeEventListener(Event.REMOVED_FROM_STAGE, _handleRemovedFromStage);
			this.addEventListener(Event.REMOVED_FROM_STAGE, _handleRemovedFromStage);
			
			Strings.GetInstance().removeEventListener(Strings.LANGUAGE_CHANGED, _handleLanguageChanged);
		}
	}
}