package models
{
	public class MoveResults
	{	
		private var _results:Vector.<MoveResult>;
		private var _resultMap:Object;
		
		public function MoveResults(results:Vector.<MoveResult> = null)
		{
			_results = new Vector.<MoveResult>();
			_resultMap = {};
			
			addResults(results);
		}
		
		public function addResults(results:Vector.<MoveResult> = null):void {
			if(results && results.length) {
				for(var i:int = 0, len:int = results.length; i < len; i++) {
					addResult(results[i]);
				}
			}
		}
		
		public function addResult(moveResult:MoveResult):void {
			_results.push(moveResult);
			
			if(!_resultMap[moveResult.type])
				_resultMap[moveResult.type] = {};
			
			if(!_resultMap[moveResult.type][moveResult.target])
				_resultMap[moveResult.target][moveResult.target] = new Vector.<MoveResult>();
			
			_resultMap[moveResult.target][moveResult.target].push(moveResult);
		}
		
		public function get results():Vector.<MoveResult> { return _results; }
	}
}