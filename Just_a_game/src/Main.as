package
{
	import org.flixel.*;
	
	[SWF(width = 640, height = 480, backgroundColor = "#000000", fullscreen = true)]
	
	public class Main extends FlxGame 
	{
		public function Main()
		{
			super(320, 240, PlayState,2,30,30);
		}
	}
	
}