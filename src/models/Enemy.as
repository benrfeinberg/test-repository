package models
{
	import battle.move.logic.IMoveLogicCalculation;

	public class Enemy extends Creature
	{
		private var _gold:int;
		private var _fame:int;
		private var _drops:Vector.<IItem>;
		
		public function Enemy(name:String, maxHp:int, speed:int, moveLogicCalculation:IMoveLogicCalculation, gold:int, fame:int, drops:Vector.<IItem>)
		{
			super(name, maxHp, speed, moveLogicCalculation);
			_gold = gold;
			_fame = fame;
			_drops = drops;
		}
		
		public function get gold():int { return _gold; }
		public function get fame():int { return _fame; }
		public function get drops():Vector.<IItem> { return _drops; }
	}
}