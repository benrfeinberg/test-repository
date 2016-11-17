package localization
{
	import flash.events.EventDispatcher;
	
	import localization.languages.English;
	import localization.languages.ILanguage;
	import flash.events.Event;

	public class Strings extends EventDispatcher
	{
		public static const LANGUAGE_CHANGED:String = "LANGUAGE_CHANGED";
		private static const DEFAULT_LANGUAGE:String = "eng";
		
		private static var _instance:Strings;
		private static var _allowInstance:Boolean;
		
		private var _currentLanguageId:String;
		private var _currentLanguage:ILanguage;
		private var _stringData:Object;
		
		public static function GetInstance():Strings {
			if(!Strings._instance) {
				Strings._allowInstance = true;
				Strings._instance = new Strings();
				Strings._allowInstance = false;
			}
			return Strings._instance;
		}
		
		public function Strings()
		{
			if(!Strings._allowInstance) {
				throw new Error("Use get Instance");
			}
			
		}
		
		public function setLanguage(languageId:String):void {
			if(_currentLanguageId === languageId)
				return;
			
			var defaultLanguage:ILanguage = _getLanguage(DEFAULT_LANGUAGE);
			var newLanguage:ILanguage = _getLanguage(languageId);
			
			var defaultStrings:Object = defaultLanguage.getStringData();
			var key:String;
			
			_stringData = {};
			for(key in defaultStrings) {
				_stringData[key] = defaultStrings[key];
			}
			
			if(defaultLanguage.id !== newLanguage.id) {
				var newStrings:Object = newLanguage.getStringData();
				for(key in newStrings) {
					_stringData[key] = newStrings[key];
				}
			}
			
			var lastLanguageId:String = _currentLanguageId;
			
			_currentLanguage = newLanguage;
			_currentLanguageId = newLanguage.id;
			
			if(lastLanguageId !== _currentLanguageId)
				dispatchEvent(new Event(LANGUAGE_CHANGED));
		}
		
		public function getString(key:String):String {
			if(_stringData[key])
				return _stringData[key];
			else
				return _currentLanguage.untranslated;
		}
		
		private function _getLanguage(language:String):ILanguage {
			switch(language) {
				case "eng":
					return new English();
				default:
					return _getLanguage(DEFAULT_LANGUAGE);
			}
		}
	}
}