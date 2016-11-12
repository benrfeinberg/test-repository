package models
{
	import utils.MathUtils;

	public class Supporter
	{
		private var _maxMp:int;
		private var _mp:int;
		private var _moveList:Vector.<Move>;
		
		public function Supporter(maxMp:int, moveList:Vector.<Move>)
		{
			_maxMp = maxMp;
			_moveList = moveList;
		}
		
		public function get maxMp():int { return _maxMp; }
		public function get mp():int { return _mp; }
		public function get moveList():Vector.<Move> { return _moveList; }
		
		public function set mp(value:int):void {
			_mp = MathUtils.bound(value, 0, _maxMp);
		}
		
		public function hasFullMp():Boolean {
			return _mp === _maxMp;
		}
	}
}