package localization.languages
{
	public class HardCodedLanguage implements ILanguage
	{
		protected var _stringData:Object;
		protected var _untranslated:String;
		private var _id:String;
		
		public function HardCodedLanguage(id)
		{
			_id = id;
			_untranslated = _untranslated || "untranslated";
			_stringData = _stringData || {};
		}
		
		public function getStringData():Object {
			return _stringData;
		}
		
		public function get id():String {
			return _id;
		}
		
		public function get untranslated():String {
			return _untranslated;
		}
	}
}