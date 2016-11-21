package models
{
	import battle.move.logic.IMoveLogicCalculation;
	import battle.move.logic.MoveLogicManager;
	
	import utils.MathUtils;
	import utils.StatUtils;

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
		private var _moveLogicCalculation:IMoveLogicCalculation;
		
		private var _moveManager:MoveLogicManager;
		
		public function Creature(name:String, maxHp:int, speed:int, moveLogicCalculation:IMoveLogicCalculation)
		{
			_name = name;
			_maxHp = maxHp;
			_speed = speed;
			
			_moveLogicCalculation = moveLogicCalculation;
			_moveManager = new MoveLogicManager(this);
		}
		
		public function update():void {
			
		}
		
		public function get name():String { return _name; }
		public function get maxHp():int { return _maxHp; }
		public function get hp():int { return _hp; }
		public function get speed():int { return _speed; }
		public function get moveList():Vector.<Move> { return _moveList }
		public function get moveManager():MoveLogicManager { return _moveManager; }
		public function get moveLogicCalculation():IMoveLogicCalculation { return _moveLogicCalculation; }
		
		public function set hp(value:int):void {
			_hp = MathUtils.bound(value, 0, _maxHp);
		}
		
		public function hasFullHp():Boolean {
			return _hp === _maxHp;
		}
	}
}