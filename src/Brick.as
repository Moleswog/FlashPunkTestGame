package 
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	
	public class Brick extends Entity
	{
		[Embed(source = 'brick1.png')] private const brick1:Class;
		[Embed(source = 'brick2.png')] private const brick2:Class;
		[Embed(source = 'brick3.png')] private const brick3:Class;
		[Embed(source = 'brick4.png')] private const brick4:Class;
		[Embed(source = 'brick5.png')] private const brick5:Class;
		[Embed(source = 'brick6.png')] private const brick6:Class;
		
		public function Brick(x_, y_) 
		{
			x = x_;
			y = y_;
			setHitbox(128, 32);
			type = "brick";
			
			switch (Math.floor(Math.random()*6))
			{
				case 0:
					graphic = new Image(brick1);
					break;
				case 1:
					graphic = new Image(brick2);
					break;
				case 2:
					graphic = new Image(brick3);
					break;
				case 3:
					graphic = new Image(brick4);
					break;
				case 4:
					graphic = new Image(brick5);
					break;
				
				default:
					graphic = new Image(brick6);
			}

		}
		
		public function destroy()
		{
			this.world.remove(this);
		}

		
	}

}