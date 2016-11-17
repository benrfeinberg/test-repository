package localization.languages
{
	public interface ILanguage
	{
		function getStringData():Object;
		function get id():String;
		function get untranslated():String;
	}
}