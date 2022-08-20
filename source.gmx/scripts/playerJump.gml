if (!global.vkid) 
{
    if (!place_free(x, y + global.grav) || onPlatform || place_meeting(x,y+global.grav,oWater) || place_meeting(x, y, oPlatform)) 
    {
        vspeed = -jump;
        djump = numJumps-1;
    
        audio_play_sound(sndJump,0,0);
        global.frameaction_jump = true;
    }
    else if (djump > 0 || place_meeting(x,y+global.grav,oWater2) || place_meeting(x,y+global.grav,oWater3) || global.infinitejump) 
    {
        vspeed = -jump2;
        playerSprite(sPlayerJump);
        
        audio_play_sound(sndDJump,0,0);
        global.frameaction_djump = true;
        
        if (!place_meeting(x,y+global.grav,oWater3))
        {
            if (djump > 0)
                djump -= 1;
        }
        else
            djump = numJumps-1;
    }
} 
else 
{
    if (!global.lunarkid) 
    {
        if (!place_free(x, y + global.grav) || onPlatform)
        {
            if (global.vkid = 1) { flipGravity(); }
            /*else if (global.VKid = 2)
            {
                scrFlipXGrav();
                if (!global.Xgrav) 
                {
                    if (global.grav == 1)
                        scrFlipGrav();
                    else if (global.grav == -1)
                        scrFlipGrav();
                }
            }*/
            
            vspeed = jump;

            if (sign(global.grav) == -1) 
                audio_play_sound(sndVFlip1, 0, false); 
            else
                audio_play_sound(sndVFlip2, 0, false);
        }
    } 
    else 
    {
        if (global.vkid = 1) { gravity_direction += 180; }
        else if (global.vkid = 2) { gravity_direction += 90; }
    }
}
