package
{
	import net.flashpunk.World;
	public class MyWorld extends World
	{
		public function MyWorld()
		{
			add(new Player());
			add(new Ball());
			
			var x_Max:int = 10;
			var y_Max:int = 7;
			for (var i:int = 0; i < x_Max; i++)
			{
				for (var j:int = 0; j < y_Max; j++)
				{
					add(new Brick(i*128, j*32));
				}
			}
			
		}
	}
}