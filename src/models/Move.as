package models
{
	public class Move
	{
		private var _id:int;
		private var _level:int;
		
		public function Move(id:int, level:int)
		{
			_id = id;
			_level = level;
		}
		
		public function get id():int { return _id; }
		public function get level():int { return _level; }
	}
}