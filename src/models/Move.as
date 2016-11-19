package models
{
	public class Move
	{
		private var _id:int;
		private var _level:int;
		
		protected var _time:int;
		protected var _type:String;
		protected var _targetAll:Boolean;
		
		public function Move(id:int, level:int, time:int)
		{
			_id = id;
			_level = level;
			_time = time;
		}
		
		public function get id():int { return _id; }
		public function get level():int { return _level; }
		public function get time():int { return _time; }
		public function get type():String { return _type; }
		public function get targetAll():Boolean { return _targetAll; }
	}
}