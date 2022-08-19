animationTime++;             
                           
if (!settingKey)
{
    //Not currently rebinding a key, navigate options
    if (scrButtonCheckPressed(KEY.MENU_BACK))
    {
        //Save changes and go back
        saveConfig();
        instance_create(x, y, objOptionsMenu);
        instance_destroy();
    }
    
    if (scrButtonCheckPressed(KEY.MENU_OPTIONS))
    {
        //Save changes and go back
        saveConfig();
        global.menuSelectPrev[1] = 0;
        if (!global.gameStarted)
        {
            room_goto(rMenu);
        }
        else
        {
            instance_destroy();
        }
        exit;
    }
                                      
    var vInputPressed = scrButtonCheckPressed(KEY.MENU_DOWN) - scrButtonCheckPressed(KEY.MENU_UP);
    if (vInputPressed != 0)
    {
        //Move to next/previous option
        audio_play_sound(global.menuSound, 0, false);    
        select += vInputPressed;
        //select = scrWrapInRange(select, 0, numberOfKeys - 1)
    }
                               
    if (scrButtonCheckPressed(KEY.MENU_ACCEPT))
    {
        //Select current option  
        if (select != numberOfKeys - 1)
        {
            //Start rebinding
            settingKey = true;
        }
        else
        {
            //Reset controls
            scrControls("setKeyboardDefault");
            
            showResetPrompt = true;
            alarm[0] = 60;
        }
    }
}
else
{
    //Wait for new keybind
    if (keyboard_check_pressed(vk_anykey))
    {
        //Bind new key
        var newKey = keyboard_key;
        
        if (newKey == 160 || newKey == 161)
        {
            //If a shift key was pressed, make both shift keys work
            newKey = vk_shift;
        }
        
        global.controls[select, 0] = newKey;
        settingKey = false;
    }
    else if (scrAnyControllerButton() != -1)
    {
        settingKey = false;
    }
}

//Get current controls
event_user(0);
