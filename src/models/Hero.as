package models
{
	import utils.MathUtils;

	public class Hero
	{
		private var _name:String;
		private var _maxHp:int;
		private var _hp:int;
		private var _maxHappiness:int;
		private var _happiness:int;
		private var _maxTime:int;
		private var _time:int;
		
		public function Hero(name:String, maxHp:int)
		{
			_name = name;
			_maxHp = maxHp;
			_maxHappiness = 100;
			_maxTime = 1000;
		}
		
		public function get name():String { return _name; }
		public function get maxHp():int { return _maxHp; }
		public function get hp():int { return _hp; }
		public function get maxHappiness():int { return _maxHappiness; }
		public function get happiness():int { return _happiness; }
		public function get maxTime():int { return _maxTime; }
		public function get time():int { return _time; }
		
		public function set hp(value:int):void {
			_hp = MathUtils.bound(value, 0, _maxHp);
		}
		public function set happiness(value:int):void {
			_happiness =  MathUtils.bound(value, 0, _maxHappiness);
		}
		public function set time(value:int):void {
			_time =  MathUtils.bound(value, 0, _maxTime);
		}
		
		public function hasFullHp():Boolean {
			return _hp === _maxHp;
		}
		public function hasFullHappiness():Boolean {
			return _happiness === _maxHappiness;
		}
		public function hasFullTime():Boolean {
			return _time === _maxTime;
		}
	}
}