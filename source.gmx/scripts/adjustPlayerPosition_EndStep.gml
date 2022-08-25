///adjustPlayerPosition_EndStep([ obj ])

/* Shortcut keys to conveniently move the player.
   To be called by an object every End Step.

   Nudge 1px horizontally using A / D.
   Jump to mouse position using W.
   Save at current position using S.
*/

if (argument_count == 1)
    var obj = argument[0];
else
    var obj = object_index;

var kidGrav = global.grav;
var alignleft = scrButtonCheckPressed(KEY.ALIGN_LEFT);
var alignright = scrButtonCheckPressed(KEY.ALIGN_RIGHT);
var moveleft = keyboard_check(ord('U'));
var moveright = keyboard_check(ord('I'));
var nudgeleft = scrButtonCheckPressed(KEY.NUDGE_LEFT);
var nudgeright = scrButtonCheckPressed(KEY.NUDGE_RIGHT);

if (obj != oPlayer)
{
    kidGrav = grav;
    alignleft = FA;
    alignright = FD;
    nudgeleft = FN;
    nudgeright = FM;
}

with (obj) 
{
    var isOnBlock;
    
    if(global.checkNudgeEarly)
        isOnBlock = nudgeBlockCheck;
    else
        isOnBlock = place_meeting(x,y+kidGrav,oBlock);
    
    if (isOnBlock && !frozen) 
    {
        if ((alignleft || moveleft) && !place_meeting(x-1,y,oBlock)) 
            x -= 1;
        if ((alignright || moveright) && !place_meeting(x+1,y,oBlock)) 
            x += 1;    
        if (nudgeleft && !place_meeting(x-1,y,oBlock)) 
            x -= .5;
        if (nudgeright && !place_meeting(x+1,y,oBlock)) 
           x += .5;
    }
}

if (obj == oPlayer)
{
    if (scrButtonCheckPressed(KEY.MOVE_PLACE)
    && !global.paused && point_in_rectangle(mouse_x,mouse_y,0,0,800,608))
    {
        if (!instance_exists(obj)) { loadPlayer(); }
        with (obj) 
        {
            x = mouse_x;
            y = mouse_y;
            vspeed = 0;
            djump = true;
        }
    }
    
    if ((scrButtonCheckPressed(KEY.SAVE_PLACE)
    && !keyboard_check(vk_control)) && (instance_exists(obj)))
    {
        with (obj) 
        {
            if (!place_meeting(x,y,oSave)) 
            {
                if (global.airsaving || (!global.airsaving && place_meeting(x,y+global.grav,oBlock))) 
                {
                    savePlayer();
                    audio_play_sound(sndShoot,0,false);
                    
                    with (obj) 
                        instance_create(x-17,y-23,oKeySaveParticle);
                }
            }
        }
    }
    
    if (scrHotkeyLock(KEY.V_ALIGN) && instance_exists(obj))
    {
        var onblock;
        with (obj) 
            onblock = place_meeting(x,y+global.grav,oBlock);
        
        if (onblock) 
        {
            inputOverlay(input_textbox,inputCallback_VAlign,
                "Valign (was "+string(obj.y-floor(obj.y))+")");
            oInputOverlay.textbox_label = "0.";
        }
    }
    
    if (scrHotkeyLock(KEY.H_ALIGN) && instance_exists(obj)) 
    {
        var onblock;
        with (obj) 
            onblock = place_meeting(x,y+global.grav,oBlock);
            
        if (onblock) 
        {
            inputOverlay(input_textbox,inputCallback_HAlign,
                "Halign (was "+string(obj.x-floor(obj.x))+")");
            oInputOverlay.textbox_label = "0.";
        }
    }
    
    global.tasAD = false;
    global.adjustTAS = false;
}
