package
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	
	public class Player extends Entity
	{
		[Embed(source = 'player.png')] private const PLAYER:Class;
		
		public function Player()
		{
			setHitbox(256, 64);
			type = "player";
			graphic = new Image(PLAYER);
			y = 650;
			x = 100;
		}
		
		override public function update():void
		{
			if (Input.check(Key.LEFT) && x > 0)
			{
				x -= 8;
			}
			
			if (Input.check(Key.RIGHT) && x+192 < 1280)
			{
				x += 8;
			}
		}
	}
}