draw_set_valign(fa_top);
//draw_set_color(scrTernary(!global.gameStarted, c_black, c_white));
draw_set_font(fDefault24);

yStart = (room_height - numberOfKeys * yStep) / 2;

currentSlot = 0;
for(var i = 0; i < numberOfKeys; i++)
{
    var bindText = bindName[i];
    if (i == select && settingKey)
    {
        bindText = "Press the key to set";
    }
    else if (showResetPrompt && i == numberOfKeys - 1)
    {
        bindText = "Controls reset!";
    }
    //scrDrawOption(buttonName[i], bindText);
    
    draw_sprite(sprPlayerIdle, animationTime/5, xMargin - 16, yStart + (yStep * select) + 21);
}

//scrDrawButtonInfo(false);
