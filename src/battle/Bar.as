package battle
{
	import supportRPG.assets.battle.bar_mc;
	
	import utils.MathUtils;

	public class Bar
	{
		private var _assets:bar_mc;
		
		private var _max:int;
		private var _value:int;
		
		public function Bar(assets:bar_mc, max:int)
		{
			_assets = assets;
			_max = max;
			_value = max;
		}
		
		public function get value():int { return _value; }
		public function set value(val:int):void {
			_value = MathUtils.bound(val, 0, _max);
			_assets.bar.scaleX = _value / _max;
		}
	}
}