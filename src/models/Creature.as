package models
{
	import utils.MathUtils;

	public class Creature
	{
		private var _name:String;
		private var _maxHp:int;
		private var _hp:int;
		
		public function Creature(name:String, maxHp:int)
		{
			_name = name;
			_maxHp = maxHp;
		}
		
		public function get name():String { return _name; }
		public function get maxHp():int { return _maxHp; }
		public function get hp():int { return _hp; }
		
		public function set hp(value:int):void {
			_hp = MathUtils.bound(value, 0, _maxHp);
		}
		
		public function hasFullHp():Boolean {
			return _hp === _maxHp;
		}
	}
}