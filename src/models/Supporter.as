package models
{
	import utils.MathUtils;

	public class Supporter
	{
		private var _maxMp:int;
		private var _mp:int;
		
		public function Supporter(maxMp:int)
		{
			_maxMp = maxMp;
		}
		
		public function get maxMp():int { return _maxMp; }
		public function get mp():int { return _mp; }
		
		public function set mp(value:int):void {
			_mp = MathUtils.bound(value, 0, _maxMp);
		}
		
		public function hasFullMp():Boolean {
			return _mp === _maxMp;
		}
	}
}