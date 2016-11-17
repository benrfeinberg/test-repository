package errors
{
	public class DataError extends Error
	{
		public function DataError(error:String)
		{
			message = error;
		}
	}
}