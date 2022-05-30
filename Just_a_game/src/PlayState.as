/* UPLOAD GAME ON NEWGROUNDS.COM !!! */
package 
{
	import org.flixel.*;
	
	public class PlayState extends FlxState 
	{
		/* loading images and music */
		[Embed(source = "data/Grid Builder.mp3")] protected var Sound:Class;
		[Embed(source = "data/human_idle.png")] protected var Player1:Class;
		[Embed(source = "data/human_blink.png")] protected var Player2:Class;
		
		public var player:FlxSprite;
		protected var text:FlxText;
		protected var link:FlxText;
		public var background:FlxSprite;
		protected var score:int = 0;
		/*
		public var pause = 0; tryed make pause :|
		*/
		
		override public function create():void
		{
			/* bg lol */
			background = new FlxSprite().makeGraphic(500, 500);
			add(background)
			
			/* making text */
			text = new FlxText(0, 0, 100);
			text.text = "Total blinks:0";
			text.color = 0xff000000
			text.size = 12;
			add(text);
			/* making text again with link */
			link = new FlxText(160, 0, 500);
			link.text = "music:Grid Builder - Alice Mako"
			link.color = 0xff000000
			add(link);
			/* making player */
			player = new FlxSprite();
			player.loadGraphic(Player1);
			add(player);
			
			/* muuuuusic */
			FlxG.playMusic(Sound);
		}
		
		override public function update():void
		{
			/* keyboard things */
			if (FlxG.keys.SPACE)
				player.loadGraphic(Player2);
			else
				player.loadGraphic(Player1);
				
			/* hahahah score things */
			if (FlxG.keys.justPressed("SPACE"))
				score++;
				text.text = 'Total blinks:' + score;
			super.update();
		}
	}
}