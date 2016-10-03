package models
{
	import utils.MathUtils;

	public class Hero extends Creature
	{
		private var _maxHappiness:int;
		private var _happiness:int;
		private var _maxTime:int;
		private var _time:int;
		
		public function Hero(name:String, maxHp:int)
		{
			super(name, maxHp);
			_maxHappiness = 100;
			_maxTime = 1000;
		}
		
		public function get maxHappiness():int { return _maxHappiness; }
		public function get happiness():int { return _happiness; }
		public function get maxTime():int { return _maxTime; }
		public function get time():int { return _time; }
		
		public function set happiness(value:int):void {
			_happiness =  MathUtils.bound(value, 0, _maxHappiness);
		}
		public function set time(value:int):void {
			_time =  MathUtils.bound(value, 0, _maxTime);
		}
		
		public function hasFullHappiness():Boolean {
			return _happiness === _maxHappiness;
		}
		public function hasFullTime():Boolean {
			return _time === _maxTime;
		}
	}
}