package utils
{
	public class MathUtils
	{
		public static function bound(value:Number, min:Number, max:Number):Number
		{
			return Math.max(Math.min(value, max), min);
		}
	}
}