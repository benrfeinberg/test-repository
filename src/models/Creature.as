package models
{
	import utils.MathUtils;

	public class Creature
	{
		private var _name:String;
		private var _maxHp:int;
		private var _hp:int;
		private var _strength:int;
		private var _defence:int;
		private var _magic:int;
		private var _speed:int;
		private var _moveList:Vector.<Move>;
		private var _movePriorityModifiers:Vector.<MovePriorityModifier>;
		
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