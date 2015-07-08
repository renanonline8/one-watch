package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxMath;
import flixel.util.FlxDestroyUtil;
using flixel.util.FlxSpriteUtil;

/**
 * A FlxState which can be used for the game's menu.
 */
class MenuState extends FlxState
{
	/**
	 * Function that is called up when to state is created to set it up. 
	 */
	
	private var _mainTitle:FlxText;
	private var _playButton:FlxButton; 
	
	override public function create():Void
	{
		//Main Title
		_mainTitle = new FlxText(0, 30, FlxG.width, "Project One Watch", 32);
		_mainTitle.alignment = "center";
		add(_mainTitle);
		
		//Play Button
		_playButton = new FlxButton(0, 0, "Play", clickPlay);
		_playButton.screenCenter();
		add(_playButton);
		
		super.create();
		
		
	}
	
	/**
	 * Function that is called when this state is destroyed - you might want to 
	 * consider setting all objects this state uses to null to help garbage collection.
	 */
	override public function destroy():Void
	{
		super.destroy();
		
		_mainTitle = FlxDestroyUtil.destroy(_mainTitle);
		_playButton = FlxDestroyUtil.destroy(_playButton);
	}

	/**
	 * Function that is called once every frame.
	 */
	override public function update():Void
	{
		super.update();
	}
	
	private function clickPlay():Void
	{
		FlxG.switchState(new PlayState());
	}
}