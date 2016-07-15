package characters
{
	public class Hero
	{
		private var _name:String;
		private var _maxHp:int;
		private var _hp:int;
		private var _happiness:int;
		
		public function Hero(name:String, maxHp:int)
		{
			_name = name;
			_maxHp = maxHp;
		}
		
		public function get name():String { return _name; }
		public function get maxHp():int { return _maxHp; }
		public function get hp():int { return _hp; }
		public function get happiness():int { return _happiness; }
		
		public function set hp(value:int):void {
			_hp = value;
		}
	}
}