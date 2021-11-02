package 
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	import net.flashpunk.Sfx;
	
	public class Ball extends Entity
	{
		[Embed(source = 'ball.png')] private const BALL:Class;
		[Embed(source = 'bounce.mp3')] private const BOUNCE:Class;
		
		public var bounce:Sfx = new Sfx(BOUNCE);

		var yDir = 1;
		var xDir = 1;
		var ballSpeed = 8;
	
		public function Ball() 
		{
			setHitbox(64, 64);
			y = 576;
			graphic = new Image(BALL);
		}
		
				
		override public function update():void
		{
			var pCollision:Player = collide("player", x, y) as Player;
			
			if (pCollision)
			{
				yDir = -1;
				bounce.play();
			}
			
			var bCollision:Brick = collide("brick", x, y) as Brick;
			
			if (bCollision)
			{
				bCollision.destroy();
				yDir = 1;
				bounce.play();
			}
			
			if (x < 0)
			{
				xDir = 1;
				bounce.play();
			}
			else if (x > 1216)
			{
				xDir = -1;
				bounce.play();
			}
			
			y += yDir * ballSpeed;
			x += xDir * ballSpeed;
		}
		
		
	}

}